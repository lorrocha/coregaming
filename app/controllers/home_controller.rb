class HomeController < ApplicationController

  def index
    @hours = Home.hours
  end
end
