require 'active_resource'

module Edools
  CORE_BASE_URL = 'https://core.edools.com'
  CORE_VERSION = 'vnd.edools.core.v1'

  @@credentials = nil
  @@format = :json
end