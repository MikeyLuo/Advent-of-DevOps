# Day 2 - Fix the slow Docker build
### Task 
#### Rewrite the following Dockerfile so that the build time is reduced by at least 50%.
#### Requirements:
- Maintain the same functionality
- Reduce build time by minimum 50%
- Optimize layer caching
- Follow Docker best practices

### Target
- **Build Time Reduction:** 50%
- **Cache Hit Rate:** Maximize layer reuse
- **First Build:** May be similar, but rebuilds should be fast

### Key takeaways

#### What was wrong?
- Poor layer ordering: Copying all files before installing dependencies
- No cache optimization: Every code change invalidated the dependency layer
- Missing .dockerignore: Copying unnecessary files
- No multi-stage build: Including build tooks in final image
- npm install vs npm ci: Not using deterministic installs

#### Why this all matters?
1. Dependency layer caching
   - ``` COPY . . ``` -> This is bad practice because esentially you are telling Docker to re-run every layer like new everytime something is changed.
   - ``` COPY package*.json . ``` -> But when we explicitly tell Docker to only copy the dependency file, then we introduce what is called layered caching.
  ---
2. Multi-stage builds
   - ``` FROM node:20-alpine AS builder ``` -> Build stage has dev dependencies
   - ``` RUN npm ci ```
   ---
   - ``` FROM node:20-alpine AS runtime ``` -> Production stage only has runtime dependencies
   - ``` RUN npm ci --omit=dev ```
  ---
3. Using npm ci instead of npm install
   - ``` npm ci ``` is faster and more reliable
   - Uses package-lock.json for deterministic installs
   - Removes existing node_modules first
  ---
4. .dockerignore file
   - Reduces overall context size
   - Faster uploads to Docker daemon
   - Prevents accidental inclusion of secrets
