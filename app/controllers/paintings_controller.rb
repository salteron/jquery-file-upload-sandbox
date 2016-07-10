class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
  end

  def create
    @painting = Painting.create(painting_params)
  end

  private

  def painting_params
    params.permit!
    params.fetch(:painting, {})
  end
end
