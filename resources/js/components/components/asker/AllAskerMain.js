import React, { useState, useEffect, Fragment } from "react";
import { useLocation, Link } from "react-router-dom";
import { MdOutlineMenu, MdAdd, MdArrowForward } from "react-icons/md";
import Tab from "react-bootstrap/Tab";
import $ from "jquery";

import AllAskerTabBar from "../other/AllAskerTabBar";
import AllAsker from "./AllAsker";
import ActiveAsker from "./ActiveAsker";
import AchivedAsker from "./AchivedAsker";
import SITEURL from "../../SiteUrl.json";

import logo from "../../assets/images/logo.svg";
const AllAskerMain = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [ShareAskerData, setShareAskerData] = useState([]);
  const [Viewanswers, setViewanswers] = useState([]);
  const [AllAskerdata, setAllAskerdata] = useState([]);
  const [ActiveAskerdata, setActiveAskerdata] = useState([]);
  const [ArchivedAskerdata, setArchivedAskerdata] = useState([]);

  useEffect(() => {
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
      getAllData(user.id);
    }
  }, [props]);

  const getAllData = (id) => {
    getAllAsker(id);
    getActiveAsker(id);
    getAchivedAsker(id);
  };

  const getAllAsker = (id) => {
    var parameter = "&user_id=" + encodeURIComponent(id);

    fetch(SITEURL.FULLBASE_API + "allAsker", {
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
          setAllAskerdata(respJson);
        }
      })
      .catch((err) => {});
  };

  const getActiveAsker = (id) => {
    var parameter = "&user_id=" + encodeURIComponent(id);

    fetch(SITEURL.FULLBASE_API + "activeAsker", {
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
          setActiveAskerdata(respJson)
        }
      })
      .catch((err) => {});
  };

  const getAchivedAsker = (id) => {
    var parameter = "&user_id=" + encodeURIComponent(id);

    fetch(SITEURL.FULLBASE_API + "archivedAsker", {
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
          setArchivedAskerdata(respJson)
        }
      })
      .catch((err) => {});
  };

  const checkkey = (key) => {
    if (key === "All_Tab") {
      getAllAsker(UserProfile.id);
    } else if (key === "Active_Tab") {
      getActiveAsker(UserProfile.id);
    } else if (key === "Archived_Tab") {
      getAchivedAsker(UserProfile.id);
    }
  };

  const shareAskerdata = (data) => {
    setShareAskerData(data);
  };

  const viewanswer = (data) => {
    setViewanswers(data);
  };

  return (
    <Fragment>
      <Link
        to={"/Askersetting"}
        class="redirect-setting-page-toggler"
      >
        <span class="material-icons">
          <MdOutlineMenu />
        </span>
      </Link>

      <div class="center-box white-theme-bg all-asker-center-bx ease-in-effect">
        <div class="all-asker-sec">
          <div class="all-asker-head">
            <img alt="" src={logo} />
          </div>
        </div>
        <div class="all-asker-tab">
          <div class="">
            <Tab.Container
              defaultActiveKey="All_Tab"
              onSelect={(key) => checkkey(key)}
            >
              <AllAskerTabBar filename="AskerHome" />
              <Tab.Content className="category-tabs-preview hide-scrollbar">
                <Tab.Pane eventKey="All_Tab">
                  <AllAsker
                    AllAsker={
                      AllAskerdata.length === 0
                        ? []
                        : AllAskerdata.asker
                    }
                    ShareAsker={(e) => shareAskerdata(e)}
                    ViewAnswer={(e) => viewanswer(e)}
                  />
                </Tab.Pane>

                <Tab.Pane eventKey="Active_Tab">
                  {
                    <ActiveAsker
                      ActiveAsker={
                        ActiveAskerdata.length === 0
                          ? []
                          : ActiveAskerdata.asker
                      }
                      ShareAsker={(e) => shareAskerdata(e)}
                      ViewAnswer={(e) => viewanswer(e)}
                    />
                  }
                </Tab.Pane>

                <Tab.Pane eventKey="Archived_Tab">
                  {
                    <AchivedAsker
                      AchivedAsker={
                        ArchivedAskerdata.length === 0
                          ? []
                          : ArchivedAskerdata.asker
                      }
                    />
                  }
                </Tab.Pane>
              </Tab.Content>
            </Tab.Container>
          </div>
        </div>
        <div class="category-tabs-preview hide-scrollbar"></div>
      </div>
      <div class="create-asker-bttn ease-in-effect">
        <Link to={"/Create_asker"}>
          CREATE ASKER <MdAdd class="material-icons" />
        </Link>
        <div className="ask-bottom-slide"></div>
      </div>
    </Fragment>
  );
};
export default AllAskerMain;
