class SearchController < ApplicationController
  def index
    @leads = Lead.text_search(params[:query]).order(sort_column + ' ' + sort_direction)
  end
  
  private
  
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
end
