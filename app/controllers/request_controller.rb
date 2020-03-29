class RequestController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def show
  end
end
