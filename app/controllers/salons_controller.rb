class SalonsController < ApplicationController
  def index
    @salons = Salon.ransack(params[:q])
    @salons_result = @salons.result(distinct: true).order(created_at: :desc)
  end

  def show
    @salon = Salon.find(params[:id])
    @reviews = @salon.reviews
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
      if @salon.save
        redirect_to user_url(current_user.id), notice: "投稿に成功しました！"
      else
        flash[:alert] = "入力項目に不備があります"
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
    params.permit(:name, :address, :access, :phone_number, :bussiness_hours, :fear, :treatment_areas, :url, :photo, :user_id)
  end

end
