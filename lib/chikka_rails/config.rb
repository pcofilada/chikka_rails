module ChikkaRails
  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Config.new
    yield(config)
  end

  class Config
    attr_accessor :client_id, :secret_key, :shortcode

    def initialize
      self.client_id = ''
      self.secret_key = ''
      self.shortcode = ''
    end
  end
end
