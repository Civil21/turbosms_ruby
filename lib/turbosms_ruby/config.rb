module TurbosmsRuby
  class Config
    attr_accessor :token, :sender

    def initialize
      @token = ENV['TURBOSMS_TOKEN']
      @sender = ENV['TURBOSMS_SENDER'] || 'IT Alarm'
    end
  end
end
