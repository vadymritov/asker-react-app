import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import { MdArrowForward } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import logo from "../assets/images/create-asker-icon.png";
const StartAsker = (props) => {
  let history = useHistory();
  const [JobTitle, setJobTitle] = useState("");
  const [JobAuthor, setJobAuthor] = useState("");
  const [UserProfile, setUserProfile] = useState([]);

  useEffect(() => {
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }
  }, []);

  const removeeffect = () => {
    $(".center-box").addClass("ease-out-effect");
    const timer = setTimeout(() => {
      handleContinue();
    }, 1200);
    return timer;
  };

  const handleContinue = () => {
    var parameter =
      "&job_title=" +
      encodeURIComponent(JobTitle) +
      "&job_author=" +
      encodeURIComponent(JobAuthor) +
      "&user_id=" +
      encodeURIComponent(UserProfile.id);

    fetch(SITEURL.FULLBASE_API + "createAsker", {
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
          var asker = {
            asker: respJson.asker,
            author: JobAuthor,
            title: JobTitle,
          };
          history.push({ pathname: "/AskerQuestionList", state: asker });
        }
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip ease-in-effect">
        <div class="center-box-inner">
          <div class="create-asker">
            <form>
              <div class="create-asker-form-flex">
                <div class="icon">
                  <img
                    src={logo}
                  />
                </div>
                <div class="cont">
                  <input
                    type="text"
                    name="job_title"
                    placeholder="Who’s Asking?"
                    class="who-asking"
                    onChange={(event) => setJobTitle(event.target.value)}
                    required
                  />
                  <textarea
                    name="job_author"
                    placeholder="What’s it  about?"
                    class="what-about"
                    onChange={(event) => setJobAuthor(event.target.value)}
                    required
                  ></textarea>
                </div>
                <input
                  type="hidden"
                  name="user_id"
                  value="{{\Auth::user()->id}}"
                />
              </div>
              <div class="create-asker-bttn pos-rel ">
                <input
                  type="button"
                  value="CONTINUE"
                  onClick={() => removeeffect()}
                />
                <span class="material-icons">
                  <MdArrowForward />
                </span>
              </div>
            </form>

            <div class="message_box" style={{ margin: "10px 20px" }} />
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
