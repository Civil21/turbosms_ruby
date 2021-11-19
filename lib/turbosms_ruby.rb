# frozen_string_literal: true

require_relative 'turbosms_ruby/version'
require "turbosms_ruby/config"
require "turbosms_ruby/client"
require "turbosms_ruby/turbo_sms"

module TurbosmsRuby
  class Error < StandardError; end
  # Your code goes here...

  def self.config
    @config ||= ::TurbosmsRuby::Config.new
  end

  def self.configure
    yield config
    @config
  end

  def self.client
    @client ||= ::TurbosmsRuby::Client.new
  end

  def self.new(*options)
    ::TurbosmsRuby::TurbosmsRuby.new(*options)
  end
end
