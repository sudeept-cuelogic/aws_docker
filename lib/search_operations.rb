module SearchOperations
  class << self
    def elastic_client
      @client ||= Elasticsearch::Client.new
    end

    def create_doc(doc, name = 'users-db', type = 'user')
      elastic_client.create(
        index: name,
        type: type,
        id: SecureRandom.uuid,
        body: doc
      )
    end

    def retrieve_doc(query_text, name = 'users-db', type = 'user')
      Hashie::Mash.new(
        elastic_client.msearch(
          body: [
            { index: name, type: type },
            { query: { query_string: { query: query_text } } }
          ]
        )
      ).responses.first.hits.hits
    end
  end
end
