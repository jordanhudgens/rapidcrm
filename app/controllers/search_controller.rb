class SearchController < ApplicationController
  def index
    @leads = Lead.text_search(params[:query]).order(sort_column + ' ' + sort_direction)
  end
end
