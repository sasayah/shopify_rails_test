ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "93423ebd31b84cdd02844403c6d78d55"
  config.secret = "296968c2740ff8345f8293b23e8de904"
  config.old_secret = "<old_secret>"
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
