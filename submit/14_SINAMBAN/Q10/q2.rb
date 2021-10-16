require_relative 'Scanner'

scanner = Scanner.new

begin

  a_tag_texts = []
  pref = []
  city = []

  html = File.open('./2.html')
  html.each_line do |line|
    a_tag_texts.concat scanner.extract_a_tag_text(line)
    pref.concat scanner.extract_href_pref_param(line)
    city.concat scanner.extract_href_city_param(line)
  end

  a_tag_texts.each do |text| p text end

  p 'pref=' + pref.join(',')
  p 'city=' + city.join(',')

rescue => e
  p e
ensure
  html.close
end