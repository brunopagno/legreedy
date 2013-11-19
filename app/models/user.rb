class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :name, :email, presence: true
  has_many :transactions

  def on(year, month)
    transactions.where('extract(year from date) = ?', year).where('extract(month from date) = ?', month)
  end

  def months
    transactions.map(&:date).uniq(&:month).sort.reverse
  end
end
