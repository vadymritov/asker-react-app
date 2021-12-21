import React, { useState, useEffect, Fragment } from "react";
import { useHistory, Link } from "react-router-dom";
import { MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";

const SignUpScreen = (props) => {
  let history = useHistory();
  const [UserId, setUserId] = useState("");
  const [Phone, setPhone] = useState("");
  const [CountryCode, setCountryCode] = useState("");
  const [VerifyCode, setVerifyCode] = useState("");

  useEffect(async () => {
    setUserId(props.data.id);
    setPhone(props.data.phone);
    setCountryCode(props.data.country_code);
  }, [props]);

  const handleClick = () => {
    var parameter =
      "&country_code=" +
      encodeURIComponent(CountryCode) +
      "&verification_code=" +
      encodeURIComponent(VerifyCode) +
      "&user_id=" +
      encodeURIComponent(UserId) +
      "&phone=" +
      encodeURIComponent(Phone);

    fetch(SITEURL.FULLBASE_API + "forgotPasswordVerifyOtp", {
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
          history.push({ pathname: "/ResetPassword", state: respJson.user });
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
              <h4>Verification</h4>
              <p>We texted you a code to verify your number.</p>
            </div>
            <div class="cust-form-row">
              <div class="cust-form-col">
                <div class="text-filled otp-filled">
                  <input
                    type="text"
                    maxlength="4"
                    id="OtpVerfication"
                    name="verification_code"
                    onChange={(e) => setVerifyCode(e.target.value)}
                  />
                  <div class="otp-bg" name="verify_otp">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                  </div>
                </div>
              </div>
            </div>
            <input type="hidden" name="user_id" value="{{$user['id']}}" />
            <input
              type="hidden"
              name="country_code"
              value="{{$_POST['country_code']}}"
            />
            <input type="hidden" name="phone" value="{{$_POST['phone']}}" />
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
