require 'open-uri'

module Dexonline
  class Scrapper
    attr_reader :html

    DICTIONARY_URL = 'https://dexonline.ro/definitie/'

    def initialize(word)
      @html = extract_html_for(word)
    end

    def definitions
      return [] unless @html
      @html.css('.def').map(&:text)
    end

    private

    def extract_html_for(word)
      word_url = generate_url_for(word)
      Nokogiri::HTML(open(word_url))
    rescue OpenURI::HTTPError
      nil
    end

    def generate_url_for(word)
      "#{DICTIONARY_URL}#{word}"
    end
  end
end
