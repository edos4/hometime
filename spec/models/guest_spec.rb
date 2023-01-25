require 'rails_helper'

RSpec.describe Guest, type: :model do
  it 'has unique email' do
    guest1 = create(:guest)
    guest2 = build(:guest)

    expect {guest2.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'has many reservations' do
    expect(Guest.reflect_on_association(:reservations).macro).to eq :has_many
  end
end
