def bRegex(html) 
  html.scan(/<b>(.+?)<\/b>/).map do |match| match.first end
end

def pRegex(html) 
  html.scan(/<p>(.+?)<\/p>/).map do |match| match.first end
end

begin

  bTags = []
  pTags = []

  html = File.open('q10-1.html')
  html.each_line do |line|
    bTags.concat bRegex(line)
    pTags.concat pRegex(line)
  end

  bTags.each do |text| p text end
  pTags.each do |text| p text end
  
rescue => e
  p e
ensure
  html.close
end