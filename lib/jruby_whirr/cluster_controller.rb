module JrubyWhirr
	class ClusterController
		java_import org.apache.whirr.ClusterController
		java_import org.apache.whirr.ClusterControllerFactory
		java_import org.apache.whirr.Cluster
		
		attr_accessor :controller, :spec, :cluster

		def initialize (cluster_spec)
			@spec = cluster_spec
			factory = ClusterControllerFactory.new;
			@controller = factory.create(cluster_spec.get_service_name)
		end

		def launch_cluster()
			@cluster = @controller.launchCluster(@spec)
		end
		
	end
end
