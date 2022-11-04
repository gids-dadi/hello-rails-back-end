class Api::V1::MessagesController < ApplicationController
  def index
    messages = Message.find_by(id: rand(1..5))
    if messages
      render json: messages
    else
      render json: messages.errors, status: :bad_request
    end
  end
end
