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
    bank_accounts = BankAccount.all
    if bank_accounts[self.sender.to_sym].valid? && bank_accounts[self.receiver] 
  end
end
