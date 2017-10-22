require 'spec_helper'

describe 'Validate fixer fields' do

  before(:all) do
    # @json = JSON.parse(File.read('fixer.json'))
    @json = JSON.parse(HTTParty.get('http://api.fixer.io/latest').body)
  end

  it 'should have a base key' do
    expect(@json).to have_key('base')
  end

  it 'should have a date key' do
    expect(@json).to have_key('date')
  end

  it 'should have a rates key' do
    expect(@json).to have_key('rates')
  end

  it 'should the rates key-value pair have a value of a hash' do
    expect(@json['rates']).to be_a(Hash)
  end

  it 'should have floats as the values for each key-value pair in rates' do
    @json['rates'].each do |key,value|
      expect(value).to be_a(Float)
    end
  end

  it 'should have euros as the base' do
    expect(@json['base']).to eq('EUR')
  end

end
