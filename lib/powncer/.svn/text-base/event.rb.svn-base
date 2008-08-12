module Powncer
  
  class Event < Note
    
    def initialize(options = {})
      raise RequirementMissing, "Event requires a name" unless options[:name]
      raise RequirementMissing, "Event requires a location" unless options[:location]
      raise RequirementMissing, "Event requires a date" unless options[:date]
      raise InvalidFormat, "Event date should be formatted YYYY-MM-DD hh:mm" unless options[:date].is_valid_date?
      super
      @attributes["name"] = options[:name]
      @attributes["location"] = options[:location]
      @attributes["date"] = options[:date]
    end
    
    [:name, :location, :date].each do |attribute|
      class_eval(<<-EVAL, __FILE__, __LINE__)
        def #{attribute}
          @attributes["#{attribute}"] || @attributes["event"]["#{attribute}"]
        end
      EVAL
    end

    class << self
      
      def create(attributes)
        attributes.symbolize_keys!
        event = self.new(attributes)
        unless event.to.is_a?(Symbol)
         target_key = self.superclass.ensure_send_to(:friend, event.to)
        end
        url = "/send/event.#{self.superclass::FORMAT}"
        Event.instantiate post(url, {:to => target_key || event.to, :name => event.name, :location => event.location, :date => event.date})
      end
      
    end
    
  end

end