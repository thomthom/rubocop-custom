require 'rubocop'
require 'rubocop/custom/version'

if defined?(::Rails::Engine)
  require 'rubocop/custom/railtie'
else
  fail 'Requires Rails'
end
