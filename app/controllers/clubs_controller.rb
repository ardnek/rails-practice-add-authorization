class ClubsController < ApplicationController

  before_action :require_login

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

end
