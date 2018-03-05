class HomepageController < ApplicationController
  def index
    @books = Work.where(category: "Book")
    @movies = Work.where(category: "Movie")
    @albums = Work.where(category: "Album")
  end
end
