require 'logger'
require 'sinatra/base'
require './mongo_repo'


class App < Sinatra::Base

  configure do
    LOGGER = Logger.new("mongo_test.log")
    enable :logging, :dump_errors
    set :raise_errors, true
  end

  get '/' do
    Repo.get_all_tests().inspect()
  end

  run! if __FILE__ == $0
end