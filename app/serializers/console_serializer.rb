# frozen_string_literal: true

class ConsoleSerializer < ActiveModel::Serializer
  attributes :id, :system, :text
end
