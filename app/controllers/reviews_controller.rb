class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destory]  

  def new
    @salon = Salon.find(params[:salon_id])
  end
  
  def create
    @review = Review.create(reviews_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to salon_url(@review.salon.id), notice: "投稿に成功しました！"
    else
      flash[:alert] = "入力項目に不備があります"
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:alert] = "口コミを削除しました！"
    redirect_to salon_url(@review.salon.id)
  end

  private

  def reviews_params
    params.permit(:salon_id, :comment, :review)
  end

end
