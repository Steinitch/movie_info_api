class SearchController < ApplicationController

  def index

  end

  def new
    @search_term = params[:q]
    @response = HTTParty.get("http://www.omdbapi.com/?s=#{@search_term}&apikey=61af6132&type=movie")

    puts JSON.pretty_generate(@response)

  end

  def show
    @imdb_id = params[:id]

    @response = HTTParty.get("http://www.omdbapi.com/?i=#{@imdb_id}&apikey=61af6132&type=movie")

    puts JSON.pretty_generate(@response)
  end


end
