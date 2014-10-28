module GiropayStalker
  class Scraper

    def supported?(bank_code)
      page = Nokogiri::HTML(HTTParty.post("http://www.giropay.de/fuer-kaeufer/giropay-fuer-kaeufer/banken-check.html", :body => {"tx_sfbankencheck_pi1[bank_search][sword]" => bank_code}))

      page.xpath('//*[text()="nimmt an giropay teil"]').any?
    end
  end
end
