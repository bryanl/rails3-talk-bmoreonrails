class Comment
  include Mongoid::Document
  field :author
  field :email
  field :body
  embedded_in :post, :inverse_of => :comments
end
