class Comment < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text,
   against: {
    user: 'A',
    description: 'B',
    }
end
