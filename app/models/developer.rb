# Developers are users through account (polymorphic), they have many devprojects
class Developer < ApplicationRecord
  has_many :karma_question
  has_many :karma_comment
  has_one :user, :as => :account, dependent: :destroy
  has_many :developer_project
end
