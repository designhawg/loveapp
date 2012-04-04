require 'httparty'
require 'json'

class SearchController < ApplicationController
  
  def index

    @mnet_response = ""
    @api_key = 'arS8JJsFQsBGGAIY6FJm8kD5R'
    @mnet_title = params[:search]
    if @mnet_title != nil
      @mnet_response = 'http://api.mndigital.com/?method=Radio.SearchTracks&format=json&title=' + CGI::escape(@mnet_title) + '&includeExplicit=true&mainArtistOnly=true&apiKey=' + @api_key

      @response = HTTParty.get(@mnet_response)
      @search = @response["Tracks"][0]
    end
    
  end

  
  def results
    @results = response["Tracks"].all
  end
  
  def new
    reponse = API "#<params(:track)>"
  end
  
  def create
  
  end
  
end
