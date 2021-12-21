import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import { MdArrowForward, MdQueryBuilder } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import logo from "../assets/images/create-asker-icon.png";
const StartAsker = (props) => {
  let history = useHistory();
  const [AskerDetails, setAskerDetails] = useState([]);
  const [UserProfile, setUserProfile] = useState([]);

  useEffect(() => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }
    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    setAskerDetails(props.data.asker);
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }

    return () => clearTimeout(timer);
  }, [props]);

  const handleContinue = () => {
    history.push({ pathname: "/GetReady", state: AskerDetails });
  };

  return (
    <Fragment>
        <div class="center-box solid-white-bg with-tooltrip m-auto default-flip flip-card-inner">
          <div class="center-box-inner remove-flip">
            <div class="create-asker asker-question">
              <div class="create-asker-form-flex">
                <div class="icon">
                  <img
                    src={logo}
                  />
                </div>
                <div class="cont">
                  <input
                    type="text"
                    placeholder="Who’s Asking?"
                    value={AskerDetails.title}
                    class="who-asking"
                    disabled
                  />
                  <textarea
                    placeholder="What’s it  about?"
                    value={AskerDetails.author}
                    class="what-about"
                    disabled
                  >
                    {AskerDetails.author}
                  </textarea>
                </div>
              </div>
              <div class="add-ques-list">
                <ul class="show-line">
                  {AskerDetails.length != 0
                    ? AskerDetails.question.map((item) => (
                        <li>
                          <textarea disabled>{item.question}</textarea>
                          <p>
                            <span class="material-icons">
                              <MdQueryBuilder />
                            </span>
                            <span class="text">{item.time}s</span>
                          </p>
                        </li>
                      ))
                    : null}
                </ul>
              </div>
              <div class="create-asker-bttn pos-rel" id="start_asker">
                <input
                  type="hidden"
                  name="user_id"
                  value="{{\Auth::user()->id}}"
                />
                <input
                  type="hidden"
                  name="asker_id"
                  value="{{$_REQUEST['id']}}"
                />
                <input
                  type="submit"
                  value="START ASKER"
                  id="gUMbtn"
                  onClick={() => handleContinue()}
                />
                <span class="material-icons">
                  <MdArrowForward />
                </span>
              </div>
            </div>
          </div>
        </div>
    </Fragment>
  );
};
export default StartAsker;
