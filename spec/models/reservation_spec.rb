require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { should validate_uniqueness_of(:code) }

  it 'belongs to guest' do
    expect(described_class.reflect_on_association(:guest).macro).to eq :belongs_to
  end
end
