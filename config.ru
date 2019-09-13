app = proc do |env|
  req = Rack::Request.new(env)
  headers = env.select {|k,v| k.start_with? 'HTTP_'}
    .map {|key, val| [key.sub(/^HTTP_/, ''), val]}
    .map {|key, val| "#{key}: #{val}<br>"}

  p headers
  p req.body.read
  [200, {}, [""]]
end

run app
