require 'open-uri'
url = 'https://jp.reuters.com/article/tennis-djokovic-vaccines-idJPKBN2I503M'
html = URI.open(url) {|f|
  f.read

}

#記事のタイトル
str = html.scan(%r{<title>(.+?)</title>})
puts str

#本文(取得が難しい場合は、最初の数文字だけでも可)
str = html.scan(%r{<p class="Paragraph-paragraph-2Bgue ArticleBody-para-TD_9x">(.+?)</p>})
puts str

#記事の投稿日時（2021-11-20）
str = html.scan(%r{<meta name="sailthru.date" (.+?)/>})
puts str

