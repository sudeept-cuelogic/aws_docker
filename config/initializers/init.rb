ACCESS_KEY = Rails.application.secrets.access_key
SECRET_ACCESS_KEY = Rails.application.secrets.secret_access_key
AWS_ES_HOST = Rails.application.secrets.host_url
SEARCH_SERVICE = 'search'.freeze
CACHE_SERVICE = 'cache'.freeze
HOST_IP = Rails.application.secrets.host_ip
ELASTICSEARCH_HOST_URL = "http://#{HOST_IP}:9200".freeze
REDIS_HOST_URL = "http://#{HOST_IP}".freeze
