import ballerina/http;
import ballerina/time;

// HTTP service that provides a simple API endpoint
service / on new http:Listener(servicePort) {
    
    // Simple GET endpoint that returns a basic response
    resource function get simple() returns SimpleResponse {
        string currentTime = time:utcToString(time:utcNow());
        
        SimpleResponse response = {
            message: "Hello! This is a simple API response.",
            status: 200,
            timestamp: currentTime
        };
        
        return response;
    }
    
    // Health check endpoint
    resource function get health() returns SimpleResponse {
        string currentTime = time:utcToString(time:utcNow());
        
        SimpleResponse response = {
            message: "Service is healthy and running!",
            status: 200,
            timestamp: currentTime
        };
        
        return response;
    }
}