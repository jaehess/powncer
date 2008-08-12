# :stopdoc:
class Hash
  def to_query
    query_string = self.empty? ? "" : "?"
    query_array = []
    self.map.each{|ary| query_array << "#{ary.first}=#{ary.last}"}
    query_string << query_array.join("&")
  end
  def stringify_keys
    inject({}) do |options, (key, value)|
      options[key.to_s] = value
      options
    end
  end
  def stringify_keys!
    self.replace(self.stringify_keys)
  end
  def symbolize_keys
    inject({}) do |options, (key, value)|
      options[key.to_sym || key] = value
      options
    end
  end
  def symbolize_keys!
    self.replace(self.symbolize_keys)
  end
end

class String
  def is_valid_url?
    return true if self =~ /http\:\/\//
  end
  def is_valid_date?
    return !/\d{4}\-\d{2}\-\d{2}\s\d{2}\:\d{2}/.match(self).nil?
  end
end

module Kernel
  def require_library_or_gem(library)
    require library
  rescue LoadError => library_not_installed
    begin
      require 'rubygems'
      require library
    rescue LoadError
      raise library_not_installed
    end
  end
end

module Net
  module HTTPHeader
    def set_form_data(params, sep = '&')
      self.body = params.map {|k,v| "#{urlencode(k.to_s)}=#{urlencode(v.to_s)}" }.join(sep)
      self.content_type ||= 'application/x-www-form-urlencoded'
    end
  end
end