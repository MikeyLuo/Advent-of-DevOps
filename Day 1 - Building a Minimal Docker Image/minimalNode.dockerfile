# This is known as NAMING a multiple build stage where build is the stage name
FROM node:20-alpine AS build

# Set the working directory where our commands run inside the container
WORKDIR /app

# COPY app.py . copies only the app.py file in the app directory
# Where as COPY app.py/ . would copy all files
COPY app/app.js . 

# Final stage
FROM node:20-alpine

# Create non-root user
RUN addgroup -g 1001 appgroup && \
    adduser -D -u 1001 -G appgroup appuser

# Set the working directory
WORKDIR /app

# Copy from the build stage
COPY --from=build /app/app.js . 

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 8000

# Run the application
CMD ["node", "app.js"]