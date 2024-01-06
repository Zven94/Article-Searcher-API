require 'net/http'

# My controller for the search
class SearchController < ApplicationController
  def index
    query = params[:q]

    results = fetch_data(query)

    # save articles in an object
    @articles = process_results(results)

    # return retults as a json

    render json: @articles
  end

  def fetch_data(query)
    base_url = 'https://www.googleapis.com/customsearch/v1'
    api_key = 'AIzaSyBxDasvzampVLOi93azAijdfcr8XfUgJzk'
    cx = '3700a2e0056ca4d7d'

    full_url = "#{base_url}?q=#{query}&key=#{api_key}&cx=#{cx}"

    uri = URI(full_url)
    reponse = Net::HTTP.get(uri)
    JSON.parse(reponse)

    # in case of errors with the fetch:
  rescue StandardError => e
    Rails.logger.error("Error in the request... #{e.message}")
    nil
  end

  def process_results(results)
    items = results['items']

    items&.map do |item|
      { 'title' => item['title'], 'snippet' => item['snippet'], 'link' => item['link'] }
    end || []
  end
end
