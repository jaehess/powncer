module Powncer
  
  class PowncerError < StandardError; end
  class PownceConnectionError < PowncerError; end
  class ConnectionUnavailable < PownceConnectionError; end
  class BadResponse < PownceConnectionError; end
  class WebServiceError < PownceConnectionError; end
  class InvalidFriend < PowncerError; end
  class RequirementMissing < PowncerError; end
  class InvalidFormat < RequirementMissing; end
  
  class Base
    
    FORMAT = 'json'
    
    def id
      @attributes["id"] || nil
    end
    
    def request(url)
      self.class.request(url)
    end
    
    def post(url, *params)
      self.class.post(url, params)
    end
    
    class << self
      
      def request(url)
        response = Powncer.connect!.get(url)
        parse(response)
      end
      
      def post(url, *params)
        options = extract_options(params.flatten)
        response = Powncer.connect!.post(url, options)
        parse(response)
      end
      
      def parse(response)
        json = JSON.parse(response)
        if json.has_key? 'error'
          raise WebServiceError, json["error"]["message"]
        end
        return json
      end

      def instantiate(attributes)
        object = allocate
        object.instance_variable_set("@attributes", attributes)
        object
      end
      
      def extract_options(args)
        args.last.is_a?(Hash) ? args.pop : {}
      end
    end
    
    private
    
    def extract_attributes(args)
      args.last.is_a?(Hash) ? args.pop : {}
    end
    
    alias :orig_method_missing :method_missing
    
    def method_missing(method_id, *args)
      attribute_name = method_id.to_s
      if @attributes.stringify_keys!.has_key?(attribute_name)
        return @attributes.fetch(method_id.to_s)
      else
        orig_method_missing(method_id, args)
      end
    end
    
  end
  
  class << self
    
    def connections
      @connections ||= []
    end
  
    def add_connection(connection)
      connections << connection
    end
  
    def make_default_connection
      add_connection(Connection.new).first
    end
  
    def connect!
      connections.last || make_default_connection
    end
  
    def disconnect!
      @connections.clear unless connections.empty?
    end
    
  end

end