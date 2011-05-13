# Giropay Stalker

Stalks Giropay to find out if a bank supports Giropay

## How To Install

    sudo gem install giropay_stalker

## Example

    gp = GiropayStalker::Scraper.new

    gp.supported?(70070024)
    => false
    
    gp.supported?(37050198)
    => true
  