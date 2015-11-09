require "gosu"
require_relative 'balances'
require_relative 'users'

John = Users.new("John", 1000, 1234)
puts "Hello welcome to Trustee Bank 24 hr ATM"
puts "Please enter your PIN"

def input
	$stdin.gets.chomp
end



cmd = ""
John.login
while cmd != "e" do
	puts "Would you like to (d)eposit or (w)ithdrawl?"
	puts "You can (e)nd your session."
	cmd = gets.chomp
		
	case cmd
	when "w"
		puts "How much would you like to Withdrawl"
		amount = gets.chomp
		John.withdrawl(amount)
	when "d"
		puts "How much would you like to deposit"
		amount = gets.chomp
		John.deposit(amount)
	end
end
