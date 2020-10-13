class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destory]
  def index
  end

  def create
    @review = Review.new(reviews_params)
    # @review.user_id = current_user.id
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
    flash[:alert] = "削除しました！"
    redirect_to root_url
  end

  private

  def reviews_params
    params.permit(:user_id, :salon_id, :comment, :rate)
  end

end
