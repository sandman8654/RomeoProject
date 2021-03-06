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

class AddViewIssuesPermission < ActiveRecord::Migration
  def self.up
    Role.find(:all).each do |r|
      r.add_permission!(:view_issues)
    end
  end

  def self.down
    Role.find(:all).each do |r|
      r.remove_permission!(:view_issues)
    end
  end
end
