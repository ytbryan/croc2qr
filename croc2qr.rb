require 'rqrcode'
require 'pty'

def wrap_croc_send(file_path)
  command = "croc send #{file_path}"
  puts "Running: #{command}"
  croc_code = ""

  PTY.spawn(command) do |stdout, stdin, pid|
    stdout.each do |line|
      puts line
      croc_code = line.split.last if line.include?('Code is:')
      if croc_code != ""
        qrcode = RQRCode::QRCode.new(croc_code)
        svg = qrcode.as_svg
        File.write("#{file_path}_qr.svg", svg)
      end    
    end
  end
end

file_path = ARGV[0]
if file_path.nil?
  puts "Please provide the file path."
  exit
end

wrap_croc_send(file_path)
