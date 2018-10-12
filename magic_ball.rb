def reed_from_file(file_name)
  current_path = File.dirname(__FILE__)
  file_path = "#{current_path}/data/#{file_name}.txt"
  begin
    f = File.open(file_path, "r:UTF-8")
  rescue Errno::ENOENT
    abort "файл #{file_name}.txt не найден"
  end
  content = f.readlines
  f.close
  content
end

puts reed_from_file("greeting").sample
sleep(3)
puts
puts reed_from_file("answers").sample

