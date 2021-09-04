def reg_scan_fun(input_str, reg_param)
  input_str.scan(/#{reg_param}/)
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

def show(arr)

  arr.each_with_index do |value, index|
    if index < arr.length - 1
      print "#{value},"
    else
      print "#{value}\n"
    end
  end
end

def main
  file_path = './task_2.html'
  input_str = read_file(file_path)

  if input_str.empty? == false
    pref = []
    city = []
    id = []
    content = []

    reg_param = '<a href=.+?pref=(?<pref>.*)&city=(?<city>.*)&id=(?<id>.*)">(?<content>.*)<\/a>'
    reg_result = reg_scan_fun(input_str, reg_param)

    reg_result.each_with_index do |value, index|
      pref.append(value[0])
      city.append(value[1])
      id.append(value[2])
      content.append(value[3])
    end

    puts '実行結果1'
    puts content

    puts '実行結果2'
    print 'pref='
    show(pref)

    print 'city='
    show(city)
  end
end

main
