class SessionController < ApplicationController
  protect_from_forgery :except => :init

  def init
    @domain = params[:domain]
    @shop = Shop.where(shopify_domain: params[:domain]).first
    # session[:shopify] = @shop.id
    # session[:id] = @shop.id
    
    
    render  json: {'domain': @shop.id, 'session': session.to_hash}
  end
end