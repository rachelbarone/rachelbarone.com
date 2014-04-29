class Message < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :city,
    :state, :country, :phone, :referrer, :body
    
  validates :email, :first_name, :last_name, :body, presence: true
end
