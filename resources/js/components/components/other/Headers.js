import React, { useState, useEffect, Fragment } from "react";
import { useLocation, Link, useHistory } from "react-router-dom";
import $ from "jquery";

import logo from "../../assets/images/logo.svg";

const Header = (props) => {
  const [LoginStatus, setLoginStatus] = useState();
  let history = useHistory();
  useEffect(() => {
    var user = localStorage.getItem("User");
    if (user === "Logout" || user === null) {
      setLoginStatus(false);
    } else {
      setLoginStatus(true);
    }
  }, [props]);

  const handleLogout = () => {
    setLoginStatus(false);
    localStorage.setItem("User", "Logout");
    history.push({ pathname: "/" , state:{notification:{status:'success' , msg : 'logout successfully'}} });
  };

  return (
    <Fragment>
      <header id="header" class="header">
        <div class="container">
          <div class="row align-items-center">
            <div class="col col-md-2 header-logo-col">
              <Link to={"/"} class="header-logo-inner">
                <img alt="" src={logo} />
              </Link>
            </div>
            <div class="col col-md-10 header-menu-col">
              <div class="header-menu-inner">
                <nav class="header-menu-nav">
                  <ul>
                    <li>
                      <a href="javascript:">Inspiration</a>
                    </li>
                    <li>
                      <a href="javascript:">Integration</a>
                    </li>
                    <li>
                      <a href="javascript:">Support</a>
                    </li>
                    {LoginStatus === true ? (
                      <li>
                        <a href="javascript:" onClick={() => handleLogout()}>
                          logout
                        </a>
                      </li>
                    ) : (
                      <>
                        <li class="login">
                          <Link to={"/LogIn"}>
                            Log In
                          </Link>
                        </li>
                        <li class="signup bttn">
                          <Link to={"/SignUp"}>
                            <span>Sign Up</span>
                          </Link>
                        </li>
                      </>
                    )}
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </header>
    </Fragment>
  );
};
export default Header;
