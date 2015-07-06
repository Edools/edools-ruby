require 'active_resource'

module Edools
  CORE_BASE_URL = 'https://core.edools.com'
  CORE_VERSION = 'vnd.edools.core.v1'

  ECOMMERCE_BASE_URL = 'https://ecommerce.edools.com'
  ECOMMERCE_VERSION = 'vnd.edools.ecommerce.v1'

  @@credentials = nil
  @@format = :json
end
