class DogsController < ApplicationController
  def index
    if current_user
      dogs = Dog.all
      render json: dogs.as_json
    else
      render json: []
    end
  end

  def create
    if current_user
      dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
      )
      dog.save
      render json: dog.as_json
    else
      render json: []
    end
  end

  # def create
  #   dog = Dog.new(
  #     name: params[:name],
  #     age: params[:age],
  #     breed: params[:breed],
  #   )
  #   if current_user
  #     if dog.save
  #       render json: dog
  #     else
  #       render json: { errors: dog.errors.full_messages }
  #     end
  #   else
  #     render json: {}
  #   end
  # end
end
