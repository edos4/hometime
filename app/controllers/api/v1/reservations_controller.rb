# frozen_string_literal: true

module Api
  module V1
    class ReservationsController < ApplicationController
      def create
        result = PayloadSegregator.call(params)
        render json: result
      end
    end
  end
end
