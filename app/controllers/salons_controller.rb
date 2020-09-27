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

  end

  def create
    @salon = Salon.new(salons_params)
    
    # binding.pry
    
    if @salon.after_save
      redirect_to salon_url(@salon.id), notice: "投稿に成功しました！"
    else
      render new_salon_url, notice: "入力項目に不備があります"
    end
  end

  def destroy
    
  end
  


  private

  def salons_params
    params.permit(:name, :address, :access, :phone_number, :bussiness_hours, :fear, :treatment_areas, :url, :photo, :user_id)
  end

end
