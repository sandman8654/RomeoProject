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

# Be sure to restart your server when you modify this file.

# These settings change the behavior of Rails 2 apps and will be defaults
# for Rails 3. You can remove this initializer when Rails 3 is released.

if defined?(ActiveRecord)
  # Include Active Record class name as root for JSON serialized output.
  ActiveRecord::Base.include_root_in_json = true

  # Store the full class name (including module namespace) in STI type column.
  ActiveRecord::Base.store_full_sti_class = true
end

ActionController::Routing.generate_best_match = true

# Use ISO 8601 format for JSON serialized times and dates.
ActiveSupport.use_standard_json_time_format = true

# Don't escape HTML entities in JSON, leave that for the #json_escape helper.
# if you're including raw json in an HTML page.
ActiveSupport.escape_html_entities_in_json = false
