# Use the official HAPI FHIR image
FROM hapiproject/hapi:latest

# Tell Spring to also load config from /app/config/
ENV SPRING_CONFIG_ADDITIONAL_LOCATION=file:/app/config/

# Add an application.yaml that maps server.port to Render's PORT
COPY application.yaml /app/config/application.yaml

# Optional: a little JVM tuning for small instances
ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75"
