require 'search_operations'
require 'cache_operations'

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    if params['user']['service'] == SEARCH_SERVICE
      SearchOperations.create_doc(user_params.to_hash)
    else
      CacheOperations.add_data(user_params.to_hash)
    end
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def search
    @users = { elastic: SearchOperations.retrieve_doc(params['search_query']) }
    @users[:redis] = CacheOperations.retrieve_data(params['search_query'])
  end

  private

  def user_params
    params.require('user').permit(:first_name, :last_name, :email, :dob)
  end

  def search_params
    params.permit(:first_name, :last_name, :email)
  end
end
