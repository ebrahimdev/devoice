'use client';

import { useState } from 'react';

export default function Home() {
  const [userStory, setUserStory] = useState('');
  const [response, setResponse] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    // For now, we'll just mock the AI response
    setResponse('Analyzing your user story...');
  };

  return (
    <main className="min-h-screen p-4 md:p-8 max-w-2xl mx-auto">
      <div className="space-y-6">
        <h1 className="text-2xl font-bold text-center">
          AI-Driven Development
        </h1>

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label
              htmlFor="userStory"
              className="block text-sm font-medium text-gray-700 mb-2"
            >
              Enter your user story
            </label>
            <textarea
              id="userStory"
              value={userStory}
              onChange={(e) => setUserStory(e.target.value)}
              className="w-full h-32 p-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
              placeholder="As a [user], I want to [action] so that [benefit]"
            />
          </div>

          <button
            type="submit"
            className="w-full bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2"
          >
            Analyze Story
          </button>
        </form>

        {response && (
          <div className="mt-6 p-4 bg-gray-50 rounded-lg">
            <h2 className="text-lg font-semibold mb-2">Analysis</h2>
            <p className="text-gray-700">{response}</p>
          </div>
        )}
      </div>
    </main>
  );
}
