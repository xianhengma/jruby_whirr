module JrubyWhirr
	class ClusterController
		java_import org.apache.whirr.ClusterController
		java_import org.apache.whirr.ClusterControllerFactory
		java_import org.apache.whirr.Cluster
		java_import org.apache.whirr.cli.command.RunScriptCommand
		java_import java.lang.System
		java_import org.jclouds.scriptbuilder.domain.Statements
		
		attr_accessor :controller, :spec, :cluster

		def initialize (cluster_spec)
			@spec = cluster_spec
			factory = ClusterControllerFactory.new;
			@controller = factory.create(cluster_spec.get_service_name)
		end

		def launch_cluster()
			@cluster = @controller.launchCluster(@spec.cluster_spec)
		end
		
		def destroy_cluster()
			@controller.destroyCluster(@spec.cluster_spec)
		end

		def run_script(spec, script, instances, roles)
			script_runner = RunScriptCommand.new
			script_runner.run(System.in, System.out, System.err, spec.cluster_spec, instances, roles, Statements.exec(script))
		end

		def run_script_in_file(sepc, file, instances, roles)
			script_runner = RunScriptCommand.new
			script_runner.run(System.in, System.out, System.err, spec.cluster_spec, instances, roles, file)
		end

	end
end
