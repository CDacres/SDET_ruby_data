require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    @xml_menu.search('price').each do |i|
       expect(i.text.gsub('£','').to_f).to be <= 10
     end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.search('calories').each do |i|
      unless i.parent.first_element_child.text == 'Full Breakfast'
        expect(i.text.to_i).to be <= 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.search('description').each do |i|
      if i.parent.first_element_child.text.include? 'Waffles'
        expect(i.text).to include('Two')
      end
    end
  end

  it "should add 'comes with free coffee' if over £6" do
    @xml_menu.search('price').each do |i|
      if i.text.gsub('£','').to_f > 6
        p i.next_element.text
        desc = i.next_element.text
        i.next_element.content = desc + ', comes with free coffee'
        p i.next_element.text
      end
    end
  end

end
