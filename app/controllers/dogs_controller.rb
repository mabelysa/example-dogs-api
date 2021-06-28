class DogsController < ApplicationController
  def create
    dog = Dogs.new(
      name: params[:name],
      age: params[:email],
      breed: params[:breed],
      # password: params[:password],
      # password_confirmation: params[:password_confirmation],
    )
    if dog.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: dog.errors.full_messages }, status: :bad_request
    end
  end
end
