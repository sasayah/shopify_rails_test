class JsController < ShopifyApp::AuthenticatedController
  protect_from_forgery except: [:widget, :jquery]

  def widget
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