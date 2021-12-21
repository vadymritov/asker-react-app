import React, { useState, useEffect } from "react";
import { useLocation } from "react-router-dom";
import Tab from "react-bootstrap/Tab";
import Nav from "react-bootstrap/Nav";
import $ from "jquery";
import { FaUserAlt, FaPlusCircle, FaQuestionCircle } from "react-icons/fa";

const BottomTab = (props) => {
  return (
    <div className="asker-bottom-tab">
      <div class="asker-bottom-tab-area">
        <Nav variant="pills" className="asker-bottom-tabbar">
          <Nav.Item>
            <Nav.Link eventKey="Home_tab">
              <FaUserAlt />
              <span>Home</span>
            </Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="Ask_Tab">
              <FaPlusCircle />
              <span>Ask</span>
            </Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="Answer_Tab">
              <FaQuestionCircle />
              <span>Answer</span>
            </Nav.Link>
          </Nav.Item>
        </Nav>
      </div>
    </div>
  );
};
export default BottomTab;
