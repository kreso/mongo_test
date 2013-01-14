require 'mongo'

include Mongo

@client = MongoClient.new('localhost', 27017)
@db = @client['sample-db']
@coll = @db['test']

@coll.remove

3.times do |i|
  @coll.insert({'a' => i+1})
end

@coll.find.each { |doc| puts doc.inspect }