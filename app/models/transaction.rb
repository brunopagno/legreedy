class Transaction < ActiveRecord::Base
  extend EnumerateIt

  belongs_to :user
  validates :user_id, :type, :value, :date, presence: true
  has_enumeration_for :type, with: TransactionType
end
