class Users

	attr_accessor :name, :balance, :pin

	def initialize(name, balance, pin, login = 0)
		@name = name
		@balance = balance
		@pin = pin
		@login == 0
	end

	def pin(pin)
		if pin = @pin
			puts "Hello #{name}, You have a balance of $#{balance}"
			@login == 1
		end
	end

	def login
		@pin == gets.to_i
		John.pin(@pin)
		login = 1
	end

end