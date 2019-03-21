class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    # @create_price_rule = ShopifyAPI::PriceRule.new(
    #     price_rule: {
    #         title: "FREESHIPPING2",
    #         target_type: "shipping_line",
    #         target_selection: "all",
    #         allocation_method: "each",
    #         value_type: "percentage",
    #         value: "-100.0",
    #         usage_limit: 20,
    #         customer_selection: "all",
    #         prerequisite_subtotal_range: {
    #           greater_than_or_equal_to: "50.0"
    #         },
    #         starts_at: "2017-11-19T17:59:10Z"
    #     }
    #   )
    #   @create_price_rule.save
    @price_rules = ShopifyAPI::PriceRule.find(:all, params:{limit: 10})
  end
end
