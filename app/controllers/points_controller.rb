class PointsController < ApplicationController
  def create
    @point = Point.create(params.require(:point).permit(:outline_id))
    render partial: 'form', locals: { point: @point }
  end
  def update
    @point = Point.find(params[:id])
    @point.update params.require(:point).permit(:title, :body, :rank)
    render json: @point
  end
end
