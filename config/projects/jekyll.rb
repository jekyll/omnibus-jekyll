#
# Copyright 2014 Parker Moore
#
# All Rights Reserved. MIT License.
#

name "jekyll"
maintainer "Parker Moore"
homepage "http://jekyllrb.com"

# Defaults to C:/jekyll on Windows
# and /opt/jekyll on all other platforms
install_dir "#{default_root}/#{name}"

build_version   "2.4.0"
build_iteration 1

resources_path 'resources'

# Creates required build directories
dependency "preparation"

# jekyll dependencies/components
override :ruby, version: "2.1.3"
override :rubygems, version: "2.4.1"
dependency "jekyll"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"

package :pkg do
  identifier 'com.jekyllrb.standalone'
end

compress :dmg do
  window_bounds '200, 200, 750, 600'
  pkg_position '10, 10'
end
