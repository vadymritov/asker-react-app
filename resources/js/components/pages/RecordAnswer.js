import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory, Link } from "react-router-dom";
import { MdArrowForward, MdPlayArrow } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import LayoutOne from "../components/layout/LayoutOne";
import { ReactMediaRecorder } from "react-media-recorder";

import { useReactMediaRecorder } from "react-media-recorder";
import Webcam from "react-webcam";

import logo from "../assets/images/logo.svg";
const RecordAnswer = (props) => {
    let history = useHistory();
    const webcamRef = React.useRef(null);
    const mediaRecorderRef = React.useRef(null);
    const [capturing, setCapturing] = React.useState(false);
    const [recordedChunks, setRecordedChunks] = React.useState([]);
    const [UserProfile, setUserProfile] = useState([]);
    const [BlobUrl, setBlobUrl] = useState("");
    const [AskerData, setAskerData] = useState([]);
    const [DisableButton, setDisableButton] = useState(true);

    useEffect(() => {
        if ($(".flip-card-inner").hasClass("start-rotate")) {
            $(".flip-card-inner").removeClass("start-rotate");
        }
        const timer = setTimeout(() => {
            $(".flip-card-inner").addClass("start-rotate");
        }, 5);
        setAskerData(props.data.data);
        var user = JSON.parse(localStorage.getItem("User"));
        if (user) {
            setUserProfile(user);
        }
        startRecording();
        return () => clearTimeout(timer);
    }, [props]);

    const startRecording = () => {
        const timer = setTimeout(() => {
            console.log("start recording");
            handleStartCaptureClick();
        }, 2000);
        return () => clearTimeout(timer);
    };

    const handleStartCaptureClick = React.useCallback(() => {
        console.log("video record start");
        setCapturing(true);
        mediaRecorderRef.current = new MediaRecorder(webcamRef.current.stream, {
            mimeType: "video/webm",
        });
        mediaRecorderRef.current.addEventListener(
            "dataavailable",
            handleDataAvailable
        );
        mediaRecorderRef.current.start();
        const timer = setTimeout(() => {
            handleStopCaptureClick();
        }, 31000);
        return () => clearTimeout(timer);
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
        console.log("stop recording");
        mediaRecorderRef.current.stop();
        setCapturing(false);
        handleDownload();
    }, [mediaRecorderRef, webcamRef, setCapturing]);

    const handleDownload = React.useCallback(() => {
        if (recordedChunks.length) {
            const blob = new Blob(recordedChunks, {
                type: "video/webm",
            });
            console.log("blob url", blob);
            // const url = URL.createObjectURL(blob);
            // const a = document.createElement("a");
            // document.body.appendChild(a);
            // a.style = "display: none";
            // a.href = url;
            // a.download = "react-webcam-stream-capture.webm";
            // a.click();
            // window.URL.revokeObjectURL(url);
            // setRecordedChunks([]);
        }
    }, [recordedChunks]);

    return (
        <Fragment>
            <div class="dynamic-mobile-inner">
                <div class="sticky-user-name">
                    <div class="icon"></div>
                    <div class="cont">
                        <span>Brighton Art Gallery</span>
                        <h4>Cleaner Job in Brighton</h4>
                    </div>
                </div>
                <div class="modile-screen-border get-ready default-flip flip-card-inner">
                    <div class="screen">
                        <div class="head">
                            <Link to={"/"}>
                                <img alt="" src={logo} />
                            </Link>
                        </div>
                        <div class="wth-ans-inner-slider  remove-flip">
                            {/* <RecordView /> */}
                            <Webcam
                                audio={true}
                                ref={webcamRef}
                                className="display-video"
                            />
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
                                <button onClick={handleDownload}>
                                    Download
                                </button>
                            )} */}
                            <div class="cont">
                                <p>{props.data.data.title}</p>
                                <div class="start-video-progress">
                                    <div class="line"></div>
                                    <input
                                        type="hidden"
                                        name="answer"
                                        id="video_answer"
                                    />
                                    <input
                                        type="hidden"
                                        name="user_id"
                                        id="user_id"
                                        value="{{\Auth::user()->id}}"
                                    />
                                    <input
                                        type="hidden"
                                        name="asker_id"
                                        id="asker_id"
                                        value="{{$_REQUEST['asker_id']}}"
                                    />
                                    <input
                                        type="hidden"
                                        name="question_id"
                                        id="question_id"
                                        value="{{$question_data['question_id']}}"
                                    />
                                    <button
                                        type="submit"
                                        class="bttn"
                                        id="stop"
                                        onClick={() =>
                                            history.push({
                                                pathname: "/SubmitAnswer",
                                                state: props.data.AnswerData,
                                            })
                                        }
                                        disabled={DisableButton}
                                    >
                                        <span class="material-icons">
                                            <MdArrowForward />
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Fragment>
    );
};
export default RecordAnswer;
