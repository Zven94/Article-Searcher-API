require 'net/http'

# My controller for the search
class SearchController < ApplicationController
  def index
    query = params[:q]
    # create index to show the results of all the pages
    startIndex = params[:start_index].to_i || 1

    results = fetch_data(query, startIndex)

    # save articles in an object
    @articles = process_results(results)

    update_searched_counter(query)

    # return retults as a json

    render json: @articles
  end

  def fetch_data(query, startIndex)
    base_url = 'https://www.googleapis.com/customsearch/v1'
    api_key = 'AIzaSyBxDasvzampVLOi93azAijdfcr8XfUgJzk'
    cx = '3700a2e0056ca4d7d'

    full_url = "#{base_url}?q=#{query}&key=#{api_key}&cx=#{cx}&start=#{startIndex}"

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

  # method to update the counter of the searched term
  def update_searched_counter(term)
    searched_query = QueryHistory.find_or_initialize_by(query: term)
    searched_query.increment_count
  end
end
