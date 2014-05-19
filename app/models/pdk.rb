class Pdk < ActiveRecord::Base
  has_many :pdk_layers
  has_many :layers, :through => :pdk_layers

  accepts_nested_attributes_for :pdk_layers, :allow_destroy => true
end
