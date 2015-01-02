class VimeoEmbedsController < ApplicationController

  def create
    video_id = params[:url]
    iframe_url = Rack::Utils.escape("https://www.youtube.com/embed/#{video_id}")
    logger.info 'IFRAME URL : ' + iframe_url
    redirect_url = session[:launch_presentation_return_url] + '?return_type=iframe&url=' + iframe_url + '&width=560&height=315'
    redirect_to redirect_url
  end

end
