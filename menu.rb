#Welcome to the CRM app! Hope you enjoy all the awesome Ruby!
require "./database"
require "./contacts"
require "./modify"

  class CRM

    def initialize(name)
      @name = name
    end

    def main_menu
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
      #dislpay_contacts

      # while user_selected != 6 
      #   main_menu
      # end

    end

    def print_main_menu
      puts "[1] Add a new contact"
      puts "[2] Modify an existing contact"
      puts "[3] Delete a contact"
      puts "[4] Display all the contacts"
      puts "[5] Display an attribute" 
      puts "[6] Exit"
      puts "Enter a number: "
    end

    def call_option(user_selected)
      add_new_contact         if user_selected == 1
      modify_contacts         if user_selected == 2
      delete_a_contact        if user_selected == 3
      dislpay_all_contacts    if user_selected == 4
      display_an_attribute    if user_selected == 5
      exit                    if user_selected == 6
    end

    def add_new_contact
      print "Enter First Name: "
      first_name = gets.chomp
      print "Enter Last Name: "
      last_name = gets.chomp
      print "Enter Email Address: "
      email = gets.chomp
      print "Enter a Note: "
      note = gets.chomp
      contact = Contact.new(first_name, last_name, email, note)
      Database.add_contact(contact)
      puts contact 
      main_menu
    end

    def display_all_contacts
      puts contact
    end

    def modify_contacts
      database.display_all_contacts
      email = gets.chomp
      contact = Database.find_all_contacts(email)
      main_menu
    end

    def delete_a_contact

    end

    def dislpay_all_contacts

    end

    def display_an_attribute

    end

    def exit

    end



  end

puts "\e[H\e[2J"
session = CRM.new("Welcome to CRM v.000072")
session.main_menu