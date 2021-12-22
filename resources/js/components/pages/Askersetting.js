import React, { useState, useEffect, Fragment } from "react";
import { Link, useLocation, useHistory } from "react-router-dom";
import {
  MdVerifiedUser,
  MdPhoneIphone,
  MdNotifications,
  MdShare,
  MdHelp,
  MdPerson,
  MdEmail,
  MdPassword,
  MdPermPhoneMsg,
  MdIntegrationInstructions,
  MdArrowBack,
} from "react-icons/md";
import $ from "jquery";
import Tab from "react-bootstrap/Tab";
import { useSelector, useDispatch } from "react-redux";
import LayoutOne from "../components/layout/LayoutOne";

import pencileimg from "../assets/images/icons/pencile.svg";
import Shareimg from "../assets/images/icons/Share.svg";
import logoutimg from "../assets/images/icons/logout.svg";
import chatimg from "../assets/images/icons/chat.svg";
import notification_whiteimg from "../assets/images/icons/notification_white.svg";

const AllAskerMain = (props) => {
  if ($(".flip-card-inner").hasClass("start-rotate")) {
    $(".flip-card-inner").removeClass("start-rotate");
  }
  const timer = setTimeout(() => {
    $(".flip-card-inner").addClass("start-rotate");
  }, 5);

  const [UserProfile, setUserProfile] = useState([]);
  let history = useHistory();
  useEffect(() => {
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }

    return () => clearTimeout(timer);
  }, []);

  const handleLogout = () => {
    localStorage.setItem("UserProfile", "");
    localStorage.setItem("UserID", "");
    localStorage.setItem("User", "Logout");
    history.push({ pathname: "/" });
  };
  return (
    <Fragment>
      <div class="center-box account-setting-page default-flip flip-card-inner">
        <div class="status-info-modal account-setting-modal active ">
          <div class="inner-bx remove-flip">
            <div class="close-bttn">
              <a onClick={() => history.goBack()} href="javascript:" class="material-icons">
                <MdArrowBack />
              </a>
            </div>
            <div class="head">
              <h4>Account Settings</h4>
            </div>
            <div class="row">
              <div class="col col-md-6">
                <div class="list">
                  <ul>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={pencileimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Name</h4>
                          <p>{UserProfile.name}</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={Shareimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Email</h4>
                          <p>{UserProfile.email}</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={pencileimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Password</h4>
                          <p>updated 2 weeks ago</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={logoutimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Phone number</h4>
                          <p>{UserProfile.phone}</p>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col col-md-6">
                <div class="list">
                  <ul>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={chatimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Help Center</h4>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={chatimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Privacy & Terms</h4>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={chatimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Contact us</h4>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col col-md-12">
                <div class="list">
                  <ul>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={notification_whiteimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Notifications</h4>
                          <p>Stay up to date</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={chatimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>Collaborate</h4>
                          <p>Share this response with friends</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:">
                        <div class="icon">
                          <span class="material-icons">
                            <img
                              alt=""
                              className="before"
                              src={chatimg}
                            />
                          </span>
                        </div>
                        <div class="text">
                          <h4>API & Integration</h4>
                          <p>Invite friends to collaborate</p>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="log-out">
              {/* {{-- <a href="#">Log Out</a> --}} */}
              <input
                type="button"
                value="Log Out"
                onClick={() => handleLogout()}
              />
            </div>
            <div className="home-bottom-slide"></div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default AllAskerMain;
