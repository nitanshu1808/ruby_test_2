load 'phone_contact_list.rb'
class Main

	def initialize
		puts "Enter the number of users you want to keep track in the contact number list."
		num 	= gets.to_i
		list 	= {}
		for i in 1..num
			puts "Enter the name of the user#{i}"
			name 			 = gets.chomp
			puts "Enter the contact number of the #{name}"
			list[name] = gets.to_i
		end
		phone_list = PhoneContactList.new(list)
		phone_list.check_consistency
	end

end

m = Main.new