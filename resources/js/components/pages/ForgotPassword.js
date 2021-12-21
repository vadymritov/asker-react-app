import React, { useState, useEffect, Fragment } from "react";
import { useHistory, Link } from "react-router-dom";
import $ from "jquery";
import { MdArrowForward } from "react-icons/md";
import SITEURL from "../SiteUrl.json";
import { SelectPicker } from "rsuite";

const ForgotPasswordScreen = (props) => {
  let history = useHistory();
  var a = { label: "blank", value: "blank", role: "Master" };
  const [Phone, setPhone] = useState("");
  const [Country, setCountry] = useState([]);
  const [CountryData, setCountryData] = useState([a]);
  const [value, setValue] = useState("");

  useEffect(async () => {
    await fetch(SITEURL.FULLBASE_API + "country", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
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
  }, []);

  const changeHandler = async (value) => {
    var val = value.split(",");
    setValue(val[1]);

    const resultObject = await search(val[0], Country);
    $(".flag").find("img").attr("src", resultObject.unicode);
    $(".rs-picker-toggle").find(".rs-picker-toggle-value").text(val[1]);
  };

  function search(Country_id, myArray) {
    var find_data = parseInt(Country_id);
    for (var i = 0; i < myArray.length; i++) {
      if (myArray[i].CountryId === find_data) {
        return myArray[i];
      }
    }
  }

  const handleClick = () => {
    var parameter =
      "&phone=" +
      encodeURIComponent(Phone) +
      "&country_code=" +
      encodeURIComponent(value);

    fetch(SITEURL.FULLBASE_API + "forgotPassword", {
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
          history.push({
            pathname: "/ForgotPassOtpVerify",
            state: respJson.user,
          });
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
              <h4>Forgot Password</h4>
              <p>Enter existing email address</p>
            </div>
            <div class="cust-form-row">
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
                    onChange={(value) => changeHandler(value)}
                  />
                  <input
                    type="number"
                    name="phone"
                    placeholder="Mobile Number"
                    onChange={(e) => setPhone(e.target.value)}
                  />
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
                    value="SEND OTP"
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
export default ForgotPasswordScreen;
