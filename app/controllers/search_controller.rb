class SearchController < ApplicationController

  def index

  end

  def new
    @search_term = params[:q]

    @response = HTTParty.get("http://www.omdbapi.com/?t=#{@search_term}&apikey=61af6132&type=movie")

    puts JSON.pretty_generate(@response)
  end


end
