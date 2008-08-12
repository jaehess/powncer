module Powncer
  
  class Note < Base
    
    def initialize(options = {})
      @attributes ||= {}
      @attributes["body"] = options[:body] if options[:body]
      @attributes["to"] = options[:to] || default_send_to
    end
    
    def save
      self.class.create(@attributes)
    end
    
    def recipients
      url = "/notes/#{self.id}/recipients.#{FORMAT}"
      request(url)["recipients"]["users"].collect!{|user| User.instantiate(user)}
    end
    
    def type
      @attributes["type"] || nil
    end
    
    def link
      @attributes["url"] || @attributes["link"]["url"]
    end
    
    def is_public?
      self.is_public
    end
    
    def sender
      User.instantiate(@attributes["sender"])
    end
    
    private
    
    def default_send_to
      User.send_to["selected"].to_sym
    end
    
    class << self
      
      def find(*args)
        options = extract_attributes(args)
        case args.first
        when :public
          find_all_public(options)
        else
          find_by_id(args.first, options)
        end
      end
      
      def create(attributes)
        attributes.symbolize_keys!
        note = self.new(attributes)
        unless note.to.is_a?(Symbol)
          target_key = ensure_send_to(:friend, note.to)
        end
        url = "/send/message.#{self.superclass::FORMAT}"
        Note.instantiate post(url, {:body => note.body, :to => target_key || note.to})
      end
      
      def ensure_send_to(type, target)
        ensure_send_to_friends(target) if type.to_s == "friend"
        #ensure_send_to_sets(target) if type.to_s == "set"
      end
      
      private
      
      # Calls profiles for each target recipient. Pulls user's send_to list and verifies all are valid.
      # This double checks the users input, and also allows to call recipients by username, not id
      def ensure_send_to_friends(target)
        valid_targets = User.send_to["options"]["private_note"]
        target_key = "friend_#{User.find(target).id}"
        raise InvalidFriend, "You attempting to send a note to an invalid recipient" unless valid_targets.has_key?(target_key)
        target_key
      end

      def find_all_public(options)
        query = options.to_query
        url = "/note_lists.#{self.superclass::FORMAT}#{query}"
        request(url)["notes"].collect!{|note| Note.instantiate(note)}
      end
      
      def find_by_id(id, options)
        query = options.to_query
        url = "/notes/#{id}.#{self.superclass::FORMAT}"
        note = request(url)
        Note.instantiate(note)
      end
      
      def extract_attributes(args)
        args.last.is_a?(Hash) ? args.pop : {}
      end
    
    end
    
  end

end