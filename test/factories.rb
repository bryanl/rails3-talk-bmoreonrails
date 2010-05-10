Factory.define :post do |f|
  f.sequence(:title){|n| "post #{n}"}
  f.body "content"
end

Factory.define :comment do |f|
  f.sequence(:author){|n| "User #{n}"}
  f.sequence(:email){|n| "user#{n}@example.com"}
  f.body "comment"
end
