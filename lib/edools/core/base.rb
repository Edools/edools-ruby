module Edools
  module Core
    class Base < Edools::Base
      self.site = Edools::CORE_BASE_URL
      self.version = Edools::CORE_VERSION
    end
  end
end
