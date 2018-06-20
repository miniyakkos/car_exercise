class PeopleController < ApplicationController
  def index
    @people = Person.all
    render json: { people: @people }
  end

  def show
    @person = Person.includes(:ownerships).find(params[:id])
    render json: { person: @person, ownerships: @person.ownerships }
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      render json: { person: @person }
    else
      render json: { errors: @person.errors.full_messages }
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      render json: { person: @person }
    else
      render json: { errors: @person.errors.full_messages }
    end
  end

  def destroy
    @person = Person.find(params[:id]).destroy
    render json: { person: @person }
  end

  private

  def person_params
    params.require(:person).permit(
      :name,
      :email,
      :phone
    )
  end
end
