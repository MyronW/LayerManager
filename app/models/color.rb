class Color < ActiveRecord::Base
  validates :name, presence: true
  validates :hex, length: {is: 6} 

  has_many :fill_displays,   :class_name => "Display", :foreign_key => 'fill_color_id'
  has_many :border_displays, :class_name => "Display", :foreign_key => 'border_color_id'
end
