class ToneSet < ActiveRecord::Base
  belongs_to :agency
  has_and_belongs_to_many :receivers
  has_many :user_alert_methods, :through => :agency
  
  
  def mp3_emails
    if self.user_alert_methods.where(:method_type => 1).count > 0
      "mp3_Emails = "  + self.user_alert_methods.where(:method_type => 1).collect(&:address).join(", ")
    end
  end
  
  def text_emails
    if self.user_alert_methods.where(:method_type => 0).count > 0
      "text_Emails = "  + self.user_alert_methods.where(:method_type => 0).collect(&:address).join(", ")
    end
  end
  
  
end
