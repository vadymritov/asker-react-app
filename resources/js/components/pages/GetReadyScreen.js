import React, { useState, useEffect, useRef, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import { MdArrowForward, MdPlayArrow } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import { ReactMediaRecorder } from "react-media-recorder";

import { useReactMediaRecorder } from "react-media-recorder";
import Webcam from "react-webcam";

import logo from "../assets/images/logo.svg";

const GetReadyScreen = (props) => {
    const webcamRef = React.useRef(null);

    const mediaRecorderRef = React.useRef(null);
    const [capturing, setCapturing] = React.useState(false);
    const [recordedChunks, setRecordedChunks] = React.useState([]);

    const handleStartCaptureClick = React.useCallback(() => {
        setCapturing(true);
        mediaRecorderRef.current = new MediaRecorder(webcamRef.current.stream, {
            mimeType: "video/webm",
        });
        mediaRecorderRef.current.addEventListener(
            "dataavailable",
            handleDataAvailable
        );
        mediaRecorderRef.current.start();
    }, [webcamRef, setCapturing, mediaRecorderRef]);

    const handleDataAvailable = React.useCallback(
        ({ data }) => {
            if (data.size > 0) {
                setRecordedChunks((prev) => prev.concat(data));
            }
        },
        [setRecordedChunks]
    );

    const handleStopCaptureClick = React.useCallback(() => {
        mediaRecorderRef.current.stop();
        setCapturing(false);
    }, [mediaRecorderRef, webcamRef, setCapturing]);

    const handleDownload = React.useCallback(() => {
        if (recordedChunks.length) {
            const blob = new Blob(recordedChunks, {
                type: "video/webm",
            });
            const url = URL.createObjectURL(blob);
            const a = document.createElement("a");
            document.body.appendChild(a);
            a.style = "display: none";
            a.href = url;
            a.download = "react-webcam-stream-capture.webm";
            a.click();
            window.URL.revokeObjectURL(url);
            setRecordedChunks([]);
        }
    }, [recordedChunks]);

    let history = useHistory();
    const [UserProfile, setUserProfile] = useState([]);
    const [Loader, setLoader] = useState(false);
    const [AnswerData, setAnswerData] = useState([]);

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
                "Content-Type":
                    "application/x-www-form-urlencoded;charset=UTF-8",
            },
            body: parameter,
        })
            .then((resp) => resp.json())
            .then((respJson) => {
                if (respJson.status === true) {
                    setAnswerData(respJson);
                }
            });
    };

    const countDown = () => {
        setLoader(true);
        var timeleft = 3;
        $(".ready-loader").show();
        var downloadTimer = setInterval(function () {
            if (timeleft <= 0) {
                clearInterval(downloadTimer);
                // var href = $("#countStart").data("id");
                if (AnswerData.total_question != 0) {
                    for (
                        let index = 0;
                        index < AnswerData.total_question;
                        index++
                    ) {
                        // const element = array[index];
                        if (
                            AnswerData.question_list[index].submitted_answer ===
                            "n"
                        ) {
                            history.push({
                                pathname: "/RecordAnswer",
                                state: {
                                    data: AnswerData.question_list[index],
                                    AnswerData,
                                },
                            });
                            return AnswerData.question_list[index];
                        }
                    }
                }
            } else {
                document.getElementById("countdown").innerHTML = timeleft;
            }
            timeleft -= 1;
        }, 1000);
    };

    return (
        <Fragment>
            <div class="modile-screen-border get-ready default-flip flip-card-inner">
                <div class="screen ">
                    <div class="head video-head">
                        <Link to={"/"}>
                            <img alt="" src={logo} />
                        </Link>
                    </div>
                    <div class="wth-ans-inner-slider  remove-flip">
                        <Webcam audio={true} ref={webcamRef}  className="display-video"/>
                        {/* {capturing ? (
                            <button onClick={handleStopCaptureClick}>
                                Stop Capture
                            </button>
                        ) : (
                            <button onClick={handleStartCaptureClick}>
                                Start Capture
                            </button>
                        )}
                        {recordedChunks.length > 0 && (
                            <button onClick={handleDownload}>Download</button>
                        )} */}

                        {Loader ? (
                            <div class="ready-loader-wrapper">
                                <div class="ready-loader">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <p id="countdown">3</p>
                                </div>
                            </div>
                        ) : null}
                        <div class="cont">
                            <div class="create-asker-bttn pos-rel">
                                <div
                                    class="create-asker-bttn pos-rel"
                                    id="start"
                                >
                                    <a
                                        href="javascript:"
                                        data-id="{{route('asker.record_answer',['asker_id'=>$_REQUEST['asker_id'],'user_id'=>\Auth::user()->id])}}"
                                        id="countStart"
                                        onClick={() => countDown()}
                                    >
                                        <span class="material-icons">
                                            <MdArrowForward />
                                        </span>{" "}
                                        I’M READY
                                    </a>
                                </div>
                                <span class="material-icons">
                                    <MdPlayArrow />
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Fragment>
    );
};
export default GetReadyScreen;
