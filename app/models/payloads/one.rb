# frozen_string_literal: true

module Payloads
  class One
    def self.keys
      %w[
        start_date end_date nights guests adults children infants
        status guest currency payout_price security_price total_price
        controller action reservation_code
      ]
    end

    def self.create_reservation(reservation_params)
      r = reservation_params
      guest = Guest.find_or_create_by(id: r[:guest][:id])
      guest.update(
        email: r[:guest][:email],
        first_name: r[:guest][:first_name],
        last_name: r[:guest][:last_name],
        phone_numbers: r[:guest][:phone]
      )
      Reservation.create!(
        code: r[:reservation_code],
        guest_id: guest.id,
        start_date: r[:start_date],
        end_date: r[:end_date],
        nights: r[:nights],
        number_of_adults: r[:adults],
        number_of_children: r[:children],
        number_of_infants: r[:infants],
        status: r[:status],
        currency: r[:currency],
        payout_price: r[:payout_price],
        security_price: r[:security_price],
        total_price: r[:total_price]
      )

      guest
    end
  end
end
