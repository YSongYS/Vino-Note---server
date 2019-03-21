class Log < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :look
  belongs_to :smell
  belongs_to :taste
end
