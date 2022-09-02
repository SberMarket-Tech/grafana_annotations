# frozen_string_literal: true

module GrafanaAnnotations
  class Annotation < Dry::Struct
    attribute? :dashboardUID, Types::Strict::String.optional
    attribute? :panelId, Types::Strict::String.optional
    attribute :time, Types::Strict::Integer.default { GrafanaAnnotations::Utils::Time.now_ms } # rubocop:disable Lint/AmbiguousBlockAssociation
    attribute? :timeEnd, Types::Strict::Integer
    attribute :tags, Types::Strict::Array.of(Types::Coercible::String)
    attribute :text, Types::Strict::String
  end
end
