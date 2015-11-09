require_relative "main.rb"
require_relative 'users'

class Balances

	attr_accessor :balance, :deposit, :withdrawl

	def initialize(balance, deposit, withdrawl)
		@balance = balance
		@deposit = deposit
		@withdrawl = withdrawl
	end

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