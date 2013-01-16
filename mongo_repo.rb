require 'mongo'

module Repo
  include Mongo

  puts "AAAAAAAA"

  @client = MongoClient.new('localhost', 27017)
  @db = @client['sample-db']    
  @coll = @db['test']

  def Repo.get_all_tests()
    @coll.find().to_a
  end
end