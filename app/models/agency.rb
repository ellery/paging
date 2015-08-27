class Agency < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :receivers
  has_many :user_alert_methods
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :phone, using: :us_phone
  
  
end
