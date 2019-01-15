Instrument example Flask app using DD's APM solution:
Note: Using both ddtrace-run and manually inserting the Middleware has been known to cause issues. Please only use one or the other.

My Deployment Instructions:
1.) docker build -t flaskapp:latest .
2.) sudo docker run -d --name flask_app --network <Specify_same_network_as_dd_agent> -p 5050:5050 flaskapp

Check Containers attached to Network:

docker network inspect postgres-network |jq .[0] |jq .Containers[].Name
