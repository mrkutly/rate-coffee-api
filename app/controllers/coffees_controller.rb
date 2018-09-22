class CoffeesController < ApplicationController

  def index
    @coffees = Coffee.all
    render json: @coffees, status: 200
  end

  def show
    @coffee = Coffee.find(params[:id])

    if @coffee.valid?
      render json: @coffee, status: 200
    else
      render json: { error: "Not Found" }, status: 404
    end
  end

  def create
    @coffee = Coffee.new(coffee_params)

    if @coffee.save
      render json: @coffee, status: 201
    else
      render json: { errors: @coffee.errors.full_messages }, status: 400
    end
  end

  def update
    @coffee = Coffee.find(params[:id])

    if @coffee.update(coffee_params)
      render json: @coffee, status: 200
    else
      render json: { errors: @coffee.errors.full_messages }, status: 400
    end
  end   

  private

  def coffee_params
    params.require(:coffee).permit(:name, :roaster, :roast_date, :origin)
  end

end
