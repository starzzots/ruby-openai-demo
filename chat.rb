require "openai"

client = OpenAI::Client.new(access_token: ENV.fetch("OPEN_AI_KEY"))

raw_response = client.chat(
  parameters:{
    model: "gpt-3.5-turbo",
    messages: [
      {:role => "system", :content => "You are a helpful assistant."},
      {:role => "user", :content => "What are the best pizza spots in Chicago?"},
    ]
  }
)

pp raw_response
