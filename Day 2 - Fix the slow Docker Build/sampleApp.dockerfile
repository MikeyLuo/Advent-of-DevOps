FROM node:20-alpine AS builder


WORKDIR /app

# Only copy dependency files first for better caching
COPY  app/package*.json .

# Install all dependencies (including dev deps for build)
RUN npm ci 

COPY app/tsconfig.json .
COPY app/src src

# Build the application
RUN npm run build

FROM node:20-alpine AS runtime

WORKDIR /app

# Copy package files
COPY app/package*.json .

# Install only prdouction dependencies
RUN npm ci --omit=dev

# Copy built application from builder
COPY --from=builder /app/dist ./dist

# Create non-root user
RUN addgroup -g 1001 appgroup && \
    adduser -D -u 1001 -G appgroup appuser && \
    chown -R appuser:appgroup /app

USER appuser

EXPOSE 3000

CMD ["node", "dist/index.js"]