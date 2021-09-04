require_relative 'Scanner'

scanner = Scanner.new

begin
  
  b_tags = []
  p_tags = []

  html = File.open('1.html')
  html.each_line do |line|
    b_tags.concat scanner.extract_b_tag_text(line)
    p_tags.concat scanner.extract_p_tag_text(line)
  end

  b_tags.each do |text| p text end
  p_tags.each do |text| p text end
  
rescue => e
  p e
ensure
  html.close
end
