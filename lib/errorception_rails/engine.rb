module ErrorceptionRails
  class Engine < ::Rails::Engine
    config.errorception = ActiveSupport::OrderedOptions.new
    config.errorception.enabled = false
    config.errorception.api_key = nil
  end
end
