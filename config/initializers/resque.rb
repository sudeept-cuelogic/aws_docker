# Run redis server on local using redis-server and then set redis URL here
URL = 'http://127.0.0.1:6379'.freeze
uri = URI.parse(URL)

# Start resque with redis
Resque.redis = Redis.new(host: uri.host, port: uri.port, thread_safe: true)
