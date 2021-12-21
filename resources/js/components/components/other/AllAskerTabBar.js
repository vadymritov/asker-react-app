import React, { useState, useEffect } from "react";
import { useLocation } from "react-router-dom";
import Tab from "react-bootstrap/Tab";
import Nav from "react-bootstrap/Nav";
import $ from "jquery";

const AllAskerTabBar = (props) => {
  return (
    <div className="category-tabs-list">
      <Nav variant="pills" className="asker-top-tabbar">
        <Nav.Item>
          <Nav.Link eventKey="All_Tab">
            <span>All</span>
          </Nav.Link>
        </Nav.Item>
        <Nav.Item>
          <Nav.Link eventKey="Active_Tab">
            <span>Active</span>
          </Nav.Link>
        </Nav.Item>
        <Nav.Item>
          <Nav.Link eventKey="Archived_Tab">
            <span>Archived</span>
          </Nav.Link>
        </Nav.Item>
      </Nav>
    </div>
  );
};
export default AllAskerTabBar;
