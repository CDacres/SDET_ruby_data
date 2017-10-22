require 'spec_helper'

describe 'JSON example tests' do

  before(:all) do
    @json = JSON.parse(File.read('json_example.json'))
  end

  it 'should have the key colour for each data object' do
    @json['colors'].each do |i|
      expect(i).to have_key('color')
    end
    # expect(@json['colors'][0]).to have_key('color')
    # expect(@json['colors'][1]).to have_key('color')
    # expect(@json['colors'][2]).to have_key('color')
    # expect(@json['colors'][3]).to have_key('color')
    # expect(@json['colors'][4]).to have_key('color')
    # expect(@json['colors'][5]).to have_key('color')
  end

  it "the colour red should have the hex value of '#FF0' " do
    # expect(@json['colors'][2]['code']['hex']).to eq('#FF0')


    @json['colors'].each do |i|
      if i["color"] == "red"
        expect(i["code"]["hex"]).to eq("#FF0")
      end
    end

  end

  it "the colour green should have the RGBA value of '0,255,0,1' " do
    # expect(@json['colors'][5]['code']['rgba']).to eq([0,255,0,1])

    @json['colors'].each do |i|
      if i["color"] == "green"
        expect(i["code"]["rgba"]).to eq([0,255,0,1])
      end
    end

  end

end
