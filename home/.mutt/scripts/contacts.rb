#!/usr/bin/env ruby

require 'exchanger'

query = ARGV.join(" ")

account  = "trobrock@godaddy.com"
server   = "outlook.office365.com"
password = `~/.mutt/scripts/keychain_access.py '#{account}' '#{server}'`.chomp
Exchanger.configure do |config|
  config.endpoint = "https://#{server}/EWS/Exchange.asmx"
  config.username = account
  config.password = password
end

begin
  contacts = Exchanger::Mailbox.search(query)
  contacts = contacts.map { |contact| [contact.name, contact.email_address, contact.mailbox_type] }.uniq { |c| c[1] }
rescue Exchanger::Operation::ResponseError
  exit 0
end

contacts.each do |contact|
  puts "#{contact[1]}\t#{contact[0]}\tGoDaddy.com Exchange Server <#{contact[2]}>"
end
