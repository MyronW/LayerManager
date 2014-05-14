class CadencePurpose < ActiveRecord::Base
  validates :name, presence: true
  validates :number, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 127}

  has_many :layers
end
