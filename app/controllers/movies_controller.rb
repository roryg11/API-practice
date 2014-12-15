require 'rest_client'
require 'pry'
require 'json'

class MoviesController < ApplicationController

  def search
    response = RestClient.get("http://omdbapi.com/?s=""#{params[:s]}")
    @movies = JSON.parse(response.body)
  end

  def show
    response = RestClient.get("http://omdbapi.com/?s=#{params[:s]}")
    @movies = JSON.parse(response.body)
  end

end
