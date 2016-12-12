class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    
    delegate :name, to: :user, prefix: true
end
