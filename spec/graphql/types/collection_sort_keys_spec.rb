# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CollectionSortKeys' do
    let!(:collection_sort_keys) { create(:collection_sort_keys) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }
  end

  # Sort keys are tested as part of Collection
end
