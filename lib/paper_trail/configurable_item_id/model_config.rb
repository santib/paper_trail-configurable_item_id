# frozen_string_literal: true

module PaperTrail
  module ConfigurableId
    module ModelConfig
      def primary_key_for_has_many_versions
        @model_class.paper_trail_options[:id_key] || @model_class.primary_key
      end
    end
  end
end
