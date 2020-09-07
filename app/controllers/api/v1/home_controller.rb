class Api::V1::HomeController < ApplicationController
  before_action :authorize_request
  require 'rest-client'

  API_BASE_URL = 'https://api.github.com'

  # home/search_repositories/:user
  def search_repositories
    user = params[:user]

    response = RestClient.get("#{API_BASE_URL}/users/#{user}/starred")

    if response.code == 200
      @repositories = JSON.parse(response.body)
      render status: :ok
    end
  end
end
