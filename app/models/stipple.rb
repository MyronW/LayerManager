class Stipple < ActiveRecord::Base
  validates :name, presence: true
  validates :pattern, length: {is: 256} 
end
