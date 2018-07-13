require 'pry'
class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    sender = BankAccount.find_account(self.sender)
    receiver = BankAccount.find_account(self.receiver)
    binding.pry
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
end
