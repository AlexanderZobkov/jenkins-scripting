import jenkins.model.*

Jenkins jenkinsInstance = jenkins.model.Jenkins.instance

println 'Hello world!'

for(job in jenkinsInstance.items){
    println job.name
}
