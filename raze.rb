#!/usr/bin/env ruby

require "sinatra"

get "/" do
  "Hello World #{params[:name]}".strip
end
