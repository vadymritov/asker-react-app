import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import $ from "jquery";
import { MdLock, MdEmail, MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";
import { useDispatch } from "react-redux";
// import { setUserProfile } from "../../redux/action/UserProfile_action";
import emailimg from "../assets/images/icons/email.svg";
import passwordimg from "../assets/images/icons/lock.svg";
const LoginScreen = (props) => {
    let history = useHistory();
    const [EmailId, setEmailID] = useState(false);
    const [Password, setPassword] = useState(false);
    const [passwordShown, setPasswordShown] = useState(false);
    // const dispatch = useDispatch();

    useEffect(() => {
        var user = localStorage.getItem("User");
        // if (user === "Logout" || user === null) {
        // } else {
        //     history.push({ pathname: "/" });
        //     return null;
        // }
    }, [props]);

    const togglePassword = () => {
        setPasswordShown(!passwordShown);
    };

    const handleLogin = () => {
        var parameter =
            "&email=" +
            encodeURIComponent(EmailId) +
            "&password=" +
            encodeURIComponent(Password);

        fetch(SITEURL.FULLBASE_API + "loginEmail", {
            method: "POST",
            headers: {
                Accept: "application/json",
                "Content-Type":
                    "application/x-www-form-urlencoded;charset=UTF-8",
            },
            body: parameter,
        })
            .then((resp) => resp.json())
            .then((respJson) => {
                localStorage.setItem("UserProfile", respJson.status);
                console.log("login details", respJson);
                if (respJson.status === true) {
                    localStorage.setItem("UserID", respJson.user.id);
                    localStorage.setItem("User", JSON.stringify(respJson.user));
                    // dispatch(setUserProfile(respJson));
                    history.push({
                        pathname: "/PromotionVideo",
                    });
                } else {
                    alert(respJson.message);
                }
            })
            .catch((err) => {});
    };

    return (
        // <Fragment>
        <div class="center-box theme-bg">
            <div class="center-box-inner fade-in">
                <div class="log-reg-form">
                    <div class="head">
                        <h4>Log in</h4>
                        <p>Enter your login details below.</p>
                    </div>
                    <div class="cust-form-row">
                        <div class="cust-form-col">
                            <div class="text-filled with-icon">
                                <div class="icon">
                                    <span class="material-icons">
                                        <img
                                            alt=""
                                            className="before"
                                            // src={"/images/icons/email.svg"}
                                            src={emailimg}
                                        />
                                    </span>
                                </div>
                                <input
                                    type="email"
                                    name="email"
                                    placeholder="Email"
                                    onChange={(e) => setEmailID(e.target.value)}
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
                                    onChange={(e) =>
                                        setPassword(e.target.value)
                                    }
                                />
                                <div class="pass-show-hide">
                                    <a
                                        href="javascript:"
                                        onClick={() => togglePassword()}
                                    >
                                        {passwordShown ? "HIDE" : "SHOW"}
                                    </a>
                                </div>
                            </div>
                            <p class="forgot-pass-para">
                                <Link to={"/ForgotPassword"}>
                                    Forgot Password
                                </Link>
                            </p>
                        </div>
                    </div>
                    <div class="cont">
                        <p>Don’t have an account?</p>
                        <Link to={"/SignUp"}>CREATE ACCOUNT</Link>
                    </div>
                    <div class="cust-form-row">
                        <div class="cust-form-col">
                            <div class="submit-filled with-icon">
                                <input
                                    type="button"
                                    value="CONTINUE"
                                    onClick={() => handleLogin()}
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
        // </Fragment>
    );
};
export default LoginScreen;
