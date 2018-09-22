class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(coffee_id: params[:coffee_id])

    render json: @reviews, status: 200
  end

  def create
    @review = Review.new(review_params)
    @review.coffee_id = params[:coffee_id]

    if @review.save
      render json: @review, status: 201
    else
      render json: { errors: @review.errors.full_messages }, status: 400 
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
