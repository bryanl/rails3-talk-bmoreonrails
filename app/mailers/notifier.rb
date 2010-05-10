class Notifier < ActionMailer::Base
  default :from => "blog@example.com"
  
  def new_edition(address, post)      
      @post = post
      @address = address
      mail :to => address,
           :subject => post.title
    end
end