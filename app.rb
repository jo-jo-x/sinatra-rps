require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  rps = ["rock", "paper", "scissors"]
  @hands = rps.sample

  @winner = { 
  "rock" => "scissors", 
  "paper" => "rock", 
  "scissors" => "paper" 
  }
  if @winner["rock"] == @hands
    @result = "We win!"
  elsif @hands == "rock"
    @result = "We tied!"
  else
    @result = "We lost!"
  end

  erb(:rock)
end

get("/paper") do
  rps = ["rock", "paper", "scissors"]
  @hands = rps.sample

  @winner = { 
  "rock" => "scissors", 
  "paper" => "rock", 
  "scissors" => "paper" 
  }
  if @winner["paper"] == @hands
    @result = "We win!"
  elsif @hands == "paper"
    @result = "We tied!"
  else
    @result = "We lost!"
  end

  erb(:paper)
end

get("/scissors") do
  rps = ["rock", "paper", "scissors"]
  @hands = rps.sample

  @winner = { 
  "rock" => "scissors", 
  "paper" => "rock", 
  "scissors" => "paper" 
  }
  if @winner["scissors"] == @hands
    @result = "We win!"
  elsif @hands == "scissors"
    @result = "We tied!"
  else
    @result = "We lost!"
  end

  erb(:scissors)
end
