import React, { useState, useEffect, Fragment, useMemo } from "react";
import { useLocation, Link, useHistory } from "react-router-dom";
import $ from "jquery";
import { MdPerson, MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";
import { SelectPicker } from "rsuite";

import nameimg from "../assets/images/icons/user.svg";
const SignUpScreen = (props) => {
    let history = useHistory();
    var a = { label: "blank", value: "blank", role: "Master" };
    const [Country, setCountry] = useState([]);
    const [CountryData, setCountryData] = useState([a]);
    const [value, setValue] = useState("");
    const [Phone, setPhone] = useState("");
    const [Name, setName] = useState("");

    const changeHandler = async (value) => {
        var val = value.split(",");
        setValue(val[1]);

        const resultObject = await search(val[0], Country);
        $(".flag").find("img").attr("src", resultObject.unicode);
        $(".rs-picker-toggle").find(".rs-picker-toggle-value").text(val[1]);
    };

    function search(nameKey, myArray) {
        var finddata = parseInt(nameKey);
        for (var i = 0; i < myArray.length; i++) {
            if (myArray[i].CountryId === finddata) {
                return myArray[i];
            }
        }
    }

    useEffect(async () => {
        var user = localStorage.getItem("User");
        if (user === "Logout" || user === null) {
        } else {
            history.push({ pathname: "/" });
        }
        await fetch(SITEURL.FULLBASE_API + "country", {
            method: "POST",
            headers: {
                Accept: "application/json",
                "Content-Type":
                    "application/x-www-form-urlencoded;charset=UTF-8",
            },
        })
            .then((resp) => resp.json())
            .then((respJson) => {
                if (respJson.status === true) {
                    setCountry(respJson.country);
                    var arrr = [];
                    respJson.country.map((item) => {
                        var myObj = {
                            value: item.CountryId + "," + item.phonecode,
                            label: item.countryName + " " + item.phonecode,
                            role: "Master",
                        };
                        arrr.push(myObj);
                    });
                    setCountryData(arrr);
                }
            })
            .catch((err) => {});

        var defaultvalue = "254,+1";
        var val = defaultvalue.split(",");
        $(".rs-picker-toggle").find(".rs-picker-toggle-value").text(val[1]);
        setValue(val[1]);
    }, [props]);

    const handleClick = () => {
        // history.push({ pathname: "/VerifyOtp", state: {"respJson" : "xyz dataa"} });
        var parameter =
            "&name=" +
            encodeURIComponent(Name) +
            "&phone=" +
            encodeURIComponent(Phone) +
            "&country_code=" +
            encodeURIComponent(value);

        fetch(SITEURL.FULLBASE_API + "APIsendsms", {
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
                if (respJson.status === true) {
                    history.push({
                        pathname: "/VerifyOtp",
                        state: respJson.user,
                    });
                }
            })
            .catch((err) => {});
    };

    return (
        <Fragment>
            <div class="center-box theme-bg ">
                <div class="center-box-inner fade-in">
                    <div class="log-reg-form">
                        <div class="head">
                            <h4>Create Account</h4>
                            <p>Enter your new account details below.</p>
                        </div>
                        <div class="cust-form-row">
                            <div class="cust-form-col">
                                <div class="text-filled with-icon">
                                    <div class="icon">
                                        <img
                                            alt=""
                                            className="before"
                                            src={nameimg}
                                        />
                                    </div>
                                    <input
                                        type="text"
                                        name="name"
                                        placeholder="Full Name"
                                        required
                                        onChange={(e) =>
                                            setName(e.target.value)
                                        }
                                    />
                                </div>
                            </div>
                            <div class="cust-form-col">
                                <div class="text-filled with-icon select-filled mobile-filled">
                                    <div class="icon flag">
                                        <div class="img">
                                            <img src="https://flagcdn.com/w40/us.png" />
                                        </div>
                                    </div>
                                    <SelectPicker
                                        placeholder="Select Country"
                                        data={CountryData}
                                        defaultValue={"254,+1"}
                                        onChange={(value) =>
                                            changeHandler(value)
                                        }
                                    />
                                    <input
                                        type="number"
                                        name="phone"
                                        placeholder="Mobile Number"
                                        onChange={(e) =>
                                            setPhone(e.target.value)
                                        }
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="cont">
                            <p>Already have an account?</p>
                            <Link to={"/SignIn"}>
                                SIGN IN
                            </Link>
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
                                        <MdArrowForward />
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
