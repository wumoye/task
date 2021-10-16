def reg_scan_fun(input_str, reg_param)
  result_list = input_str.scan(/#{reg_param}/)
  result_list.each { |result| puts result }
end

def read_file(file_path)
  lines = ''
  begin
    file = File.open(file_path, 'r') do |file|
      file.each_line do |l|
        lines += l
      end
    end
  rescue StandardError => e
    puts 'Error:', e.to_s
  end
  lines
end

def main
  file_path = './task_1.html'
  input_str = read_file(file_path)

  if input_str != ''
    puts '実行結果1'
    reg_scan_fun(input_str, '<b>(.+?)</b>')
    puts '実行結果2'
    reg_scan_fun(input_str, '<p>(.+?)</p>')
  end
end

main
