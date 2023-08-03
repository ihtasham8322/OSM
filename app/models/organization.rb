class Organization < ApplicationRecord
    validates :subdomain, presence: true

    validates :subdomain, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: true }
end
