class Post < ApplicationRecord

    validates :title, presence: true

    after_create_commit {broadcast_prepend_to "posts"}
    after_destroy_commit {broadcast_remove_to "posts"}
end
