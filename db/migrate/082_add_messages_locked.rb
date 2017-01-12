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

class AddMessagesLocked < ActiveRecord::Migration
  def self.up
    add_column :messages, :locked, :boolean, :default => false
  end

  def self.down
    remove_column :messages, :locked
  end
end
