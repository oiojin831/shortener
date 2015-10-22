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

  def redirect
    @shorten = Shorten.find_by_id(url_id) or not_found
    redirect_to "http://#{@shorten.original_url}"
  end

  private

  def shortens_params
    params.require(:shorten).permit(:original_url)
  end

  def url_id
    Base62.decode(params[:short_url])
  end
end
