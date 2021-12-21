import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import { MdArrowForward, MdQueryBuilder, MdAdd } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

import logo from "../assets/images/create-asker-icon.png";

const DisplayQuestion = (props) => {
  let history = useHistory();
  const [NextQuestionList, setNextQuestionList] = useState([]);
  const [Publishasker, setPublishasker] = useState([]);
  const [Nextlist, setNextlist] = useState([]);

  useEffect(async () => {
    await getNextQuestionList();
  }, [props]);

  const addQuestions = () => {
    history.push({
      pathname: "/AskerQuestionList",
      state: props.data,
    });
  };

  const getNextQuestionList = async () => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(props.data.asker.user_id) +
      "&asker_id=" +
      encodeURIComponent(props.data.asker.id);

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
          setNextQuestionList(respJson);
          setNextlist(respJson.question_list);
        }
      })
      .catch((err) => {});
  };

  const removeeffect = (askerid, userid) => {
    $(".ease-in-effect").addClass("ease-out-effect");
    const timer = setTimeout(() => {
      publicshAsker(askerid, userid);
    }, 1300);
    return timer;
  };

  const publicshAsker = async (asker_id, user_id) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(user_id) +
      "&asker_id=" +
      encodeURIComponent(asker_id);

    await fetch(SITEURL.FULLBASE_API + "publishAsker", {
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
            pathname: "/ShareAsker",
            state: respJson.asker,
          });
        }
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="container ">
        <div class="center-box solid-white-bg with-tooltrip m-auto ease-in-effect">
          <div class="center-box-inner">
            <div class="create-asker asker-question">
              <div class="create-asker-form-flex">
                <div class="icon">
                  <img
                    src={logo}
                  />
                </div>
                <div class="cont">
                  <p title="{{$asker->title}}" class="who-asking">
                    {props.data.title}
                  </p>
                  <h5 value="{{$asker->author}}" class="what-about">
                    {props.data.author}
                  </h5>
                </div>
              </div>
              <div class="add-ques-list">
                <ul class="show-line">
                  {NextQuestionList.total_question != 0
                    ? Nextlist.map((item) => (
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

                  <li class="not-selected">
                    <a href="javascript:">
                      <span class="text">What’s the Question?</span>
                      <p>
                        <span class="material-icons">
                          <MdQueryBuilder />
                        </span>
                      </p>
                    </a>
                  </li>
                </ul>

                <a
                  href="javascipt:"
                  onClick={() => addQuestions()}
                  class="add-question-bttn"
                >
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
                  <span class="material-icons">
                    <MdAdd />
                  </span>{" "}
                  Add Question
                </a>
              </div>
              <div class="create-asker-bttn pos-rel publish">
                <input
                  type="button"
                  value="PUBLISH ASKER"
                  onClick={() =>
                    removeeffect(props.data.asker.id, props.data.asker.user_id)
                  }
                />
                <span class="material-icons">
                  <MdArrowForward />
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default DisplayQuestion;
