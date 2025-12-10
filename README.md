# 🎄✨📅 Advent-of-DevOps 
#### The [Advent of DevOps challenge](https://devops-daily.com/advent-of-devops) consists of hands-on, practical challenges designed to help level up my DevOps skills through 25 days of real-world scenarios and tasks.
---

# 🎯 Learning Objectives 
#### In the 25-days of this challenge, I will have hope to get a better understanding on
- 🐋 Containerization: Docker optimization, debugging, and best practices
- ⚙️ CI/CD: Github Actions workflows, caching, and automation
- 🛠️ Infrastructure as Code: Terraform modules and cloud deployments
- ☸️ Kubernetes: Deployments, debugging, and Helm Charts
- 📊 Observability: Monitoring, logging, and metrics
- 🔒 Security: Container scanning, secrets management, and hardening
- ☁️ Cloud Platforms: Serverless, static sites, and autoscaling
- 🧱 DevOps Culture: Best practices, documentation, and collaboration
----
# 🤔 How it works 
1. **Pick your challenge** - Starting with Day 1 then progressively move onto a new challenge every day
2. **Get Hands-On** - Each challenge will include clear tasks, starter code, and the success criteria
3. **Build & Learn** - Aimed to allow users to complete challenges at their own pace
4. **Share & Celebrate** - Post solutions and achievements with the community!
5. **Learn & Iterate** - Review reference solutions and explanations to deepen my understanding

#### Each challenge includes:
- ✅ Clear task description
- 🎯 Success criteria
- 🔧 Starter code (when applicable)
- 💡 Solution &  explanation
- 🔗 Additional resources
---

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
