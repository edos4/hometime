class Api::V1::ReservationsController < ApplicationController
  def create
		result = PayloadSegregator.call(params)
    render json: result
	end
end