import React, { useState, useEffect, Fragment } from "react";
import { useLocation } from "react-router-dom";
import { MdQueryBuilder } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

const StartAsker = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [QuestionList, setQuestionList] = useState([]);

  useEffect(async () => {
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }
    await setQuestionList(props.questionList.question_list);
  }, [props]);

  return (
    <Fragment>
      <div class="category-tabs-preview hide-scrollbar">
        <div class="row ques-ans-tabs-preview-row categoryQuestions pb-0">
          <div class="col col-12 category-tabs-panel">
            <div class="inner-bx">
              <div class="add-ques-list head">
                <ul class="show-line">
                  <li>
                    <h4>Questions?</h4>
                    <p>
                      <span class="material-icons">
                        <MdQueryBuilder />
                      </span>
                    </p>
                  </li>
                </ul>
              </div>
              <div class="add-ques-list">
                <ul class="show-line">
                  {QuestionList
                    ? QuestionList.map((item) => (
                        <li>
                          <h5 title="{{$que_value['questions']}}">
                            {item.title}
                          </h5>
                          <p>
                            <span class="material-icons">
                              <MdQueryBuilder />
                            </span>
                            <input
                              type="hidden"
                              name="question_id"
                              value="{{$que_value['questions_id']}}"
                            />
                            <span class="text">{item.time}s</span>
                          </p>
                        </li>
                      ))
                    : null}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
