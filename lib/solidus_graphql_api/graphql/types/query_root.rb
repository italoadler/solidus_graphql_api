# frozen_string_literal: true
module Spree::GraphQL::Types::QueryRoot

  # articles: List of the shop's articles.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @param sort_key [Types::ArticleSortKeys] ('ID') Sort the underlying list by the given key.
  # @param query [Types::String] (nil) Supported filter parameters:  - `author`  - `updated_at`  - `created_at`  - `blog_title`  - `tag` See the detailed [search syntax](https://help.solidus.io/api/getting-started/search-syntax).
  # @return [Types::Article.connection_type!]
  def articles(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # blogByHandle: Find a blog by its handle.
  # @param handle [Types::String!] The handle of the blog.
  # @return [Types::Blog]
  def blog_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # blogs: List of the shop's blogs.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @param sort_key [Types::BlogSortKeys] ('ID') Sort the underlying list by the given key.
  # @param query [Types::String] (nil) Supported filter parameters:  - `handle`  - `title`  - `updated_at`  - `created_at` See the detailed [search syntax](https://help.solidus.io/api/getting-started/search-syntax).
  # @return [Types::Blog.connection_type!]
  def blogs(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # customer
  # @param customer_access_token [Types::String!] The customer access token
  # @return [Types::Customer]
  def customer(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # shop
  # @return [Types::Shop!]
  def shop()
    context[:current_store]
  end
end
