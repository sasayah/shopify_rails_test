class JsController < ApplicationController
  protect_from_forgery except: [:widget, :jquery, :style]

  def widget
    logger.debug('ooooooooooo')
    # session[:id] = 1
    logger.debug(session[:id])
    respond_to do |format|
      format.js
    end
  end
  def jquery
    respond_to do |format|
      format.js
    end
  end
  def style
    respond_to do |format|
      format.css
    end
  end
end