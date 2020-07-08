require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/assemble' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:heroes].each do |details|
        Hero.new(details)
      end

      erb :team
    end

end
