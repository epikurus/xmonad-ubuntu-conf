# Gmail checker for Xmobar
#
# Install the ruby-gmail and mime gem to system
# Put the script under ~/path/to/gmail_checker.rb
# Make sure it is executable

require 'gmail'

gmail = Gmail.new('example@gmail.com', 'password')
mail_count = gmail.inbox.count(:unread)
puts mail_count == 0 ? "No mail" : "Mail: #{mail_count}"
