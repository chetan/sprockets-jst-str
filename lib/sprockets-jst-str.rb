
require 'jst_str/version'

module JstStr

  autoload(:StrTemplate, 'jst_str/str_template')

  if defined?(Rails)
    require 'jst_str/engine'
  else
    require 'sprockets'
    Sprockets.register_engine ".str", StrTemplate
  end
end
