require 'rails_helper'

RSpec.describe Guest, type: :model do
  it { should validate_uniqueness_of(:email) }
end
