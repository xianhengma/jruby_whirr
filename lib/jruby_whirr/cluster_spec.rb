module JrubyWhirr
	class ClusterSpec
		java_import org.apache.whirr.ClusterSpec
		
		attr_accessor :cluster_spec

		#TODO: add methods for configuring the ClusterSpec

		def initialize (proerty_file_path)
			property_configuration = org.apache.commons.configuration.PropertiesConfiguration.new(proerty_file_path)
			@cluster_spec = ClusterSpec.new(property_configuration)
		end

		def get_service_name
			@cluster_spec.getServiceName()
		end
	end
end
