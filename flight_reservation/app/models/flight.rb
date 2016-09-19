class Flight < ActiveRecord::Base
  validates :number, presence: true
  validates :origin, presence: true, length: {minimum: 1, maximum: 10 }
  validates :destination, presence: true, length: {minimum: 1, maximum: 10 }
  validates :datetime, presence: true
  validates :price, presence: true
end