import React, { useState, useEffect, Fragment } from "react";
import { Link, useLocation } from "react-router-dom";
import { MdOutlineShare, MdQueryBuilder, MdAdd } from "react-icons/md";
import $ from "jquery";
import Tab from "react-bootstrap/Tab";
import Nav from "react-bootstrap/Nav";
import SITEURL from "../SiteUrl.json";
import ViewQuestionTab from "./ViewQuestionTab";
import ViewAnswerTab from "./ViewAnswerTab";


import menuhumburg from "../assets/images/menu-humburg.png";
import logo from "../assets/images/create-asker-icon.png";

const DisplayQuestion = (props) => {
  const [NextQuestionList, setNextQuestionList] = useState([]);
  const [ViewAnswerData, setViewAnswerData] = useState([]);
  const [ViewAsker, setViewAsker] = useState([]);

  useEffect(async () => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    var data = await props.data;
    if (data) {
      setViewAnswerData(data);
      getNextQuestionList(data.asker_id, data.user_id);
      ViewAnswer(data.asker_id, data.user_id);
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
          setNextQuestionList(respJson);
          //   setNextlist(respJson.question_list);
        }
      })
      .catch((err) => {});
  };

  const ViewAnswer = async (asker_id, user_id) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(user_id) +
      "&asker_id=" +
      encodeURIComponent(asker_id);

    await fetch(SITEURL.FULLBASE_API + "viewAnswers", {
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
          console.log(respJson);
          setViewAsker(respJson.data);
        }
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip m-auto view-answer-center-bx default-flip flip-card-inner">
        <div class="center-box-inner remove-flip">
          <div class=" view-asker view-asker-header">
            <Link
              class="float-end"
              to={{
                pathname: "/AskerOption",
                state: {
                  ViewAnswerData,
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
                <p title="{{$asker_detail->title}}" class="who-asking">
                  {ViewAsker.asker_title}
                </p>
                <h5 title="{{$asker_detail->author}}" class="what-about">
                  {ViewAsker.asker_author}
                </h5>
              </div>
            </div>
            <div class="all-asker-tab">
              <Tab.Container
                defaultActiveKey="Question_Tab"
                // onSelect={(key) => checkkey(key)}
              >
                <div className="view-answer-tab">
                  <Nav variant="pills" className="view-answer-tabbar">
                    <Nav.Item>
                      <Nav.Link eventKey="Question_Tab">
                        <span>QUESTIONS</span>
                      </Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="Answer_Tab">
                        <span>ANSWERS</span>
                      </Nav.Link>
                    </Nav.Item>
                  </Nav>
                </div>
                <Tab.Content className="category-tabs-list">
                  <Tab.Pane eventKey="Question_Tab">
                    {<ViewQuestionTab questionList={NextQuestionList} />}
                  </Tab.Pane>

                  <Tab.Pane eventKey="Answer_Tab">
                    {
                      <ViewAnswerTab
                        askerDetails={ViewAsker}
                        asker={ViewAnswerData}
                      />
                    }
                  </Tab.Pane>
                </Tab.Content>
              </Tab.Container>
              {/* </div> */}
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default DisplayQuestion;
