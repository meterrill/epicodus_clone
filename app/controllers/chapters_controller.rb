class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
    render :table_of_contents
  end
end
