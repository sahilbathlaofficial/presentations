class Article < ActiveRecord::Base
  belongs_to :author
  include ThinkingSphinx::Scopes

  sphinx_scope(:latest_first) {
    {:order => 'created_at DESC'}
  }
end
