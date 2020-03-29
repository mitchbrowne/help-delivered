class PagesController < ApplicationController
  def index
    @user = @current_user if @current_user.present?
  end
end
