# Technical Stack

## Frontend
- **Framework**: Next.js 14 (React)
  - App Router for better performance
  - Server Components for improved SEO
  - Edge Runtime for global deployment
- **Styling**: TailwindCSS
  - Utility-first CSS
  - Dark mode support
  - Responsive design
- **State Management**: Zustand
  - Lightweight
  - TypeScript support
  - Middleware support
- **Data Fetching**: React Query
  - Automatic caching
  - Real-time updates
  - Optimistic updates
- **Real-time Communication**: Action Cable Client
  - Native Rails WebSocket support
  - Bi-directional communication
  - Room support for view-specific updates

## Backend
- **Framework**: Ruby on Rails 8
  - API mode for headless backend
  - Hotwire for real-time features
  - Strong convention over configuration
- **Runtime**: Ruby 3.3+
  - Improved performance
  - Better type checking
  - Enhanced garbage collection
- **Database**: PostgreSQL
  - Complex relationships
  - JSON support
  - Full-text search
- **ORM**: Active Record
  - Rich domain modeling
  - Built-in validations
  - Complex relationships
- **Caching**: Redis
  - Session storage
  - Real-time features
  - Rate limiting
- **Background Jobs**: Sidekiq
  - Background processing
  - Scheduled jobs
  - Job monitoring

## Event System
- **Message Broker**: Apache Kafka
  - Event streaming
  - Message persistence
  - Scalability
- **Event Sourcing**: Rails Event Store
  - Audit trails
  - State reconstruction
  - Version control
- **Query Optimization**: CQRS
  - Read/write separation
  - Performance optimization
  - Scalability

## View Transformation
- **Engine**: Custom implementation
  - Bidirectional transformations
  - Validation rules
  - Conflict resolution
- **Performance**: Ruby C Extensions
  - High-performance transformations
  - Native integration
  - Cross-platform support
- **API**: GraphQL (graphql-ruby)
  - Flexible queries
  - Real-time subscriptions
  - Schema validation

## Security
- **Authentication**: Devise
  - Multiple providers
  - Session management
  - Security best practices
- **Authorization**: Pundit
  - Fine-grained access control
  - Role-based access
  - Policy management
- **Session Management**: Redis
  - Distributed sessions
  - Scalable
  - Secure

## DevOps
- **Containerization**: Docker
  - Consistent environments
  - Easy deployment
  - Scalability
- **Deployment**: Kamal 2.0
  - Zero-downtime deployments
  - Rolling updates
  - Health checks
  - Easy rollbacks
  - Built-in monitoring
- **CI/CD**: GitHub Actions
  - Automated testing
  - Automated deployment
  - Environment management
- **Monitoring**: Prometheus & Grafana
  - Metrics collection
  - Visualization
  - Alerting

## Development Tools
- **Package Manager**: Bundler
  - Dependency management
  - Version locking
  - Workspace support
- **Code Quality**: RuboCop & Standard
  - Code style consistency
  - Error prevention
  - Team collaboration
- **Testing**: RSpec & FactoryBot
  - Unit testing
  - Integration testing
  - Component testing
- **Documentation**: YARD
  - API documentation
  - Code documentation
  - Type information

## Key Rails Features We'll Leverage
1. **Active Record**
   - Rich domain modeling
   - Complex relationships
   - Built-in validations
   - Query interface

2. **Action Cable**
   - Real-time WebSocket support
   - Channel-based communication
   - Room support
   - Authentication integration

3. **Active Job**
   - Background job processing
   - Job scheduling
   - Job monitoring
   - Multiple backend support

4. **Active Storage**
   - File uploads
   - Cloud storage support
   - Image processing
   - Direct uploads

5. **Action Text**
   - Rich text editing
   - File attachments
   - HTML sanitization
   - Trix editor

## Deployment Strategy
1. **Development**
   - Local development with hot reload
   - Docker Compose for services
   - Local database

2. **Staging**
   - Kamal 2.0 deployment
   - Integration testing
   - Performance testing

3. **Production**
   - Kamal 2.0 zero-downtime deployment
   - Rolling updates
   - Automated rollback
   - Health monitoring 