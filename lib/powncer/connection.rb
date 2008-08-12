module Powncer

  class Connection
    
    attr_accessor :url, :authenticated
    
    def initialize(is_auth=false)
      @url = "#{Powncer::Version::API_URL}/#{Powncer::Version::API_VERSION}"
      @authenticated = is_auth
    end
    
    def get(uri, use_auth=false)
      endpoint = "#{@url}#{uri}"    
      begin
        if use_auth
          response = Authentication::Basic.open(endpoint, Powncer.connect!.options)
        else
          response = open(endpoint)
        end
        case response.status
        when ["200", "OK"]
          response.read
        else
          raise BadResponse
        end
      rescue
        raise ConnectionUnavailable
      end
    end
    
  end #/Connection

end #/Powncer