module TurbosmsRuby
  class Client

    require "httparty"
    API_URL = 'https://api.turbosms.ua'
    attr_accessor :module_name, :method_name

    def send_message(phones,text)
      @module_name = 'message'
      @method_name = 'send.json'

      params = {
      recipients: phones,
      sms: {
          sender: ::TurbosmsRuby.config.sender,
          text: text
        }
      }
      response = post(params)
      JSON.parse(response.body)
    end

    private

    def http_api_url
      [API_URL, @module_name, @method_name].join('/')
    end

    def post(params)
      HTTParty.post(http_api_url,
                {
                  body: params,
                  headers: { 'Content-Type' => 'application/x-www-form-urlencoded',
                             'Authorization' => "Basic #{::TurbosmsRuby.config.token}" }
                })
              end
  end

end
