class UserAlertMethod < ActiveRecord::Base
  belongs_to :user
  belongs_to :agency
  ALERT_METHOD_TYPES = [["Email", 1], ["MMS Email", 2], ["SMS",3], ["IOS", 3], ["Android", 4], ["Phone Call", 5]]
end
