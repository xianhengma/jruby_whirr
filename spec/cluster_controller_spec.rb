require 'spec_helper'

describe JrubyWhirr::ClusterController do

	describe ".new" do
		it "should return JrubyWhirr::ClusterController" do
			spec = JrubyWhirr::ClusterSpec.new("hadoop.properties")
			JrubyWhirr::ClusterController.new(spec).should be_an_instance_of JrubyWhirr::ClusterController
		end
	end
end