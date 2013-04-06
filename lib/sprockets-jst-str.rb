
require 'sprockets-jst-str/version'

module SprocketsJstStr

  autoload(:StrTemplate, 'sprockets-jst-str/str_template')

  if defined?(Rails)
    require 'sprockets-jst-str/engine'
  else
    require 'sprockets'
    Sprockets.register_engine ".str", StrTemplate
  end
end
