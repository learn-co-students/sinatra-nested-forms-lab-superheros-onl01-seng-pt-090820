require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post '/teams' do
        @team = Team.new(params[:team])
        params[:team][:members].each do |details|
            Super_Hero.new(details)
        end

        @members = Super_Hero.all
        
        erb :team
    end


end
