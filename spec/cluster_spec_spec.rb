require 'spec_helper'

describe JrubyWhirr::ClusterSpec do
	describe ".new" do
		context "with valid arguments" do
			it "should return ClusterSpec" do
				JrubyWhirr::ClusterSpec.new("hadoop.properties").should be_an_instance_of JrubyWhirr::ClusterSpec
			end
		end
	end

end