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

		def get_private_key ()
			@cluster_spec.getPrivatekey()
		end

		def set_cluster_user ()
			@cluster_spec.getClusterUser()
		end

		def set_provider()
			@cluster_spec.getProvider()
		end

		def set_service_name (name)
			@cluster_spec.setServiceName(name)
		end

		def set_public_key (public_key)
			@cluster_spec.setPublicKey(public_key)
		end

		def set_private_key (private_key)
			@cluster_spec.setPrivatekey(private_key)
		end

		def set_cluster_user (user)
			@cluster_spec.setClusterUser(user)
		end

		def set_provider(provider)
			@cluster_spec.setProvider(provider)
		end


		
	end
end
