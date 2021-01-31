// Modules
import SkipLink from './skip-link';
import MenuToggle from './menu-toggle';
import SearchToggle from './search-toggle';
import Card from './card';
import SidebarToggle from './sidebar-toggle';

// Polyfills
import './polyfills';

// Initialize modules on page load
document.addEventListener('DOMContentLoaded', () => {
  SkipLink();
  MenuToggle();
  SearchToggle();
  Card();
  SidebarToggle();
});
