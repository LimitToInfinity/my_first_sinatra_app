class ApplicationController < Sinatra::Base
    configure do
        set :views, "app/views"
    end

    # get '/' do
    #     @hashketball = Hashketball.new
    #     @info = hashketball.get_all_info
    #     erb :index
    # end

    get '/cats/new' do
        erb :"cats/new"
    end

    post '/cats' do
        name = params[:cat][:name]
        breed = params[:cat][:breed]
        new_cat = Cat.new(name, breed)
        redirect "/cats"
    end

    get '/cats' do
        @cats = Cat.all
        erb :"cats/index"
    end

    get '/dogs/new' do
        erb :"dogs/new"
    end

    post '/dogs' do
        name = params[:dog][:name]
        breed = params[:dog][:breed]
        @new_dog = Dog.new(name, breed)
        @dogs = Dog.all
        erb :"dogs/index"
    end

    get '/dogs' do
        # @dogs = Dog.all
        erb :"dogs/index"
    end

end