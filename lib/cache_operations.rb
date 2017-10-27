module CacheOperations
  class << self
    def redis_client
      @redis ||= Redis.new
    end

    def add_data(query_hash)
      query_hash.each do |key, val|
        redis_client.set(key, val)
      end
    end

    def retrieve_data(query_text)
      %w[first_name last_name email].each do |field|
        if redis_client.get(field) == query_text
          return {
            first_name: redis_client.get('first_name'),
            last_name: redis_client.get('last_name'),
            email: redis_client.get('email'),
            dob: redis_client.get('dob')
          }
        end
      end
    end
  end
end
