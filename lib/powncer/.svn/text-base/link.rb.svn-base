module Powncer
  
  class Link < Note
    
    def initialize(options = {})
      options[:url] ||= ""
      raise RequirementMissing unless options[:url].is_valid_url?
      super
      @attributes["url"] = options[:url]
    end
    
    class << self
      
      def create(attributes)
        attributes.symbolize_keys!
        link = self.new(attributes)
        unless link.to.is_a?(Symbol)
         target_key = self.superclass.ensure_send_to(:friend, link.to)
        end
        url = "/send/link.#{self.superclass::FORMAT}"
        Link.instantiate post(url, {:body => link.body, :to => target_key || link.to, :url => link.url})
      end
      
    end
    
  end

end