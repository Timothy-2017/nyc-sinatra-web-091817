class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :"landmarks/new"
  end

  post '/land' do
    #binding.pry
    @landmark = Landmark.create(params["landmark"])
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get '/landmarks/:id' do
    #binding.pry
    @landmark = Landmark.find_by_id(params[:id])
    erb :"landmarks/show"
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :"landmarks/edit"
  end

  post 'landmarks/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    binding.pry
    @landmark.name = params[:name]
    @landmark.year_completed = params[:year_completed]

  end
end
