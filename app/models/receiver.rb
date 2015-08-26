class Receiver < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tone_sets
  
  
  def to_s
    self.common_name + " " + self.frequency.to_s
  end
end
