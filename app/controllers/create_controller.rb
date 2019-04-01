
class CreateController < ShopifyApp::AuthenticatedController
  def discount
    @price_rules = ShopifyAPI::PriceRule.find(:all, params:{limit: 10})
    @discount_code = ShopifyAPI::DiscountCode.new
    @discount_code.prefix_options[:price_rule_id] = 335408529472
    @discount_code.code = "SUMMERSALE10#{rand(10 ** 10)}"
    @discount_code.save
    code = {
      "code": @discount_code.code 
    }
    # # response.headers["Access-Control-Allow-Origin"] = "*"
    # # response.headers["Access-Control-Allow-Methods"] = "*"
    render json: code
  end
end