require 'net/http'
desc "Keep Alive"
task :keep_alive do
  begin
    uri = URI("http://the-bull.herokuapp.com")

    # Create client
    http = Net::HTTP.new(uri.host, uri.port)

    # Create Request
    req =  Net::HTTP::Get.new(uri)

    # Fetch Request
    res = http.request(req)

    if res.code == "200"
      puts "Success, the site sent back the following code: #{res.code}"
    else
      puts "Error, the site sent back the following code: #{res.code}"
    end
  rescue StandardError => e
    puts "Keep Alive Failed (#{e.message})"
  end
end
