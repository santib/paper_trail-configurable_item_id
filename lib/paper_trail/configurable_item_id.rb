# frozen_string_literal: true

require 'paper_trail'
require 'paper_trail/configurable_item_id/model_config'
require 'paper_trail/configurable_item_id/version'

module PaperTrail
  module ConfigurableItemId
  end

  class ModelConfig
    prepend ::PaperTrail::ConfigurableItemId::ModelConfig
  end
end
