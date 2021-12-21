import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import { MdArrowForward, MdQueryBuilder, MdAdd, MdEdit } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import { Button, Modal } from "react-bootstrap";
import { setAllAsker } from "../redux/action/Asker_action";
import LayoutOne from "../components/layout/LayoutOne";

import logo from "../assets/images/create-asker-icon.png";
const DisplayQuestion = (props) => {
  const [FirstAddQuestion, setFirstAddQuestion] = useState("");
  const [EditQuestionshow, setEditQuestionshow] = useState(false);
  const [EditAskershow, setEditAskershow] = useState(false);
  const [Asker, setAsker] = useState([]);
  const [AskerData, setAskerData] = useState([]);
  const [QuestionsList, setQuestionsList] = useState([]);
  const [AskerTitle, setAskerTitle] = useState("");
  const [AskerAuthor, setAskerAuthor] = useState("");
  const [updateAskerTitle, setupdateAskerTitle] = useState("");
  const [updateAskerAuthor, setupdateAskerAuthor] = useState("");
  const [UpdateQuestions, setUpdateQuestion] = useState("");
  const [UpdateQuestionsID, setUpdateQuestionsID] = useState("");

  let history = useHistory();
  useEffect(() => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    var asker = props.data.ViewAnswerData;
    var akserdata = props.data.ViewAsker;
    // var asker = [];
    // var akserdata = [];
    if (akserdata && asker) {
      setAskerData(akserdata);
      setAsker(asker);
      setAskerTitle(akserdata.asker_title);
      setAskerAuthor(akserdata.asker_author);

      setupdateAskerTitle(akserdata.asker_title);
      setupdateAskerAuthor(akserdata.asker_author);
      getQuestionsList(asker.asker_id, asker.user_id);
    }
    return () => clearTimeout(timer);
  }, [props]);

  const handleClose = () => {
    setEditQuestionshow(false);
    setEditAskershow(false);
  };

  const getQuestionsList = (askerId, userId) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(userId) +
      "&asker_id=" +
      encodeURIComponent(askerId);

    fetch(SITEURL.FULLBASE_API + "askerQuestionList", {
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
          setQuestionsList(respJson.asker);
        }
      })
      .catch((err) => {});
  };

  const handleEditAsker = () => {
    setEditAskershow(true);
  };

  const updateAsker = () => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(Asker.user_id) +
      "&asker_id=" +
      encodeURIComponent(Asker.asker_id) +
      "&asker_title=" +
      encodeURIComponent(AskerTitle) +
      "&asker_author=" +
      encodeURIComponent(AskerAuthor);

    fetch(SITEURL.FULLBASE_API + "askerTitle", {
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
          handleClose();
          setupdateAskerTitle(respJson.asker_title);
          setupdateAskerAuthor(respJson.asker_author);
        }
      })
      .catch((err) => {});
  };

  const handleShow = (item) => {
    setUpdateQuestion(item.questions);
    setUpdateQuestionsID(item.questions_id);
    setEditQuestionshow(true);
  };

  const upadateQuestion = () => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(Asker.user_id) +
      "&asker_id=" +
      encodeURIComponent(Asker.asker_id) +
      "&question_id=" +
      encodeURIComponent(UpdateQuestionsID) +
      "&question=" +
      encodeURIComponent(UpdateQuestions);


    fetch(SITEURL.FULLBASE_API + "askerEditQuestion", {
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
          getQuestionsList(Asker.asker_id, Asker.user_id);
          handleClose();
          //   props.changescreen("Publish_Question_List");
        }
      })
      .catch((err) => {});
  };

  const addQuestion = () => {
    history.push({
      pathname: "/AskerQuestionList",
      state: {
        asker: { id: Asker.asker_id, user_id: Asker.user_id },
        author: AskerData.asker_author,
        title: AskerData.asker_title,
      },
    });
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip m-auto default-flip flip-card-inner">
        <div class="center-box-inner remove-flip">
          <div class="create-asker editable-ques">
            <div class="create-asker-form-flex">
              <div class="icon">
                <img
                  src={logo}
                />
              </div>
              <div
                class="cont"
                id="editAskerDtlModalToggler"
                onClick={() => handleEditAsker()}
              >
                <input
                  type="text"
                  placeholder="Who’s Asking?"
                  value={updateAskerTitle}
                  class="who-asking"
                  disabled
                />
                <textarea
                  placeholder="What’s it  about?"
                  value={updateAskerAuthor}
                  class="what-about"
                  disabled
                >
                  {updateAskerAuthor}
                </textarea>
              </div>
            </div>
            <div class="add-ques-list editable-list pointer-none">
              <ul class="show-line">
                {QuestionsList.map((item) => (
                  <li
                    class="not-selected list-item editAskerQuesModalToggler"
                    onClick={() => handleShow(item)}
                    data-id="{{$que_value['id']}}"
                    data-question="{{$que_value['question']}}"
                  >
                    <div class="edit-div">
                      <a class="material-icons">
                        <MdEdit />
                      </a>
                    </div>
                    <input
                      type="hidden"
                      name="question_id"
                      class="question_id"
                    />

                    <textarea value={item.questions} disabled>
                      {item.questions}
                    </textarea>
                    <p>
                      <span class="material-icons">
                        <MdQueryBuilder />
                      </span>
                      <span class="text">{item.time}</span>
                    </p>
                  </li>
                ))}
              </ul>
              <a
                href="javascript:"
                onClick={() => addQuestion()}
                class="add-question-bttn"
                id="addQuestionModalToggler"
              >
                <span class="material-icons">
                  <MdAdd />
                </span>{" "}
                Add Question
              </a>
            </div>
          </div>
        </div>
      </div>

      {/* Edit question modal start */}
      <Modal
        show={EditQuestionshow}
        onHide={handleClose}
        dialogClassName="add-question"
      >
        <Modal.Body>
          <a href="#" id="addQuestionModalClose"></a>
          <div class="center-box solid-white-bg">
            <div class="center-box-inner">
              <div class="create-asker asker-question">
                <div class="create-asker-form-flex">
                  <div class="icon">
                    <img
                      src={logo}
                    />
                  </div>
                  <div class="cont" id="editAskerDtlModalToggler">
                    <input
                      type="text"
                      placeholder="Who’s Asking?"
                      value={AskerData.asker_title}
                      class="who-asking"
                      disabled
                    />
                    <textarea
                      placeholder="What’s it  about?"
                      value={AskerData.asker_author}
                      class="what-about"
                      disabled
                    >
                      {AskerData.asker_author}
                    </textarea>
                  </div>
                </div>
                <div class="add-ques-list">
                  <ul class="mb-3">
                    <li class="not-selected edit-question-list">
                      <div class="text-filled edit-question">
                        <textarea
                          class="add-question-text"
                          name="question_text"
                          placeholder="What's the Question?"
                          value={UpdateQuestions}
                          onChange={(e) => setUpdateQuestion(e.target.value)}
                        />
                        {/* <input
                          type="text"
                          class="add-question-text"
                          name="question_text"
                          placeholder="What's the Question?"
                          value={UpdateQuestions}
                          onChange={(e) => setUpdateQuestion(e.target.value)}
                        /> */}
                      </div>
                      <p>
                        <span class="material-icons">
                          <MdQueryBuilder />
                        </span>
                      </p>
                    </li>
                  </ul>
                </div>
                <div class="create-asker-bttn pos-rel publish">
                  <a
                    href="javascript:"
                    onClick={() => upadateQuestion()}
                    id="UpdateQuestionModalClose"
                  >
                    <span class="material-icons">
                      <MdArrowForward />
                    </span>
                    UPDATE
                  </a>
                </div>
              </div>
            </div>
          </div>
        </Modal.Body>
      </Modal>
      {/* Edit question modal end */}

      {/* Edit asker modal  start*/}
      <Modal
        show={EditAskershow}
        onHide={handleClose}
        dialogClassName="add-question"
      >
        <Modal.Body>
          <a href="#" id="addQuestionModalClose"></a>
          <div class="center-box solid-white-bg">
            <div class="center-box-inner">
              <div class="create-asker editable-ques">
                <div class="create-asker-form-flex">
                  <div class="icon">
                    <img
                      src={logo}
                    />
                  </div>
                  <div class="cont" id="editAskerDtlModalToggler">
                    <input
                      type="text"
                      placeholder="Who’s Asking?"
                      value={AskerTitle}
                      class="who-asking"
                      onChange={(e) => setAskerTitle(e.target.value)}
                    />
                    <textarea
                      placeholder="What’s it  about?"
                      value={AskerAuthor}
                      class="what-about"
                      onChange={(e) => setAskerAuthor(e.target.value)}
                    >
                      {AskerAuthor}
                    </textarea>
                  </div>
                </div>
                <div class="create-asker-bttn pos-rel publish">
                  <a
                    href="javascript:"
                    onClick={() => updateAsker()}
                    id="UpdateQuestionModalClose"
                  >
                    <span class="material-icons">
                      <MdArrowForward />
                    </span>
                    UPDATE
                  </a>
                </div>
              </div>
            </div>
          </div>
        </Modal.Body>
      </Modal>
      {/* Edit asker modal end */}
    </Fragment>
  );
};
export default DisplayQuestion;
