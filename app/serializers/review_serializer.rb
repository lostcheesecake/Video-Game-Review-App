# frozen_string_literal: true

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :video_game, :text
end
