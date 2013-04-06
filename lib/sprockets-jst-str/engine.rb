
module JstStr
  class Engine < ::Rails::Engine
    initializer "sprockets.jst_str", :after => "sprockets.environment", :group => :all do |app|
      next unless app.assets
      app.assets.register_engine(".str", StrTemplate)
    end
  end
end
