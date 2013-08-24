#This is the database!
require "./contacts"


class Database

	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
		#puts @id.inspect

	end

	def self.contacts
	@contacts
	end

	def self.find_all_contacts(email)
		@contacts.each do |contact|

			if email == contact.email

				puts "id #{contact.id}"

				user_selected = gets.to_i

				case user_selected
				when 1 
					puts "New ID"
					gets.chomp
					puts "Good job"
				end

			when 2
				puts ""
				end
			end

	# def display_contacts
	# 	puts contact.email
	# end

	


end
