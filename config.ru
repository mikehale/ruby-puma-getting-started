$stdout.sync = $stderr.sync = true
app = proc do |env|
  puts "app=ruby-puma-getting-started"
  body = 'Hello, World!'
  [200, { 'Content-Type' => 'text/plain', 'Content-Length' => body.length.to_s }, [body]]
end

run app
