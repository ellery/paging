class ToneSet < ActiveRecord::Base
  belongs_to :agency
  has_and_belongs_to_many :receivers
end
