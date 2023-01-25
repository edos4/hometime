# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'has unique code' do
    reservation1 = create(:reservation, guest: create(:guest, email: 'qwe@g.co'))
    reservation2 = build(:reservation, guest: create(:guest, email: 'rty@g.co'))

    expect { reservation2.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'belongs to guest' do
    expect(Reservation.reflect_on_association(:guest).macro).to eq :belongs_to
  end
end
