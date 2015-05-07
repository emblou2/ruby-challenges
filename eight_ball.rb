require 'rubygems'
require 'twilio-ruby'

account_sid = "ACddd76ae8890fee9a61d8f7aef6c59861"
auth_token = "1ab16e3cdaf572a8d3397e159f61419e"

@client = Twilio::REST::Client.new(account_sid, auth_token)

def answer
  case rand(1..20)
  when 1 then "It is certain"
  when 2 then "It is decidely so"
  when 3 then "Without a doubt"
  when 4 then "Yes definitely"
  when 5 then "You may rely on it"
  when 6 then "As I see it, yes"
  when 7 then "Most likely"
  when 8 then "Outlook good"
  when 9 then "Yes"
  when 10 then "Signs point to yes"
  when 11 then "Reply hazy, try again"
  when 12 then "Ask again later"
  when 13 then "Better not tell you now"
  when 14 then "Cannot predict now"
  when 15 then "Concentrate and ask again"
  when 16 then "Don't count on it"
  when 17 then "My reply is no"
  when 18 then "My sources say no"
  when 19 then "Outlook not so good"
  when 20 then "Very doubtful"
  end
end  

print "Ask the Magic 8 Ball your question: " 
question = gets.chomp

message = @client.account.messages.create(
  :from => "17027613030",
  :to => "7022383303",
  :body => "You asked '#{question}' The answer is : #{answer}"
)

puts message.to