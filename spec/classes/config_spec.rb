require "turbosms_ruby"

module TurbosmsRuby
  RSpec.describe ::TurbosmsRuby::Config do
    before :each do
      ::TurbosmsRuby.configure do |c|
        c.token = 'token'
        c.sender = 'sender'
      end
    end

    it 'should have tokentoken' do
      ::TurbosmsRuby.configure do |c|
        c.token = 'token'
      end
      expect(::TurbosmsRuby.config.token).to eq 'token'
    end

    it 'should have sender' do
      ::TurbosmsRuby.configure do |c|
        c.sender = 'CyberSpells'
      end
      expect(::TurbosmsRuby.config.sender).to eq 'CyberSpells'
    end

    it 'should reflect changes through block' do
      ::TurbosmsRuby.configure do |c|
        c.token = "token2"
        c.sender = "CyberSpells"
      end
      expect(::TurbosmsRuby.config.token).to eq "token2"
      expect(::TurbosmsRuby.config.sender).to eq "CyberSpells"
    end
  end
end
