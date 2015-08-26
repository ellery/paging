class Alert < ActiveRecord::Base
  belongs_to :tone_set
  has_one :event_type
end
