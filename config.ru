app = proc do |env|
  req = Rack::Request.new(env)
  puts req.body.read
  [200, {}, [""]]
end

run app
