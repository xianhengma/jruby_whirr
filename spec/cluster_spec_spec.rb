require 'spec_helper'

describe JrubyWhirr::ClusterSpec do
	describe ".new" do
		it "should return JrubyWhirr::ClusterSpec" do
			JrubyWhirr::ClusterSpec.new("hadoop.properties").should be_an_instance_of JrubyWhirr::ClusterSpec
		end
	end

	describe ".set_service_name and get_service_name" do
		it "should set the service name of a cluster spec" do
			spec = JrubyWhirr::ClusterSpec.new("hadoop.properties")
			name = "hadoop_service"
			spec.set_service_name(name)
			spec.get_service_name.should eq name
		end
	end

end