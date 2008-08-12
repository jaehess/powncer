module Powncer
  
  class User < Base

    attr_accessor :_username
    
    def initialize(*args)
      attributes = extract_attributes(args)
      @_username = args.first
      @attributes = attributes
    end
    
    def is_pro?
      self.is_pro
    end
    
    def profile
      url = "/users/#{@_username}.#{FORMAT}"
      user = request(url)
      self.class.instantiate(user)
    end
    
    def friends
      url = "/users/#{@_username || self.username}/friends.#{FORMAT}"
      request(url)["friends"]["users"].collect!{|user| self.class.instantiate(user)}
    end
    
    def fans
      url = "/users/#{@_username || self.username}/fans.#{FORMAT}"
      users = request(url)["fans"]["users"].collect!{|user| self.class.instantiate(user)} 
    end
    
    def fan_of
      url = "/users/#{@_username || self.username}/fan_of.#{FORMAT}"
      request(url)["fan_of"]["users"].collect!{|user| self.class.instantiate(user)} 
    end
    
    def notes
      url = "/note_lists/#{@_username || self.username}.#{FORMAT}?filter=notes"
      request(url)["notes"].collect!{|note| Note.instantiate(note)}
    end
    
    def messages
      url = "/note_lists/#{@_username || self.username}.#{FORMAT}?type=messages"
      request(url)["notes"].collect!{|note| Note.instantiate(note)}
    end
    
    def links
      url = "/note_lists/#{@_username || self.username}.#{FORMAT}?type=links"
      request(url)["notes"].collect!{|note| Link.instantiate(note)}
    end
    
    def events
      url = "/note_lists/#{@_username || self.username}.#{FORMAT}?type=events"
      request(url)["notes"].collect!{|note| Event.instantiate(note)}
    end
    
    def send_to
      self.class.send_to
    end
    
    class << self
      
      def find(username)
        url = "/users/#{username}.#{self.superclass::FORMAT}"
        user = self.superclass.request(url)
        instantiate(user)
      end
      
      def send_to
        url = "/send/send_to.#{self.superclass::FORMAT}"
        request(url)
      end
    
    end
    
  end

end