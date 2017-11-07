module SearchOperations
  class << self
    def elastic_client(host = ELASTICSEARCH_HOST_URL)
      @client ||= Elasticsearch::Client.new host: host
    end

    def create_doc(doc, name = 'users-db', type = 'user')
      elastic_client unless @client
      @client.create(
        index: name,
        type: type,
        id: SecureRandom.uuid,
        body: doc
      )
    end

    def retrieve_doc(query_text, name = 'users-db', type = 'user')
      elastic_client unless @client
      Hashie::Mash.new(
        @client.msearch(
          body: [
            { index: name, type: type },
            { query: { query_string: { query: query_text } } }
          ]
        )
      )&.responses&.first&.hits&.hits
    end
  end
end
