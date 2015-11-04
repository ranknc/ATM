require "gosu"
require_relative 'balances'
require_relative 'users'

John = Users.new("John", 1000, 1234)
puts "Hello welcome to Trustee Bank 24 hr ATM"
puts "please enter your PIN"
# cmd = ""
# while cmd != "e"
# 	cmd = gets.chomp
# end
def input
	$stdin.gets.chomp
end

def login
	@pin = input
	John.pin(@pin)
	login = 1
end
def balance
	if login == 1
		puts "Would you like to (d)eposit or (w)ithdrawl?"
		balance(amount)
	end
end
login