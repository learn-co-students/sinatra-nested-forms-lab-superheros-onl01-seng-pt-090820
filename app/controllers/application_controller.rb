require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        
        erb :index
    end

    get '/team' do

        erb :team
    end
    

    post '/teams' do
        
        @team = Team.new(params[:team])

        params[:team][:members].each do |member_data|
            SuperHero.new(member_data)
        end

        @members = SuperHero.all

        erb :team
    end

end
