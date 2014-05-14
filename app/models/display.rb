class Display < ActiveRecord::Base
  belongs_to :fill_color,   :class_name => "Color"
  belongs_to :border_color, :class_name => "Color"
  belongs_to :stipple

  has_many :layers
end
