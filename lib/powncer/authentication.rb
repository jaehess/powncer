module Powncer

  module Authentication

    class Basic < Connection
      
      attr_accessor :options
      
      def initialize(options={})
        super(true)
        options[:username]        ||= Basic.load_username
        options[:password]        ||= Basic.load_password
        options[:application_key] ||= Basic.load_application_key
        options[:secret_key]      ||= Basic.load_secret_key
        @options = options
        Powncer.connections << self
      end
      
      def get(uri)
        super(uri, true)
      end
      
      def post(uri, params={})
        # TODO: Refactor
        endpoint = "#{@url}#{uri}"
        url = URI.parse(endpoint)
        req = Net::HTTP::Post.new(url.path)
        req.basic_auth(options[:username], options[:password])
        # create hash to add Link, Event params to request
        form_params = {}
        form_params.merge!({'note_body' => params[:body]}) if params[:body]
        form_params.merge!({'url' => params[:url]}) if params[:url]
        form_params.merge!({'event_name' => params[:name]}) if params[:name]
        form_params.merge!({'event_location' => params[:location]}) if params[:location]
        form_params.merge!({'event_date' => params[:date]}) if params[:date]
        form_params.merge!({'media_file' => params[:data]}) if params[:data]
        #req.set_content_type('multipart/form-data')
        req.set_form_data({'app_key' => options[:application_key], 'note_to' => "#{params[:to]}"}.merge(form_params))
        response = Net::HTTP.new(url.host, url.port).start { |http| http.request(req) }
        response.body
      end
      
      class << self
        
        [:username, :password, :application_key, :secret_key].each do |type|
          class_eval(<<-EVAL, __FILE__, __LINE__)
            def load_#{type}
              env_key(:#{type})
            end
          EVAL
        end
        
        def connect!(options={})
          self.new(options)
        end
        
        def open(uri, options, *args, &block)
          query_params = URI.parse(uri).query
          headers = {}
          headers["Authorization"] = Header.new(options[:username], options[:password])
          uri << "#{query_params.nil? ? "?" : "&"}"
          uri << "app_key=#{options[:application_key]}"
          Kernel::open(uri, headers, *args, &block)
        end
        
        def env_key(key_name)
          ENV["POWNCER_#{key_name.to_s.upcase}"]
        end
        
      end
      
      class Header < String
        
        def initialize(username, password)
          self << "Basic #{Base64.encode64("#{username}:#{password}")}"
        end
      
      end
      
    end
    
  end

end