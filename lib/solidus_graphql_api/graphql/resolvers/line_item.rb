module Spree
  module GraphQL
    module Resolvers
      class LineItem
        class ByOrder
          def self.call(obj, args, ctx)
            Spree::LineItem.find_by_order_id(obj.id)
          end
        end
      end
    end
  end
end
