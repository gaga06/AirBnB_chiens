class Dog < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_one :dogsitter, through: :stroll
  has_many :dogsitters, through: :city


end
