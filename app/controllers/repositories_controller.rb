class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @result = Faraday.get 'https://api.github.com/search/repositories' do |g|
      g.params['q'] = params[:query]
      g.params['client_id'] = ENV['CLIENT_ID']
      g.params['client_secret'] = ENV['CLIENT_SECRET']
    end
    render 'search'
  end
end
