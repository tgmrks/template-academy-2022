class HomeController < ApplicationController
  def index
    @movies = Movie.last(4)
  end
end
