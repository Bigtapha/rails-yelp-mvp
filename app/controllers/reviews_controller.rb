class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  # GET /restaurants/:restaurant_id/reviews/new
  def new
    @review = Review.new
  end

  # POST /restaurants/:restaurant_id/reviews
  def create
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
