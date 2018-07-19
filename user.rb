require 'colorize'

class Snapchat
 
 attr_accessor :user, :pass, :message, :who, :birthday
 
 def initialize(user, pass, message, who, birthday)
   @user = user
   @pass = pass
   @message = message
   @who = who
   @birthday = birthday
 end

 def create_user
   puts "Welcome to Snapchat! What is your username?".light_yellow
     new_user = gets.strip
     @user = new_user
 end
 

   
 def create_password
   puts "What is your password?".red
     new_password = gets.strip.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
     @pass = new_password.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
 end
 
  def create_birthday
   puts "What is your birthday?".red
     new_birthday = gets.strip
     @birthday = new_birthday
 end
 
 def create_message
   puts "Would you like to send a message?".light_yellow
   answer = gets.strip.downcase
     if answer == "yes"
       puts "What is your message?".light_green
       new_mess = gets.strip
       @message = new_mess
     else
       puts "That sucks! >:((((((".light_blue
     end
 end

 def send_who
   puts "Who would you like to snap?".magenta
     new_person = gets.strip
     @who = new_person
 end

 def display_info
   puts "Would you like to see all of your information?".light_green
   reply = gets.strip.downcase
   if reply == "yes"
     puts "Hello #{user}!".cyan
     puts "Your password is #{pass}.".cyan
     puts "Your birthday is #{birthday}.".cyan
     puts "Your message, '#{message}', is sent to #{who}.".cyan
   else
     puts "Your loss :(".blue
   end
 end
end

person=Snapchat.new( "gyug", "dhjs", "jks", "jskas", "dhj")

person.create_user

person.create_password

person.create_birthday

person.create_message

person.send_who

person.display_info