class Account < ApplicationRecord
    validates :account_code, presence: true
    validates :name, presence: true

end