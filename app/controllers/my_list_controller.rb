class MyListController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update]
  def show
  end 
end