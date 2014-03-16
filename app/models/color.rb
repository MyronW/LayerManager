class Color < ActiveRecord::Base
  validates :name, presence: true
  validates :hex, length: {is: 6} 

  belongs_to :display
end
