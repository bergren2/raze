ENV["RACK_ENV"] = "test"

require "./raze"
require "test/unit"
require "rack/test"

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get "/"
    assert last_response.ok?
    assert_equal "Hello World", last_response.body
  end

  def test_it_says_hello_to_a_person
    get "/", name: "Bill"
    assert last_response.body.include?("Bill")
  end
end
