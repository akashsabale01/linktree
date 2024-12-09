class Tree < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user

  validates :name, presence: true
  validates :instagram, presence: true, format: {with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])} \z/, message: "Invalid URL format"}
  validates :x, presence: true, format: {with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])} \z/, message: "Invalid URL format"}
  validates :youtube, presence: true, format: {with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])} \z/, message: "Invalid URL format"}

end
