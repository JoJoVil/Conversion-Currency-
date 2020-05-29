#application environment

require 'bundler/setup'
Bundler.require(:default)


require_relative './conversion_rate_cli/cli.rb'
require_relative './conversion_rate_cli/api.rb'
require_relative './conversion_rate_cli/conversion_rate.rb'
