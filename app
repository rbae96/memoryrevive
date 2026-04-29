import { HashRouter, Routes, Route, Link } from "react-router-dom";
import { useState } from "react";
import { Menu, X, Brain, Star, CheckCircle, ArrowRight, Shield, Award, Zap } from "lucide-react";
import Home from "./pages/Home";

function Navbar() {
  const [open, setOpen] = useState(false);
  return (
    <nav className="fixed top-0 w-full z-50 bg-white/90 backdrop-blur-lg border-b border-gray-100/50 shadow-sm">
      <div className="max-w-7xl mx-auto px-6 h-20 flex items-center justify-between">
        <Link to="/" className="flex items-center gap-2" onClick={() => setOpen(false)}>
          <Brain className="text-blue-700" size={28} />
          <span className="text-xl font-bold text-gray-900">MemoryRevive</span>
        </Link>
        <div className="hidden md:flex items-center gap-8">
          <a href="#benefits" className="text-gray-600 hover:text-blue-700 font-medium transition-colors">Benefits</a>
          <a href="#science" className="text-gray-600 hover:text-blue-700 font-medium transition-colors">The Science</a>
          <a href="#testimonials" className="text-gray-600 hover:text-blue-700 font-medium transition-colors">Success Stories</a>
          <a
            href="https://www.advancedbionutritionals.com/DS24/Advanced-Memory/Nobel-Prize-Winning-Memory-Breakthroughs/HD.htm#aff=zengift"
            target="_blank"
            rel="noopener noreferrer"
            className="bg-blue-700 text-white px-6 py-2.5 rounded-full text-sm font-semibold hover:bg-blue-800 transition-all hover:shadow-lg"
          >
            Get Advanced Memory →
          </a>
        </div>
        <button className="md:hidden p-2" onClick={() => setOpen(!open)} aria-label="Toggle menu">
          {open ? <X size={24} /> : <Menu size={24} />}
        </button>
      </div>
      {open && (
        <div className="md:hidden px-6 py-4 flex flex-col gap-4 border-t bg-white">
          <a href="#benefits" className="text-gray-700 font-medium" onClick={() => setOpen(false)}>Benefits</a>
          <a href="#science" className="text-gray-700 font-medium" onClick={() => setOpen(false)}>The Science</a>
          <a href="#testimonials" className="text-gray-700 font-medium" onClick={() => setOpen(false)}>Success Stories</a>
          <a
            href="https://www.advancedbionutritionals.com/DS24/Advanced-Memory/Nobel-Prize-Winning-Memory-Breakthroughs/HD.htm#aff=zengift"
            target="_blank"
            rel="noopener noreferrer"
            className="bg-blue-700 text-white px-6 py-3 rounded-full text-sm font-semibold text-center"
            onClick={() => setOpen(false)}
          >
            Get Advanced Memory →
          </a>
        </div>
      )}
    </nav>
  );
}

function Footer() {
  return (
    <footer className="bg-gray-900 text-white pt-16 pb-8">
      <div className="max-w-7xl mx-auto px-6">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
          <div>
            <div className="flex items-center gap-2 mb-4">
              <Brain className="text-blue-400" size={24} />
              <span className="text-lg font-bold">MemoryRevive</span>
            </div>
            <p className="text-gray-400 text-sm leading-relaxed">
              Sharing breakthrough science-backed solutions for memory, focus, and cognitive vitality. Based on Nobel Prize–winning research.
            </p>
          </div>
          <div>
            <h4 className="font-semibold mb-4 text-white">Quick Links</h4>
            <ul className="space-y-2 text-gray-400 text-sm">
              <li><a href="#benefits" className="hover:text-white transition-colors">Benefits</a></li>
              <li><a href="#science" className="hover:text-white transition-colors">The Science</a></li>
              <li><a href="#testimonials" className="hover:text-white transition-colors">Success Stories</a></li>
              <li>
                <a
                  href="https://www.advancedbionutritionals.com/DS24/Advanced-Memory/Nobel-Prize-Winning-Memory-Breakthroughs/HD.htm#aff=zengift"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="hover:text-white transition-colors"
                >
                  Order Advanced Memory
                </a>
              </li>
            </ul>
          </div>
          <div>
            <h4 className="font-semibold mb-4 text-white">Disclaimer</h4>
            <p className="text-gray-400 text-xs leading-relaxed">
              This page contains affiliate links. We may earn a commission if you purchase through our link at no extra cost to you. These statements have not been evaluated by the FDA. This product is not intended to diagnose, treat, cure, or prevent any disease.
            </p>
          </div>
        </div>
        <div className="border-t border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center text-sm text-gray-400">
          <p>© 2026 MemoryRevive. All rights reserved.</p>
          <div className="flex gap-6 mt-4 md:mt-0">
            <a href="#" className="hover:text-white transition-colors">Privacy Policy</a>
            <a href="#" className="hover:text-white transition-colors">Terms</a>
            <a href="#" className="hover:text-white transition-colors">Affiliate Disclosure</a>
          </div>
        </div>
      </div>
    </footer>
  );
}

export default function App() {
  return (
    <HashRouter>
      <Navbar />
      <main className="pt-20">
        <Routes>
          <Route path="/" element={<Home />} />
        </Routes>
      </main>
      <Footer />
    </HashRouter>
  );
}
