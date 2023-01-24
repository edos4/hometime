require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { should validate_uniqueness_of(:code) }
end
