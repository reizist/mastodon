# frozen_string_literal: true
# == Schema Information
#
# Table name: account_domain_blocks
#
#  id         :integer          not null, primary key
#  account_id :integer
#  domain     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AccountDomainBlock < ApplicationRecord
  include Paginable

  belongs_to :account, required: true
  validates :domain, presence: true, uniqueness: { scope: :account_id }

  after_create  :remove_blocking_cache
  after_destroy :remove_blocking_cache

  private

  def remove_blocking_cache
    Rails.cache.delete("exclude_domains_for:#{account_id}")
  end
end
