module Powncer
  
  class Media < Note
    
    def initialize(options = {})
      super
      @attributes["data"] = options[:data] if options[:data]
    end
    
    class << self
      
      def create(attributes)
        attributes.symbolize_keys!
        file = self.new(attributes)
        unless file.to.is_a?(Symbol)
         target_key = self.superclass.ensure_send_to(:friend, file.to)
        end
        url = "/send/file.#{self.superclass::FORMAT}"
        Media.instantiate post(url, {:to => target_key || file.to, :data => file.data})
      end
      
    end
    
  end

end