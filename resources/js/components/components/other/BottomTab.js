import React, { Component, Fragment, useEffect, useState } from "react";
import { Link, useHistory } from "react-router-dom";
import $ from "jquery";

import bottom_home from "../../assets/images/icons/bottom_home.png";
import bottom_ask from "../../assets/images/icons/bottom_ask.svg";
import bottom_answer from "../../assets/images/icons/bottom_answer.svg";

function Home(props) {
    let history = useHistory();
    const [LoginStatus, setLoginStatus] = useState();

    useEffect(() => {
        var user = localStorage.getItem("User");
        if (user === "Logout" || user === null) {
            setLoginStatus(false);
        } else {
            setLoginStatus(true);
        }
    }, [props]);

    const addEffect = (name) => {
        if ($(".center-box").hasClass("ease-in-effect")) {
            $(".center-box").addClass("ease-out-effect");
            $(".create-asker-bttn").addClass("ease-out-effect");
        } else {
            $(".modile-screen-border").addClass("ease-out-effect");
        }
        // $(".center-box").addClass("ease-out-effect");
        const timer = setTimeout(() => {
            if (name === "asker") {
                history.push({ pathname: "/Asker" });
            } else if (name === "Search") {
                history.push({ pathname: "/Search" });
            } else if (name === "PromotionVideo") {
                history.push({ pathname: "/PromotionVideo" });
            }
        }, 1500);
        return () => clearTimeout(timer);
    };

    return (
        <Fragment>
            <div class="bottom-tabs">
                <ul>
                    <li>
                        {LoginStatus === true ? (
                            <a
                                href="javascript:"
                                onClick={() => addEffect("PromotionVideo")}
                            >
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_home}
                                    />
                                </span>
                                <span class="text">Home</span>
                            </a>
                        ) : (
                            <Link to={"/"}>
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_home}
                                    />
                                </span>
                                <span class="text">Home</span>
                            </Link>
                        )}
                    </li>
                    <li>
                        {LoginStatus === true ? (
                            <a
                                href="javascript:"
                                onClick={() => addEffect("asker")}
                            >
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_ask}
                                    />
                                </span>
                                <span class="text">Ask</span>
                            </a>
                        ) : (
                            <Link to={"/LogIn"}>
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_ask}
                                    />
                                </span>
                                <span class="text">Ask</span>
                            </Link>
                        )}
                    </li>
                    <li>
                        {LoginStatus === true ? (
                            <a
                                href="javascript:"
                                onClick={() => addEffect("Search")}
                            >
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_answer}
                                    />
                                </span>
                                <span class="text">Answer</span>
                            </a>
                        ) : (
                            <Link to={"/LogIn"}>
                                <span class="icon material-icons">
                                    <img
                                        alt=""
                                        className="before"
                                        src={bottom_answer}
                                    />
                                </span>
                                <span class="text">Answer</span>
                            </Link>
                        )}
                    </li>
                </ul>
            </div>
        </Fragment>
    );
}

export default Home;
