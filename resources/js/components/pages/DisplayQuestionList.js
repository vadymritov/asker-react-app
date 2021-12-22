import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import { MdArrowForward, MdQueryBuilder, MdAdd } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import { Button, Modal } from "react-bootstrap";

import logo from "../assets/images/create-asker-icon.png";
const DisplayQuestion = (props) => {
    let location = useLocation();
    let history = useHistory();
    const [FirstAddQuestion, setFirstAddQuestion] = useState("");
    const [AddQuestion, setAddQuestion] = useState("");
    const [show, setShow] = useState(false);
    const [PreBuiltQuestions, setPreBuiltQuestions] = useState([]);

    useEffect(() => {
        getPreBuiltQuestions();
    }, [props]);
    const handleClose = () => {
        setShow(false);
    };
    const handleAddQuestion = () => {
        if ($("#addQuestionDatalist ul li a").hasClass("selected")) {
            $("#addQuestionDatalist ul li a").removeClass("selected");
        }
        setFirstAddQuestion(AddQuestion);
        setShow(false);
    };
    const handleShow = () => setShow(true);

    const removeeffect = () => {
        $(".ease-in-effect").addClass("ease-out-effect");
        const timer = setTimeout(() => {
            handleContinue();
        }, 1300);
        return timer;
    };

    const handleContinue = () => {
        var parameter =
            "&user_id=" +
            encodeURIComponent(props.data.asker.user_id) +
            "&asker_id=" +
            encodeURIComponent(props.data.asker.id) +
            "&question=" +
            encodeURIComponent(FirstAddQuestion);

        fetch(SITEURL.FULLBASE_API + "askerQuestion", {
            method: "POST",
            headers: {
                Accept: "application/json",
                "Content-Type":
                    "application/x-www-form-urlencoded;charset=UTF-8",
            },
            body: parameter,
        })
            .then((resp) => resp.json())
            .then((respJson) => {
                if (respJson.status === true) {
                    history.push({
                        pathname: "/PublishQuestion",
                        state: props.data,
                    });
                }
            })
            .catch((err) => {});
    };

    const selectQuestions = (id) => {
        setAddQuestion("");
        $("#addQuestionDatalist ul li a").removeClass("selected");
        $("#" + id).addClass("selected");

        var getHtml = $("#" + id)
            .find(".text-p")
            .text();
        setFirstAddQuestion(getHtml);
        $("#addQuestionTexarea").addClass("change");
    };
    const getPreBuiltQuestions = () => {
        fetch(SITEURL.FULLBASE_API + "questionList", {
            method: "POST",
            headers: {
                Accept: "application/json",
                "Content-Type":
                    "application/x-www-form-urlencoded;charset=UTF-8",
            },
        })
            .then((resp) => resp.json())
            .then((respJson) => {
                if (respJson.status === true) {
                    setPreBuiltQuestions(respJson.question);
                }
            })
            .catch((err) => {});
    };

    return (
        <Fragment>
            <div class="container ease-in-effect">
                <div class="row align-items-center">
                    <div class="col col-md-6">
                        <div class="center-box solid-white-bg with-tooltrip">
                            <div class="center-box-inner">
                                <div class="create-asker asker-question">
                                    <div class="create-asker-form-flex">
                                        <div class="icon">
                                            <img src={logo} />
                                        </div>
                                        <div class="cont">
                                            <p
                                                title="{{$asker_detail['title']}}"
                                                class="who-asking"
                                            >
                                                {props.data.title}
                                            </p>
                                            <h5
                                                title="{{$asker_detail['author']}}"
                                                class="what-about"
                                            >
                                                {props.data.author}
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="add-ques-list">
                                        <ul>
                                            <li class="not-selected">
                                                <div id="askerQuesDropdown">
                                                    <textarea
                                                        placeholder="What’s the Question?"
                                                        name="question"
                                                        readonly
                                                        id="addQuestionTexarea"
                                                        readOnly
                                                        value={FirstAddQuestion}
                                                    ></textarea>
                                                </div>
                                                <p>
                                                    <span class="material-icons">
                                                        <MdQueryBuilder />
                                                    </span>
                                                </p>
                                            </li>
                                        </ul>

                                        <a
                                            href="javascript:"
                                            class="add-question-bttn"
                                            id="addQuestionModalToggler"
                                            onClick={() => handleShow()}
                                        >
                                            <span class="material-icons">
                                                <MdAdd />
                                            </span>{" "}
                                            Add Question
                                        </a>
                                    </div>
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
                                    <div class="create-asker-bttn pos-rel">
                                        <input
                                            type="submit"
                                            value="CONTINUE"
                                            onClick={() => removeeffect()}
                                        />
                                        <span class="material-icons">
                                            <MdArrowForward />
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-6">
                        <div
                            id="addQuestionDatalist"
                            class="add-question-datalist hide-scrollbar"
                        >
                            <ul>
                                {PreBuiltQuestions.map((item) => (
                                    <li
                                        onClick={() => selectQuestions(item.id)}
                                    >
                                        <a href="javascript:" id={item.id}>
                                            <p class="text-p">
                                                {item.question}
                                            </p>
                                            <p class="icon-p">
                                                <span class="material-icons">
                                                    <MdQueryBuilder />
                                                </span>
                                                <span class="text">
                                                    {item.time}s
                                                </span>
                                            </p>
                                        </a>
                                    </li>
                                ))}
                            </ul>
                        </div>
                    </div>
                </div>
                <Modal
                    show={show}
                    onHide={handleClose}
                    dialogClassName="add-question"
                >
                    <Modal.Body>
                        <a href="javascript:" id="addQuestionModalClose"></a>
                        <div class="center-box solid-white-bg">
                            <div class="center-box-inner">
                                <div class="create-asker asker-question">
                                    <div class="create-asker-form-flex">
                                        <div class="icon">
                                            <img src={logo} />
                                        </div>
                                        <div class="cont">
                                            <p
                                                title={props.data.title}
                                                class="who-asking"
                                            >
                                                {props.data.title}
                                            </p>
                                            <h5
                                                title={props.data.author}
                                                class="what-about"
                                            >
                                                {props.data.author}
                                            </h5>
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
                                                        value={AddQuestion}
                                                        onChange={(e) =>
                                                            setAddQuestion(
                                                                e.target.value
                                                            )
                                                        }
                                                    />
                                                </div>
                                                <p>
                                                    <span class="material-icons">
                                                        <MdQueryBuilder />
                                                    </span>
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="create-asker-bttn pos-rel">
                                        <a
                                            href="javascript:"
                                            onClick={() => handleAddQuestion()}
                                            id="UpdateQuestionModalClose"
                                        >
                                            <span class="material-icons">
                                                <MdArrowForward />
                                            </span>
                                            CONTINUE
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Modal.Body>
                </Modal>
            </div>
        </Fragment>
    );
};
export default DisplayQuestion;
