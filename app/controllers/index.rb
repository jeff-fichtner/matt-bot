trigger = "chuck norris"

# route
post '/matt' do

  message = request["text"]
  username = request["user_name"]

  # security token
  return 401 unless request["token"] == ENV["SLACK_TOKEN"]
  # it won't listen to itself
  return 200 if username == "slackbot"

  if message.downcase.include? trigger
    sleep(2)
    return JSON.dump({
      "text" => Faker::ChuckNorris.fact
    })
  end

end
