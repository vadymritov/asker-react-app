import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import {
  MdEdit,
  MdPublish,
  MdShare,
  MdImportExport,
  MdNotifications,
  MdArchive,
} from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import close from "../assets/images/icons/close.svg";
import pencile from "../assets/images/icons/pencile.svg";
import Share from "../assets/images/icons/Share.svg";
import logout from "../assets/images/icons/logout.svg";
import chat from "../assets/images/icons/chat.svg";

const StartAsker = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [selectprivate, setSelectPrivate] = useState("");
  let history = useHistory();
  useEffect(async () => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    if (props.data.ViewAnswerData.active_status === "active") {
      setSelectPrivate("checked");
    } else {
      setSelectPrivate("");
    }
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }

    return () => clearTimeout(timer);
  }, [props]);

  const onChangePrivate = (e) => {
    $('input[name="toggleSwitchPrivateuser"]').each(function (
      chkboxIndex,
      checkbox
    ) {
      if (checkbox.checked == true) {
        activeAsker("a");
        setSelectPrivate("checked");
      } else {
        setSelectPrivate("");
        activeAsker("i");
      }
    });
  };

  const activeAsker = (status) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(UserProfile.id) +
      "&asker_id=" +
      encodeURIComponent(props.data.ViewAnswerData.asker_id) +
      "&asker_status=" +
      encodeURIComponent(status);


    fetch(SITEURL.FULLBASE_API + "inactiveAsker", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
      body: parameter,
    })
      .then((response) => response.json())
      .then((responseJson) => {
      })
      .catch((error) => {});
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip m-auto asker-option-page default-flip flip-card-inner">
        <div class="status-info-modal asker-option-modal active">
          <div class="inner-bx remove-flip">
            <div class="close" onClick={() => history.goBack()}>
              <span class="material-icons">
                <img
                  alt=""
                  className="before"
                  src={close}
                />
              </span>
            </div>
            <div class="list">
              <ul>
                <li>
                  <Link
                    class="float-end"
                    to={{
                      pathname: "/EditAsker",
                      state: props.data,
                    }}
                  >
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={pencile}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Edit</h4>
                      <p>Edit your Asker</p>
                    </div>
                  </Link>
                </li>
                <li>
                  <Link
                    class="float-end"
                    to={{
                      pathname: "/ShareAsker",
                      state: {
                        id: props.data.ViewAsker.asker_id,
                        user_id: props.data.ViewAnswerData.user_id,
                        asker_code: props.data.ViewAsker.asker_code,
                      },
                    }}
                  >
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={Share}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Publish & Share</h4>
                      <p>Invite people to answer </p>
                    </div>
                  </Link>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={pencile}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Collaborate</h4>
                      <p>Invite friends to collaborate</p>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={logout}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Export</h4>
                      <p>Export Asker contacts </p>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={chat}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Notifications</h4>
                      <p>Stay up to date with this Asker</p>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
            <div class="list">
              <ul>
                <li class="has-toogler">
                  <div class="icon">
                    <span class="material-icons">
                      <img
                        alt=""
                        className="before"
                        src={chat}
                      />
                    </span>
                  </div>
                  <div class="text">
                    <h4>Archive</h4>
                    <p>Take your Asker offline</p>
                  </div>
                  <div class="acdc-toogler">
                    <input
                      type="checkbox"
                      className="toggle-switch-checkbox"
                      name="toggleSwitchPrivateuser"
                      id={"user"}
                      onChange={(e) => onChangePrivate(e)}
                      value={"private"}
                      checked={selectprivate}
                    />
                    <span></span>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
