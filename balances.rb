class Balances

	attr_accessor :balance, :deposit, :withdrawl

	def initialize(balance, deposit, withdrawl)
		@balance = balance
		@deposit = deposit
		@withdrawl = withdrawl
	end
	
	def balance(amount)
		if withdrawl(amount)
			puts "How much would you like to Withdrawl"
		else deposit(amount)
			puts "How much would you like to deposit"
		end
	end

	private
		def withdrawl(amount)
			if @balance >= amount.to_f
				@blance -= amount.to_f
				puts "$%.2f amount successfuly withdrawn"
			else
				puts "Error: Insufficient funds"
			end
		end
		def deposit(amount)
			@balance += amount.to_f
		end
end