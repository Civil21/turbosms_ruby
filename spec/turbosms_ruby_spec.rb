require 'dotenv'
Dotenv.load

RSpec.describe TurbosmsRuby do
  it "has a version number" do
    expect(TurbosmsRuby::VERSION).not_to be nil
  end
end
