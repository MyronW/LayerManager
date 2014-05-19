class Layer < ActiveRecord::Base
  has_many :pdk_layers

  belongs_to :cadence_purpose
  belongs_to :display
end
