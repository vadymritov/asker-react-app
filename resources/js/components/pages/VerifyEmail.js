import React, { useState, useEffect, Fragment, useMemo } from "react";
import { useHistory, Link } from "react-router-dom";
import { MdEmail, MdOutlineLock, MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";

import emailimg from "../assets/images/icons/email.svg";
import passwordimg from "../assets/images/icons/lock.svg";
const SignUpScreen = (props) => {
  let history = useHistory();
  const [Email, setEmail] = useState("");
  const [Password, setPassword] = useState("");
  const [User, setUser] = useState([]);
  const [passwordShown, setPasswordShown] = useState(false);

  useEffect(async () => {
    setUser(props.data.user.user_id);
  }, [props]);

  const togglePassword = () => {
    setPasswordShown(!passwordShown);
  };

  const handleClick = () => {
    var parameter =
      "&email=" +
      encodeURIComponent(Email) +
      "&password=" +
      encodeURIComponent(Password) +
      "&user_id=" +
      encodeURIComponent(User);

    fetch(SITEURL.FULLBASE_API + "registerEmail", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
      body: parameter,
    })
      .then((resp) => resp.json())
      .then((respJson) => {
        if (respJson.status === true) {
          history.push({ pathname: "/LogIn" });
        }
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="center-box theme-bg">
        <div class="center-box-inner fade-in">
          <div class="log-reg-form">
            <div class="head">
              <h4>Create Password</h4>
              <p>Password must be at least 8 characters.</p>
            </div>
            <div class="cust-form-row">
              <div class="cust-form-col">
                <div class="text-filled with-icon">
                  <div class="icon">
                    <span class="material-icons">
                      <img
                        alt=""
                        className="before"
                        src={emailimg}
                      />
                    </span>
                  </div>
                  <input
                    type="email"
                    name="email"
                    placeholder="Email"
                    onChange={(e) => setEmail(e.target.value)}
                  />
                </div>
              </div>
              <div class="cust-form-col">
                <div class="text-filled with-icon password-filled">
                  <div class="icon">
                    <span class="material-icons">
                      <img
                        alt=""
                        className="before"
                        src={passwordimg}
                      />
                    </span>
                  </div>
                  <input
                    type={passwordShown ? "text" : "password"}
                    name="password"
                    placeholder="Password"
                    minlength="8"
                    onChange={(e) => setPassword(e.target.value)}
                  />
                  <div class="pass-show-hide">
                    <a href="javascript:" onClick={() => togglePassword()}>
                      {passwordShown ? "HIDE" : "SHOW"}
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <input type="hidden" name="user_id" value="{{$_POST['user_id']}}" />
            <div class="cont">
              <p>Already have an account?</p>
              <Link to={"/LogIn"}>SIGN IN</Link>
            </div>
            <div class="cust-form-row">
              <div class="cust-form-col">
                <div class="submit-filled with-icon">
                  <input
                    type="submit"
                    value="CONTINUE"
                    onClick={() => handleClick()}
                  />
                  <div class="icon">
                    <span class="material-icons">
                      <MdArrowForward />
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div className="home-bottom-slide"></div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default SignUpScreen;
