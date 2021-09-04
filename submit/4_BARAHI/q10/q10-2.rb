def anchor(html)
  html.scan(/<[a][^>]*>(.+?)<\/[a]>/).map do |match| match.first end
end

def prefs(html)
  html.scan(/city=(\d+)/).map do |match| match.first end
end

def cities(html)
  html.scan(/pref=(\d+)/).map do |match| match.first end
end

begin

  aTags = []
  pref = []
  city = []

  html = File.open('q10-2.html')  
  html.each_line do |line|
    aTags.concat anchor(line)
    pref.concat prefs(line)
    city.concat cities(line)
  end

  aTags.each do |text| p text end

  p 'pref=' + pref.join(',')
  p 'city=' + city.join(',')

rescue => e
  p e
ensure
  html.close
end 