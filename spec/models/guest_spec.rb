require 'rails_helper'

RSpec.describe Guest, type: :model do
  it { should validate_uniqueness_of(:email) }

  it 'has many reservations' do
    expect(described_class.reflect_on_association(:reservations).macro).to eq :has_many
  end
end
