class SearchedTermsController < ApplicationController
  def index
    @most_searched_terms = SearchedTerm.most_searched_terms
    render json: @most_searched_terms
  end
end
