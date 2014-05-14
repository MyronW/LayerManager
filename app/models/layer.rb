class Layer < ActiveRecord::Base
  has_and_belongs_to_many :pdks
  belongs_to :cadence_purpose
  belongs_to :display
end
