class Scanner
  def extract_b_tag_text(string)
    string.scan(/<b>(.+?)<\/b>/).map do |match| match.first end
  end

  def extract_p_tag_text(string)
    string.scan(/<p>(.+?)<\/p>/).map do |match| match.first end
  end

  def extract_a_tag_text(string)
    string.scan(/<[a][^>]*>(.+?)<\/[a]>/).map do |match| match.first end
  end

  def extract_href_city_param(string)
    string.scan(/city=(\d+)/).map do |match| match.first end
  end

  def extract_href_pref_param(string)
    string.scan(/pref=(\d+)/).map do |match| match.first end
  end

end