module TurbosmsRuby
  class TurbosmsRuby
    attr_reader :client

    def initialize(_options = {})
      @client = ::TurbosmsRuby.client
      # TODO: send request and check balance
      # message if balance small
    end

    def send_message(phones, text)
      phones = phones.map { |phone| phone_to_standart(phone) }
      client.send_message(phones, text)
    end

    def config
      @config ||= ::TurbosmsRuby.config
    end

    private

    def phone_to_standart(phone)
      replacements = {
        '+' => '', ')' => '',
        '(' => '', '-' => ''
      }
      phone.gsub(Regexp.union(replacements.keys), replacements)
    end
  end
end
