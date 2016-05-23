class GithubInfoController < ApplicationController
  def index
  end

  def create
    @client = Octokit::Client.new(:access_token => params[:access_token])
    @user = @client.user
    redirect_to github_info_index_path
    # @user.login
    # redirect_to github_info_index_path(client: client, user: user)
  end
end
