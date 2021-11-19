require "turbosms_ruby"

module TurbosmsRuby
  RSpec.describe ::TurbosmsRuby::Client do
    before :each do
      ::TurbosmsRuby.config
      @client = ::TurbosmsRuby.client
    end

    it 'test url' do
      @client.module_name = 'message'
      @client.method_name = 'send.json'
      expect(@client.module_name).to eq "message"
      expect(@client.method_name).to eq "send.json"
      # expect(@client.http_api_url).to eq "https://api.turbosms.ua/message/send.json"
    end

  end
end
