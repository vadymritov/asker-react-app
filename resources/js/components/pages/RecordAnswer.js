import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory , Link } from "react-router-dom";
import { MdArrowForward, MdPlayArrow } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import LayoutOne from "../components/layout/LayoutOne";
import { ReactMediaRecorder } from "react-media-recorder";

import { useReactMediaRecorder } from "react-media-recorder";

import logo from "../assets/images/logo.svg";
const RecordAnswer = (props) => {
  let history = useHistory();
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
    return () => clearTimeout(timer);
  }, [props]);

  function LiveStreamPreview({ stream }) {
    let videoPreviewRef = React.useRef();

    React.useEffect(() => {
      if (videoPreviewRef.current && stream) {
        videoPreviewRef.current.srcObject = stream;
      }
    }, [stream]);

    if (!stream) {
      return null;
    }

    return <video ref={videoPreviewRef} autoPlay className="video-preview" />;
  }

  const RecordView = () => {
    const confVideo = {
      width: 1080,
      height: 720,
      frameRate: 20,
    };

    const mediaRecorderOptions = {
      mimeType: "video/webm",
    };

    const blobPropertyBag = {
      type: "video/webm",
    };

    const {
      status,
      startRecording,
      stopRecording,
      previewStream,
      mediaBlobUrl,
    } = useReactMediaRecorder({
      video: true,
      mediaRecorderOptions: mediaRecorderOptions,
      blobPropertyBag: blobPropertyBag,
      onStop: async function (blobUrl, blob) {
        const audioBlob = await fetch(blobUrl).then((r) => r.blob());
        const audiofile = new File([audioBlob], "audiofile.mp4", {
          type: "video/mp4",
        });

        var asker_id = props.data.AnswerData.asker_id;
        var question_id = props.data.data.question_id;
        var user_id = UserProfile.id;
        var fdata = new FormData();
        // fdata.append("file", blob);
        fdata.append("answer", audiofile);
        fdata.append("asker_id", asker_id);
        fdata.append("question_id", question_id);
        fdata.append("user_id", user_id);

        await $.ajax({
          type: "POST",
          //enctype: 'multipart/form-data',
          url: SITEURL.FULLBASE_API + "submitAnswer",
          data: fdata,
          //dataType:'text',
          processData: false,
          contentType: false,
          cache: false,
          success: function (fdata) {
            setDisableButton(false);
          },
        });
      },
    });

    useEffect(() => {
      startRecording();
      const timer = setTimeout(() => {
        stopRecording();
      }, 31000);
      return () => clearTimeout(timer);
    }, []);

    return (
      <>
        {/* <div>
          <p>{status}</p>
          <button onClick={startRecording}>Start Recording</button>
          <button onClick={stopRecording}>Stop Recording</button>
        </div> */}
        <video
          src={mediaBlobUrl}
          controls
          autoplay
          loop
          className="recorded-Video"
        />
        <LiveStreamPreview stream={previewStream} />
      </>
    );
  };

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
              <RecordView />

              <div class="cont">
                <p>{props.data.data.title}</p>
                <div class="start-video-progress">
                  <div class="line"></div>
                  <input type="hidden" name="answer" id="video_answer" />
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
