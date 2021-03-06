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

class AddMissingIndexesToAttachments < ActiveRecord::Migration
  def self.up
    add_index :attachments, [:container_id, :container_type]
    add_index :attachments, :author_id
  end

  def self.down
    remove_index :attachments, :column => [:container_id, :container_type]
    remove_index :attachments, :author_id
  end
end
