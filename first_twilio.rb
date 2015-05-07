require 'rubygems'
require 'twilio-ruby'

account_sid = "ACddd76ae8890fee9a61d8f7aef6c59861"
auth_token = "1ab16e3cdaf572a8d3397e159f61419e"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "17027613030",
  :to => "7022383303",
  :body => "You did it!!"
)

puts message.to