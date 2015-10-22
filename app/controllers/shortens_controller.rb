class ShortensController < ApplicationController
  def new
    @shorten = Shorten.new
  end

  def create
    @shorten = Shorten.create(shortens_params)
    if @shorten.save
      redirect_to @shorten
    else
      render :new
    end
  end

  def show
    @shorten = Shorten.find(params[:id])
  end

  private

  def shortens_params
    params.require(:shorten).permit(:original_url)
  end
end
