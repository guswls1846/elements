import './layout.css';

import React from 'react';

import Header from './header';

require('@guswls1846/elements/styles.min.css');

const Layout = ({ children }) => {
  return (
    <div className="Layout">
      <Header />

      <main className="MainContent">{children}</main>
    </div>
  );
};

export default Layout;
