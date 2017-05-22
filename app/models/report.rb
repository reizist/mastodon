# frozen_string_literal: true
# == Schema Information
#
# Table name: reports
#
#  id                         :integer          not null, primary key
#  account_id                 :integer          not null
#  target_account_id          :integer          not null
#  status_ids                 :integer          default(0), not null
#  comment                    :text(65535)
#  action_taken               :boolean          default(FALSE), not null
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  action_taken_by_account_id :integer
#

class Report < ApplicationRecord
  belongs_to :account
  belongs_to :target_account, class_name: 'Account'
  belongs_to :action_taken_by_account, class_name: 'Account'

  default_value_for :comment, value: '', allows_nil: false # MySQL can not have default to text
  
  serialize :status_ids, Array

  scope :unresolved, -> { where(action_taken: false) }
  scope :resolved,   -> { where(action_taken: true) }

  def statuses
    Status.where(id: status_ids)
  end

  def media_attachments
    MediaAttachment.where(status_id: status_ids)
  end
end
