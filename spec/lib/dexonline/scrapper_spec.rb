require 'rails_helper'

RSpec.describe Dexonline::Scrapper do
  describe '#definitions' do
    it 'returns an array of defintions' do
      word = Dexonline::Scrapper.new('maine')
      definitions = word.definitions
      expect(definitions.length).to eq 20
    end

    it 'returns an empty array for a unexistant word' do
      word = Dexonline::Scrapper.new('AASDSC')
      definitions = word.definitions
      expect(definitions).to eq []
    end
  end
end
