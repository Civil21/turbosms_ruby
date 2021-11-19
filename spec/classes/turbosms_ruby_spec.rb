require "turbosms_ruby"

module TurbosmsRuby
  RSpec.describe ::TurbosmsRuby::TurbosmsRuby do
    before :each do
      @turbosms = ::TurbosmsRuby.new
      ::TurbosmsRuby.configure do |c|
        c.token = ENV["TURBOSMS_TOKEN"]
        # c.sender = ENV["TURBOSMS_SENDER"]
      end
    end

    it "test send message" do
      expect(@turbosms.send_message(["380663477974"],"test send message")["response_code"]).to eq(801)
    end

  end
end
