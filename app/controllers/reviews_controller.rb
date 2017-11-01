class ReviewsController < ApplicationController
    def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to review_path(review)
  end

  def edit
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path(review)
  end

  private
  def review_params
    params.require(:review).permit(:name, :address, :phone_number, :category)
  end
end
