class SalonsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    
  end

  def show
    @salon = Salon.find(params[:id])
    @comments = @salon.reviews.order(created_at: :desc)
    @comment_count = @comments.select("id").count
    unless @comments.select("rate").blank?
      @ave = @comments.select("rate").average(:rate).round(half: :up)
    else
      @ave = 0
    end 
  end

  def edit
    @salon = Salon.find(params[:id])
  end

  def update
    @salon = Salon.find(params[:id])
      if @salon.update(salons_params)
        flash[:success] = "編集しました！"
        redirect_to "/salons/#{@salon.id}"
      else
        flash[:alert] = "編集内容に不備があります"
        render :edit
      end
  end
  
  def create
    @salon = Salon.new(salons_params)
    @salon.user_id = current_user.id
    if @salon.save
      redirect_to salon_url(@salon.id), notice: "投稿に成功しました！"
    else
      flash[:alert] = "入力項目に不備があるか、その店舗はすでに登録されています"
      render :new
    end
  end

  def destroy
    @salon = Salon.find(params[:id])
    @salon.destroy
    flash[:alert] = "削除しました！"
    redirect_to root_url 
  end
  
  private

  def salons_params
    params.permit(:name, :address, :access, :phone_number, :bussiness_hours, :fear, :treatment_areas, :url, :photo)
  end

end
