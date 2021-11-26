# http://jp.reuters.com/
#
require 'open-uri'
# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

def task
  # path = "https://jp.reuters.com/article/ecb-policy-lagarde-idJPL4N2SH3FV?il=0"
  puts 'jp.teuters.comのurlを入力してください'

  path = gets.to_s

  page = open(path, &:read)

  get_title(page)
  puts ""
  get_content(page)
  puts ""
  get_time(page)

end

def get_title(page)
  title = page.scan(%r!<h1 class=".+">(.+?)<\/h1>!)
  puts "タイトル：#{title[0][0]}"
end

def get_content(page)
  title = page.scan(%r!<p class="Paragraph.+?">(.+?)<\/p>!)
  print '本文: '
  title.each { |i| puts i }
end

def get_time(page)
  title = page.scan(%r!"updated_at":"(\d{4}-\d{2}-\d{2})T!)
  puts "日時：#{title[0][0]}"
end

task