class Post
  include Mongoid::Document
  field :title
  field :body
  embeds_many :comments
end
