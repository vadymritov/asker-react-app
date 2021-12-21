import React, { useState, useEffect, Fragment } from "react";
import { useLocation } from "react-router-dom";
import $ from "jquery";
import BottomTabBar from "../other/BottomTabBar";
import Tab from "react-bootstrap/Tab";
import { useSelector, useDispatch } from "react-redux";

import AskerHomeStatic from "./AskerHomeStatic";
import PromotionVideo from "./PromotionVideo";
import AllAskerMain from "./AllAskerMain";
import AskerSearch from "./AskerSearch";
import LoginScreen from "../../pages/LoginScreen";
import SignUpScreen from "../../pages/SignUpScreen";
import SITEURL from "../../SiteUrl.json";

import { setPromotionVideo } from "../../redux/action/PromotionVideo_action";

const AskerScreen = (props) => {
  const [LoginStatus, setLoginStatus] = useState(null);
  const Selector = useSelector((state) => state);
  const dispatch = useDispatch();

  useEffect(() => {
    getLocalStorage();
    getPromotionVideo();
  }, [props]);

  const getPromotionVideo = () => {
    fetch(SITEURL.FULLBASE_API + "promotionalVideo", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
    })
      .then((resp) => resp.json())
      .then((respJson) => {
        if (respJson.status === true) {
          dispatch(setPromotionVideo(respJson.video));
        }
      })
      .catch((err) => {});
  };

  const getLocalStorage = async () => {
    var userdata =await JSON.parse(localStorage.getItem("User"));
    var user = localStorage.getItem("UserProfile");
    if (user) {
      setLoginStatus(true);
    } else {
      setLoginStatus(false);
    }
  };
  return (
    <Fragment>
      {/* <div class="dynamic-mobile-inner hasHomePage">
        <Tab.Container
          defaultActiveKey="Home_tab"
          onSelect={(key) => checkkey(key)}
        >
          <BottomTabBar filename="AskerHome" />
          <Tab.Content className="description-review-bottom">
            <Tab.Pane eventKey="Home_tab">
              {!LoginStatus ? <AskerHomeStatic /> : <PromotionVideo />}
            </Tab.Pane>

            <Tab.Pane eventKey="Ask_Tab">
              {!LoginStatus ? (
                <LoginScreen
                  checkLogin={(status) => LoginStatusCheck(status)}
                />
              ) : (
                <AllAskerMain changeScreen={"homeScreen"}/>
              )}
            </Tab.Pane>

            <Tab.Pane eventKey="Answer_Tab">
              {!LoginStatus ? (
                <SignUpScreen />
              ) : (
                <AskerSearch categorys={(e) => findcategory(e)} />
              )}
            </Tab.Pane>
          </Tab.Content>
        </Tab.Container>
      </div> */}
    </Fragment>
  );
};
export default AskerScreen;
