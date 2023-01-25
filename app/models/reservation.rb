# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :guest, optional: true

  validates :code, presence: true, uniqueness: true
end
