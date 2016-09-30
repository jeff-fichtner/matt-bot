# route
post '/' do

  message = request["text"] # the text in the message
  username = request["user_name"] # the username of the author

  # security token
  return 401 unless request["token"] == ENV["SLACK_TOKEN"] # environment var
  # it won't listen to itself
  return 200 if username == "slackbot" # or whatever your bot is named

  if message # matches a certain condition
    # sleep(2) optional
    return JSON.dump({
      "text" => # response
    })
  end

end
