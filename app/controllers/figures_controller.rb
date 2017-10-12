class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"figures/new"
  end

  post '/fig' do
    @figure = Figure.create(params["figure"])
    # binding.pry
    @figure.titles << Title.find_or_create_by(params[:title])
    # binding.pry
    @figure.landmarks << Landmark.find_or_create_by(params[:title])
  end
end
