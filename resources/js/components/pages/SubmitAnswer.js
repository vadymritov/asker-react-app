import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import {
  MdArrowForward,
  MdCheck,
  MdPlayArrow,
  MdQueryBuilder,
  MdRefresh,
} from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import logo from "../assets/images/create-asker-icon.png";
const SubmitAnswer = (props) => {
  let history = useHistory();
  const [UserProfile, setUserProfile] = useState([]);
  const [AnswerData, setAnswerData] = useState([]);
  const [QuestionList, setQuestionList] = useState([]);
  const [SubmitAnswerButton, setSubmitAnswerButton] = useState();

  useEffect(() => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }
    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
      nextQuestionList(props.data.asker_id, user.id);
    }
    return () => clearTimeout(timer);
  }, [props]);

  const nextQuestionList = async (asker_id, user_id) => {
    var parameter =
      "&asker_id=" +
      encodeURIComponent(asker_id) +
      "&user_id=" +
      encodeURIComponent(user_id);

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
          setAnswerData(respJson);
          setQuestionList(respJson.question_list);
          respJson.question_list.find(function (element) {
            if (element.submitted_answer == "n") {
              setSubmitAnswerButton(false);
            }
          });
        }
      });
  };

  const completeAnswer = async () => {
    var parameter =
      "&asker_id=" +
      encodeURIComponent(AnswerData.asker_id) +
      "&user_id=" +
      encodeURIComponent(AnswerData.user_id) +
      "&total_questions=" +
      encodeURIComponent(AnswerData.total_question) +
      "&completed_questions=" +
      encodeURIComponent(AnswerData.total_answered_question);

    await fetch(SITEURL.FULLBASE_API + "sendAnswers", {
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
          history.push({ pathname: "/PromotionVideo" });
        }
      });
  };

  return (
    <Fragment>
        <div class="dynamic-mobile-inner">
          <div class="sticky-user-name">
            <div class="icon">
              <img src={logo} />
            </div>
            <div class="cont">
              <span>Brighton Art Gallery</span>
              <h4>Cleaner Job in Brighton</h4>
            </div>
          </div>

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
                      value="Brighton Art Gallery"
                      class="who-asking"
                      disabled
                    />
                    <textarea
                      placeholder="What’s it  about?"
                      value="Cleaner Job in Brighton"
                      class="what-about"
                      disabled
                    >
                      Cleaner Job in Brighton
                    </textarea>
                  </div>
                </div>
                <div class="add-ques-list">
                  <ul class="show-line">
                    {QuestionList.map((item) => (
                      <li
                        className={`${
                          item.submitted_answer === "y"
                            ? "completed-checked"
                            : ""
                        }`}
                      >
                        <div class="checked-div">
                          <span class="material-icons">
                            <MdCheck />
                          </span>
                        </div>
                        <textarea
                          value={item.title}
                          disabled
                        >
                          {item.title}
                        </textarea>
                        <p>
                          <span class="material-icons">
                            <MdQueryBuilder />
                          </span>
                          <span class="text">{item.time}s</span>
                        </p>
                        <div class="retry-div">
                          <a href="#" class="material-icons">
                            <MdRefresh />
                          </a>
                        </div>
                      </li>
                    ))}
                  </ul>
                </div>
                {SubmitAnswerButton === false ? (
                  <div class="create-asker-bttn pos-rel">
                    <Link
                      to={{
                        pathname: process.env.PUBLIC_URL + "/GetReady",
                        state: { asker_id: AnswerData.asker_id },
                      }}
                    >
                      <span class="material-icons">
                        <MdPlayArrow />
                      </span>{" "}
                      NEXT QUESTION
                    </Link>
                  </div>
                ) : (
                  <div class="create-asker-bttn pos-rel">
                    <input
                      type="hidden"
                      name="completed_questions"
                      value="{{$data['total_answered_question']}}"
                    />
                    <input
                      type="hidden"
                      name="total_questions"
                      value="{{$data['total_question']}}"
                    />
                    <input
                      type="submit"
                      value="COMPLETE ASKER"
                      onClick={() => completeAnswer()}
                    />
                    <span class="material-icons">
                      <MdPlayArrow />
                    </span>
                  </div>
                )}
              </div>
            </div>
          </div>
        </div>
    </Fragment>
  );
};
export default SubmitAnswer;
