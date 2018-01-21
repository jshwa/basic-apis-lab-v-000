class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @result = Faraday.get 'https://api.github.com/search/repositories' do |g|
      g.params[q] = params[:query]
  end
end
