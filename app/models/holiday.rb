class Holiday < ApplicationRecord
  validates :name, presence: true
  validates :startDate, presence: true
  validates :endDate, presence: true
end
