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
  module Info
    class << self
      def app_name; 'RomeoProject' end
      def url; 'https://www.Romeoproject.org/' end
      def help_url
        "https://www.Romeoproject.org/help/v#{RomeoProject::VERSION::MAJOR.to_s}"
      end
      def versioned_name; "#{app_name} #{Redmine::VERSION}" end

      # Creates the url string to a specific Redmine issue
      def issue(issue_id)
        url + 'issues/' + issue_id.to_s
      end
    end
  end
end