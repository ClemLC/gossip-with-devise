# == Schema Information
#
# Table name: moussaillons
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#

class Moussaillon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :sign_up_code
    validates :sign_up_code,
      on: :create,
      presence: true,
      inclusion: { in: ["da_code"] }

  has_many :gossips

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
