class AstaireController < ApplicationController
  get "/help" do
    render :text => "this is the help docs"
  end

  get '/yes-this-is-the-sinatra-dsl-in-rails' do
    render :text => "omgwtfbbq"
  end

end
