class OutlinesController < ApplicationController
  def index
    @outlines = current_user.outlines
  end

  def show
    @outline = Outline.find(params[:id])
    redirect_to '/' unless current_user == @outline.user
  end
end
