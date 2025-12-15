# Day 1 - Build a Minimal Docker Image
### Task 
#### Given the following Python and Node.js applications, create the smallest working Docker image possible with the following criteria:
- Image must be under 25MB
- Application must run successfully
- Use multi-stage builds
- Use Alpine Linux base images
- Remove unnecessary dependencies

### Target
- Image Size: Under 25MB
- Startup Time: Under 2 seconds
- Security: Minimal attack surface with Alpine base

### Key takeaways

#### Why this all matters?
- Deployment speed: Smaller images deploy faster across networks
- Storage costs: Less disk space and registry storage needed
- Security: Fewer packages mean fewer vulnerabilities
- Build times; Smalle baser images = faster builds

#### Key optimization techniques
- Multi-stage build: Separates build-time dependencies from runtime
- Non-Root User: Secturity best practice to limit container privileges
- Minimal Layers: Combines commands to reduce layer count
- Alpine Linux Base: Uses musl libc instead of glibc, significantly reducing size

---