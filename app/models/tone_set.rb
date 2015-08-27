class ToneSet < ActiveRecord::Base
  belongs_to :agency
  has_and_belongs_to_many :receivers
  has_many :user_alert_methods, :through => :agency
end
