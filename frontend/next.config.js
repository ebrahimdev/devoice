/** @type {import('next').NextConfig} */
const nextConfig = {
  async rewrites() {
    return [
      {
        source: '/api/:path*',
        destination: 'http://localhost:3000/api/:path*',
      },
    ];
  },
  experimental: {
    serverActions: true,
  },
  env: {
    PORT: 3001,
  },
};

module.exports = nextConfig; 