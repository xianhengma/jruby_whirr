Dir.glob(File.join(ENV["WHIRR_HOME"], 'lib/*.jar')).each { |d| require d }

require "jruby_whirr/version"
require "jruby_whirr/cluster_controller"
require "jruby_whirr/cluster_spec"
require 'java'


module JrubyWhirr
  
end
