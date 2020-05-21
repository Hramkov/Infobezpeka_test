class Table < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations

  validates_uniqueness_of :number_table, scope: :restaurant_id
  validates :number_table, numericality: { only_integer: true }
  
end
