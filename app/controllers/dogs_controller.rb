class DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:email],
      breed: params[:breed],
    )
    if current_user
      if dog.save
        render json: { message: "User created successfully" }, status: :created
      else
        render json: { errors: dog.errors.full_messages }, status: :bad_request
      end
    else
      render json: []
    end
  end
end
