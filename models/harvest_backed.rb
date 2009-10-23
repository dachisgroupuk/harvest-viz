require 'httparty'
class HarvestBacked
  class Api
    CONF = YAML.load_file(File.join(::LOAD_PATH, 'conf', 'harvest.yaml'))
    include HTTParty
    format :json
    base_uri CONF[:domain]
    default_params :output => 'json'
    basic_auth CONF[:username], CONF[:password]
  end
  
  class << self
  
    def all
      raise NotImplementedError
    end
  
    def find
      raise NotImplementedError
    end
  
    def init_from_json
      raise NotImplementedError
    end
  
  end
end