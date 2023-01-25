# frozen_string_literal: true

module Payloads
  class Two
    def self.keys
      %w[reservation controller action]
    end

    def self.create_reservation(reservation_params)
      r = reservation_params[:reservation]
      guest = Guest.find_or_create_by(id: r[:guest_id])
      guest.update(
        email: r[:guest_email],
        first_name: r[:guest_first_name],
        last_name: r[:guest_last_name],
        phone_numbers: r[:guest_phone_numbers]
      )
      Reservation.create!(
        code: r[:code],
        guest_id: guest.id,
        start_date: r[:start_date],
        end_date: r[:end_date],
        localized_description: r[:guest_details][:localized_description],
        nights: r[:nights],
        number_of_adults: r[:guest_details][:number_of_adults],
        number_of_children: r[:guest_details][:number_of_children],
        number_of_infants: r[:guest_details][:number_of_infants],
        number_of_guests: r[:number_of_guests],
        status: r[:status_type],
        currency: r[:host_currency],
        payout_price: r[:expected_payout_amount],
        security_price: r[:listing_security_price_accurate],
        total_price: r[:expected_payout_amount]
      )

      guest
    end
  end
end
