$:.unshift(File.expand_path("../", __FILE__))

# Gems
require "nokogiri"
require "httparty"

# Local files
require "giropay_stalker/scraper"

module GiropayStalker
end