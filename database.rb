#This is the database!
require "./contacts"
require "./menu"

class Database

	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
		puts @id.inspect

	end

	def self.contacts
	@contacts
	end

	# def display_contacts
	# 	puts contact.email
	# end

	


end
