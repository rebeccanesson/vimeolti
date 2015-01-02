class VimeoEmbedsController < ApplicationController

  def create
    video_id = params[:url]
    iframe_url = Rack::Utils.escape("https://player.vimeo.com/video/#{video_id}?portrait=0&amp;badge=0")
    logger.info 'IFRAME URL : ' + iframe_url
    redirect_url = session[:launch_presentation_return_url] + '?return_type=iframe&url=' + iframe_url + '&width=500&height=281'
    redirect_to redirect_url
  end

end
