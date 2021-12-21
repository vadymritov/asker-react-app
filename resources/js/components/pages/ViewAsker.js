import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import { MdPlayArrow, MdQueryBuilder } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import menuhumburg from "../assets/images/menu-humburg.png";
import logo from "../assets/images/create-asker-icon.png";
const StartAsker = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [QuestionList, setQuestionList] = useState([]);
  const [AskerData, setAskerData] = useState([]);
  const [ViewAskerData, setViewAskerData] = useState([]);
  const [ViewAsker, setViewAsker] = useState([]);

  let history = useHistory();
  useEffect(async () => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    var user = JSON.parse(localStorage.getItem("User"));
    var askerdata = props.data.ViewAskerData;
    await setViewAskerData(props.data.ViewAskerData);
    await setViewAsker(props.data.ViewAsker);

    if (user) {
      setUserProfile(user);
    }
    if (askerdata) {
      setAskerData(askerdata);
      getNextQuestionList(
        askerdata.asker_id,
        props.data.item.candidate_user_id
      );
    }

    return () => clearTimeout(timer);
  }, [props]);

  const getNextQuestionList = async (asker_id, user_id) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(user_id) +
      "&asker_id=" +
      encodeURIComponent(asker_id);

    await fetch(SITEURL.FULLBASE_API + "nextQuestionList", {
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
          setQuestionList(respJson.question_list);
        }
      })
      .catch((err) => {});
  };

  const hadleVideoPlay = () => {
    history.push({
      pathname: "/WatchAnswer",
      state: {
        asker_id: ViewAskerData.asker_id,
        user_id: props.data.item.candidate_user_id,
      },
    });
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip m-auto default-flip flip-card-inner">
        <div class="center-box-inner remove-flip">
          <div class=" view-asker">
            <Link
              class="float-end"
              to={{
                pathname: "/AskerOption",
                state: {
                  ViewAnswerData: ViewAskerData,
                  ViewAsker,
                },
              }}
            >
              <img src={menuhumburg} />
            </Link>
          </div>
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
                  value={ViewAsker.asker_title}
                  class="who-asking"
                  disabled
                />
                <textarea
                  placeholder="What’s it  about?"
                  value={ViewAsker.asker_author}
                  class="what-about"
                  disabled
                ></textarea>
              </div>
            </div>

            <div class="add-ques-list">
              <ul class="show-line">
                {QuestionList
                  ? QuestionList.map((item) => (
                      <li>
                        <textarea value={item.title} disabled>
                          {item.title}
                        </textarea>
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
            <div class="create-asker-bttn pos-rel">
              {/* <input
                type="hidden"
                name="user_id"
                value="{{$a_value['user_id']}}"
              />
              <input
                type="hidden"
                name="asker_id"
                value="{{$_REQUEST['asker_id']}}"
              /> */}

              <input
                type="button"
                value="VIEW ANSWERS"
                onClick={() => hadleVideoPlay()}
              />
              <span class="material-icons">
                <MdPlayArrow />
              </span>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
