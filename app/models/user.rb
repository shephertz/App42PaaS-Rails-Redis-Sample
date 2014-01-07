DataMapper.setup(:default, {:adapter  => "redis"})

class User
  include Redis::Objects
  include DataMapper::Resource

  include ActiveModel::Validations  
  include ActiveModel::Conversion  
  
  # datamapper fields, just used for .create
  property :id, Serial
  property :name, String
  property :email, String
  property :des, Text

  def id
    1
  end

end

User.finalize