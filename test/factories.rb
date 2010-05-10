Factory.define :post do |f|
  f.sequence(:title){|n| "post #{n}"}
  f.body "content"
end
