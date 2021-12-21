import React, { useState, useEffect, Fragment, useMemo } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import { MdOutlineLock, MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";

import passwordimg from "../assets/images/icons/lock.svg";
const SignUpScreen = (props) => {
  let history = useHistory();
  const [CountryCode, setCountryCode] = useState("");
  const [Phone, setPhone] = useState("");
  const [Pass, setPass] = useState("");
  const [ConfirmPass, setConfirmPass] = useState("");
  const [passwordShown, setPasswordShown] = useState(false);
  const [passwordShown2, setPasswordShown2] = useState(false);

  useEffect(async () => {
    setPhone(props.data.phone);
    setCountryCode(props.data.country_code);
  }, [props]);

  const togglePassword = () => {
    setPasswordShown(!passwordShown);
  };

  const togglePassword2 = () => {
    setPasswordShown2(!passwordShown2);
  };

  const handleClick = () => {
    if (Pass === ConfirmPass) {
      var parameter =
        "&country_code=" +
        encodeURIComponent(CountryCode) +
        "&password=" +
        encodeURIComponent(Pass) +
        "&phone=" +
        encodeURIComponent(Phone);

      fetch(SITEURL.FULLBASE_API + "forgotresetPassword", {
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
    }
  };

  return (
    <Fragment>
      <div class="center-box theme-bg">
        <div class="center-box-inner fade-in">
          <div class="log-reg-form">
            <div class="head">
              <h4>Reset Password</h4>
              <p>Password must be at least 8 characters.</p>
            </div>
            <div class="cust-form-row">
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
                    placeholder="Create Password"
                    onChange={(e) => setPass(e.target.value)}
                  />
                  <div class="pass-show-hide">
                    <a href="javascript:" onClick={() => togglePassword()}>
                      {passwordShown ? "HIDE" : "SHOW"}
                    </a>
                  </div>
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
                    type={passwordShown2 ? "text" : "password"}
                    name="confirm-password"
                    placeholder="Confirm Password"
                    onChange={(e) => setConfirmPass(e.target.value)}
                  />
                  <div class="pass-show-hide">
                    <a href="javascript:" onClick={() => togglePassword2()}>
                      {passwordShown2 ? "HIDE" : "SHOW"}
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="cont">
              <p>Already have an account?</p>
              <Link to={"/LogIn"}>SIGN IN</Link>
            </div>
            <div class="cust-form-row">
              <div class="cust-form-col">
                <div class="submit-filled with-icon">
                  <input
                    type="submit"
                    value="UPDATE"
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
