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

class Member < ActiveRecord::Base
  generator_for :roles, :method => :generate_roles
  generator_for :principal, :method => :generate_user

  def self.generate_roles
    [Role.generate!]
  end

  def self.generate_user
    User.generate_with_protected!
  end
end
