class Account < ApplicationRecord
  
  attr_accessor :destination_account

  belongs_to :user
  enum status: {blocked: "blocked", activated: "activated"}
  
  validates :number, presence: true, uniqueness: true 
  validates :money, presence: true, numericality: { greater_than: 1}

  def self.find_by_account_number(account_number)
    find_by_number(account_number)
  end

  
end
