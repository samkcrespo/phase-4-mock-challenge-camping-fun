class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups

  # validates :name, presence: true
  validates_presence_of :name
  validates_inclusion_of :age, in: 8..18
  # validates :age, numericality: {greater_than_or_equal_to: 8, less_than_or_equal_to: 18}


end
