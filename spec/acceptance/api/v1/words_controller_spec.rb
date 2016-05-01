require 'acceptance_helper'

resource 'Words' do
  let(:word) { create(:word) }

  get 'api/v1/words' do
    example 'Listing Words' do
      do_request

      expect(status).to eq 200
    end
  end

  get 'api/v1/words/:name' do
    let(:name) { word.name }

    example_request 'Getting a specific Word' do
      expect_to_have_word_keys(JSON.parse(response_body))
      expect(status).to eq(200)
    end
  end

  private

  def expect_to_have_word_keys(driver)
    expect(driver).to have_key 'name'
  end
end
