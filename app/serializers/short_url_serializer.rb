# frozen_string_literal: true

# Serializes ShortUrls
class ShortUrlSerializer < ActiveModel::Serializer
  attributes :startDate, :redirectCount, :lastSeenDate

  def startDate
    iso_date(object.start_date)
  end

  def redirectCount
    object.redirect_count
  end

  def lastSeenDate
    return if object.last_seen_date.blank?
    iso_date(object.last_seen_date)
  end

  def iso_date(date)
    date.iso8601
  end
end
