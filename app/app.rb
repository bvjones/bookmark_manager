ENV['RACK_ENV'] ||= 'development'

require_relative 'data_mapper_setup.rb'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base
enable :sessions
set :session_secret, 'super secret'

helpers do
  def current_user
    @current_user ||= User.get(session[:user_id])
  end
end

  get '/' do
    erb :sign_up
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :creating_links
  end

  post '/users' do
    user = User.create(email: params[:email],password: params[:password], password_confirmation: params[:password_confirmation])
    session[:user_id] = user.id
    redirect to('/links')
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
      tag = params[:tag]
      tag.split(', ').each do |tag|
        new_tag = Tag.first_or_create(tag: tag)
        link.tags << new_tag
      end
    link.save
    redirect '/links'
  end

  get '/tags/:name' do
    tag = Tag.first_or_create(tag: params[:name])
    @links = tag ? tag.links : []
    erb :links
  end

  run! if app_file == $0

end
