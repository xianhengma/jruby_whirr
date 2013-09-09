module JrubyWhirr
	class Cluster
		java_import org.apache.whirr.Cluster

		attr_accessor :cluster 

		def initialize (cluster)
			@cluster = cluster
		end

		#Get a set of Instances in the cluster
		def get_instances
			@cluster.getInstances()
		end

		def get_configuration
			@cluster.getConfiguration()
		end

	end
end
