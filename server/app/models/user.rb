class User < ApplicationRecord
  has_many :logs
  has_many :wines, through: :logs
end
