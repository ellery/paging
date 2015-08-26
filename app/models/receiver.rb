class Receiver < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tone_sets
end
