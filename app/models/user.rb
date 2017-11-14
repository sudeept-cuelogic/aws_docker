require 'elasticsearch/model'

class User < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :first_name, analyzer: 'english', index_options: 'offsets'
    end
  end

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  attr_accessor :service
end
