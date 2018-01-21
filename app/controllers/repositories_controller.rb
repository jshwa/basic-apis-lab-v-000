class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @result = Faraday.get 'https://api.github.com/search/repositories?q=octocat'
    render 'search'
  end
end
