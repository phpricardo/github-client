class Api::V1::RepositoriesController < ApplicationController
  before_action :authorize_request

  # GET /repositories
  def index
    @repositories = Repository.all
    render json: @repositories, include: [:tags], status: :ok
  end

  # POST /repositories
  def create
    @repository = Repository.new(repository_params)
      if @repository.save
      render json: @repository, include: [:tags], status: :created
    else
      render json: { errors: @repository.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def repository_params
    params.require(:repository).permit(:repository_code, :repository_name, :respository_description, :repository_html_url, tags_attributes: [:name])
  end
end