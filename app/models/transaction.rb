class Transaction < ActiveRecord::Base
  extend EnumerateIt

  belongs_to :user
  validates :user_id, :way, :value, :date, presence: true
  has_enumeration_for :way, with: TransactionWay, create_helpers: { prefix: true }
end
