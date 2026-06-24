
# GlobalErrands

Production-ready scaffold for GlobalErrands — a global grocery, retail, pharmacy, and errand delivery platform.

Contents
- backend/ — NestJS (TypeScript) backend following modular clean architecture
- mobile/ — Flutter app (Android, iOS, Web)
- web/ — Next.js + TypeScript admin dashboard shell
- infra/ — Docker Compose, Terraform placeholders, k8s manifests
- docs/ — OpenAPI, DB schema, ERD placeholders
- .github/workflows — CI templates

Quickstart (development)
1. Copy .env.example -> .env and fill secrets.
2. Start local dependencies:
   - Option A: docker-compose up -d (uses postgres, redis)
   - Option B: run your own Postgres + Redis and set DATABASE_URL/REDIS_URL
3. Backend
   - cd backend
   - npm ci
   - npm run start:dev
4. Web Admin
   - cd web
   - npm ci
   - npm run dev
5. Mobile
   - cd mobile
   - flutter pub get
   - flutter run

See docs/ for full infra, API specs, and env var lists.
