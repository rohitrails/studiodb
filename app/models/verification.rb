class Verification < ApplicationRecord
  belongs_to :user
  enum kind: %I[email mobile]
end
