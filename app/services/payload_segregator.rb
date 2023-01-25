class PayloadSegregator< ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    case @params.keys.sort
    when Payloads::One.keys.sort
      guest_reservation = Payloads::One.create_reservation(@params)
    when Payloads::Two.keys.sort
      guest_reservation = Payloads::Two.create_reservation(@params)
    else
      raise "Invalid Payload"
    end
    guest_reservation.reservations.last
  end
end