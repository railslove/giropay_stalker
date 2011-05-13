# Giropay Stalker

Stalks Giropay to find out if a bank supports Giropay

## How To Install

    sudo gem install giropay_stalker

## Example

    gp = GiropayStalker::Scraper.new

    gp.supports(70070024)
    => false
    
    gp.supports(37050198)
    => true
  