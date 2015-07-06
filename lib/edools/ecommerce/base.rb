module Edools
  module Ecommerce
    class Base < Edools::Base
      self.site = Edools::ECOMMERCE_BASE_URL
      self.version = Edools::ECOMMERCE_VERSION
    end
  end
end
