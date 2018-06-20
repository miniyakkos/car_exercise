class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: { cars: @cars }
  end

  def show
    @car = Car.includes(:ownerships).find(params[:id])
    render json: { cars: @car, ownerships: @car.ownerships }
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { car: @car }
    else
      render json: { errors: @car.errors.full_messages }
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      render json: { car: @car }
    else
      render json: { errors: @car.errors.full_messages }
    end
  end

  def destroy
    @car = Car.find(params[:id]).destroy
    render json: { car: @car }
  end

  def for_sale
    @cars = Car.for_sale
    render json: { cars: @cars }
  end

  private

  def car_params
    params.require(:car).permit(
      :model,
      :make,
      :color,
      :mileage,
      :owner,
      :is_for_sale
    )
  end
end
