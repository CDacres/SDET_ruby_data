require 'nokogiri'

xml = Nokogiri::XML(open('xml_menu.xml'))

# xml.search('price').each do |p|
#   puts p.text
# end

# xml.search('price').each do |p|
#   puts p.parent.text
# end

# xml.search('food').each do |p|
#   puts p.children
# end
#
# puts xml.xpath('//price').text

# xml.xpath('//price').each do |p|
#   puts p.text.gsub('£','').to_f
# end

xml.xpath('//breakfast_menu/food/description').each do |i|
  p i.text
end
