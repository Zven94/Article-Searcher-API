class QueryHistoriesController < ApplicationController
  def index
    @most_searched_queries = QueryHistory.most_searched_queries
    render json: @most_searched_queries
  end
end
