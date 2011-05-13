module GiropayStalker
  class Scraper
        
    def supported?(bank_code)      
      page = agent.get("http://www.giropay.de/index.php?id=banken_check")
      blz_form = page.form("searchform")

      # paste the bank code into the form
      blz_form.fields[0].value = bank_code

      # we have to reset the form action explicit to the url, empty action tag won't work
      blz_form.action = "http://www.giropay.de/index.php?id=banken_check"

      page = blz_form.click_button
      
      # check if the giropay logo is present
      page.search(".//img[@src='typo3conf/ext/sf_giropay_contact/pi5/gplogo.gif']").any?
    end  

    def log
      @log ||= Logger.now
    end  

    def agent
      @agent ||= Mechanize.new
    end
  end
end
