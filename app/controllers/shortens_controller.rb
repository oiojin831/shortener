class ShortensController < ApplicationController
  def new
    @shorten = Shorten.new
  end

  def create
    @shorten = Shorten.new(shortens_params)
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
    if Ip.find_by_addr(request.ip)
      ip = Ip.find_by_addr(request.ip)
      count = ip.num
      count += 1
      ip.update_attributes(num: count)
      # update count
    else
      @shorten.ips.build(shorten_id: @shorten.id, addr: request.ip, num: 0)
    end
    redirect_to "#{@shorten.original_url}"
  end

  private

  def shortens_params
    params.require(:shorten).permit(:original_url)
  end

  def url_id
    Base62.decode(params[:short_url])
  end
end
