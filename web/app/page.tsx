"use client";

import { useState } from "react";

// --- Sub-Components for Cleanliness ---

const ThemeToggle = ({ darkMode, toggle }) => (
  <button
    onClick={toggle}
    className={`px-4 py-1.5 rounded-full text-xs font-semibold border transition-all ${
      darkMode
        ? "bg-gray-800 border-gray-700 text-yellow-400 hover:bg-gray-700"
        : "bg-white border-gray-200 text-gray-600 hover:bg-gray-50"
    }`}
  >
    {darkMode ? "☀️ Light" : "🌙 Dark"}
  </button>
);

const TaskItem = ({ darkMode }) => {
  const cardStyles = darkMode 
    ? "bg-gray-800 border-gray-700 hover:border-indigo-500" 
    : "bg-white border-gray-200 hover:border-indigo-300";
    
  return (
    <li className={`${cardStyles} p-6 rounded-2xl shadow-sm border transition-all group`}>
      <div className="flex flex-col md:flex-row md:items-center gap-6">
        
        {/* Content Section */}
        <div className="flex-1">
          <h3 className={`text-lg font-bold mb-1 ${darkMode ? "text-white" : "text-gray-900"}`}>
            Our Todo List Title
          </h3>
          <p className={`text-sm leading-relaxed ${darkMode ? "text-gray-400" : "text-gray-600"}`}>
            Focus on the essential tasks first. This layout provides better spacing and readability.
          </p>
        </div>

        {/* Actions Section */}
        <div className="flex items-center gap-4">
          <select
            className={`text-sm rounded-lg px-3 py-2 font-medium focus:ring-2 focus:ring-indigo-500 outline-none transition-colors ${
              darkMode ? "bg-gray-700 text-gray-200 border-transparent" : "bg-gray-100 text-gray-700 border-transparent"
            }`}
          >
            <option>Not Started</option>
            <option>In Progress</option>
            <option>Complete</option>
          </select>

          <button className="text-gray-400 hover:text-red-500 transition-colors p-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M3 6h18"/><path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"/><path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"/></svg>
          </button>
        </div>
      </div>
    </li>
  );
};

// --- Main Page ---

export default function Home() {
  const [darkMode, setDarkMode] = useState(true);

  return (
    <main className={`${darkMode ? "bg-gray-900 text-white" : "bg-gray-50 text-gray-900"} min-h-screen transition-colors duration-300 font-sans`}>
      <div className="max-w-3xl mx-auto py-16 px-6">
        
        {/* Header */}
        <header className="flex items-center justify-between mb-12">
          <div className="space-y-1">
            <h1 className="text-4xl font-extrabold tracking-tight">My Tasks</h1>
            <p className="text-sm text-gray-500">Organize your day, one step at a time.</p>
          </div>
          <div className="flex items-center gap-4">
            <ThemeToggle darkMode={darkMode} toggle={() => setDarkMode(!darkMode)} />
            <button className="w-12 h-12 flex items-center justify-center rounded-xl bg-indigo-600 text-white hover:bg-indigo-500 transition-all shadow-lg shadow-indigo-500/20 active:scale-95 text-2xl">
              +
            </button>
          </div>
        </header>

        {/* Task List */}
        <ul className="grid gap-4">
          <TaskItem darkMode={darkMode} />
          <TaskItem darkMode={darkMode} />
        </ul>

      </div>
    </main>
  );
}