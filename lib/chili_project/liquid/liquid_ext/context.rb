#-- encoding: UTF-8
#-- copyright
# RomeoProject is a project management system.
#
# Copyright (C) 2010-2013 the RomeoProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

module RomeoProject
  module Liquid
    module LiquidExt
      module Context
        def self.included(base)
          base.send(:include, InstanceMethods)
          base.class_eval do
            alias_method_chain :handle_error, :formatting
          end
        end

        module InstanceMethods
          def handle_error_with_formatting(e)
            error = handle_error_without_formatting(e)
            escaped_error = registers[:view].send(:h, error) rescue CGI::escapeHTML(error)

            html = '<div class="flash error">' + escaped_error + '</div>'
            html_result(html)
          end

          def html_result(html)
            key = nil
            while key.nil? || html_results.has_key?(key)
              random = ActiveSupport::SecureRandom.hex(10)
              # This string must be passed untouched through Liquid and textile
              # It mustn't be changed in any way by any rendering stage.
              key = "!!html_results.#{random}!!"
            end
            html_results[key] = html
            key
          end

          def html_results
            registers[:html_results] ||= {}
          end

          def cacheable?
            registers.has_key?(:cachable) ? !!registers[:cachable] : true
          end

          def not_cachable!
            registers[:cachable] = false
          end
        end
      end
    end
  end
end