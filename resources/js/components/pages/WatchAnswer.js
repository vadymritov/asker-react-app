import React, { useState, useEffect, Fragment } from "react";
import { useLocation } from "react-router-dom";
import {
  MdShare,
  MdPhoneIphone,
  MdPerson,
  MdEmail,
  MdReplay,
  MdStar,
} from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import Slider from "react-slick";

import logo from "../assets/images/create-asker-icon.png";
import logo3 from "../assets/images/logo3.png";
import refresh from "../assets/images/icons/refresh.svg";
import user_white from "../assets/images/icons/user_white.svg";
import Email_white from "../assets/images/icons/Email_white.svg";
import phone_white from "../assets/images/icons/phone_white.svg";
import Share from "../assets/images/icons/Share.svg";
import star_white from "../assets/images/icons/star_white.svg";
import star from "../assets/images/icons/star.svg";

const StartAsker = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [AskerData, setAskerData] = useState([]);
  const [AnswerData, setAnswerData] = useState([]);

  useEffect(async () => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
      askerDeatils(props.data.asker_id, props.data.user_id);
      anserList(props.data.asker_id, props.data.user_id);
    }

    return () => clearTimeout(timer);
  }, [props]);

  const askerDeatils = async (asker_id, user_id) => {
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
        setAskerData(respJson.data.asker_detail[0]);
      })
      .catch((err) => {});
  };

  const ShowModal = () => {
    $(".status-info")
      .parents(".wth-ans-outer-single-slide")
      .find(".status-info-modal")
      .addClass("active");
  };

  const closeModal = () => {
    $(".close").parents(".status-info-modal").removeClass("active");
  };

  var settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    vertical: true,
    autoplay: true,
    autoplaySpeed: 15000,
  };

  const anserList = async (asker_id, user_id) => {
    var parameter =
      "&candidate_user_id=" +
      encodeURIComponent(user_id) +
      "&asker_id=" +
      encodeURIComponent(asker_id);

    await fetch(SITEURL.FULLBASE_API + "answerList", {
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
          setAnswerData(respJson.answer_list);
        }
      })
      .catch((err) => {});
  };

  const submitRating = async (rating, question_id, answer_id) => {
    var parameter =
      "&user_id=" +
      encodeURIComponent(UserProfile.id) +
      "&asker_id=" +
      encodeURIComponent(props.data.asker_id) +
      "&question_id=" +
      encodeURIComponent(question_id) +
      "&rating=" +
      encodeURIComponent(rating) +
      "&answer_id=" +
      encodeURIComponent(answer_id);

    await fetch(SITEURL.FULLBASE_API + "videoRating", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
      body: parameter,
    })
      .then((resp) => resp.json())
      .then((respJson) => {
        anserList(props.data.asker_id, props.data.user_id);
        // setAnswerData(respJson.answer_list);
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="sticky-user-name">
        <div class="icon">
          <img src={logo} />
        </div>
        <div class="cont"></div>
      </div>

      <div class="wth-ans-outer-single-slide modile-screen-border default-flip flip-card-inner">
        <div class="status-info-modal">
          <div class="inner-bx remove-flip">
            <div class="close" onClick={() => closeModal()}>
              <span class="material-icons">
                <img
                  alt=""
                  className="before"
                  src={refresh}
                />
              </span>
            </div>
            <div class="list">
              <ul>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={user_white}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Name</h4>
                      <p>{AskerData.name}</p>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={Email_white}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Email</h4>
                      <p>{AskerData.email}</p>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={phone_white}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Phone</h4>
                      <p>{AskerData.mobile_number}</p>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="javascript:">
                    <div class="icon">
                      <span class="material-icons">
                        <img
                          alt=""
                          className="before"
                          src={Share}
                        />
                      </span>
                    </div>
                    <div class="text">
                      <h4>Collaborate</h4>
                      <p>Share this response with friends</p>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="screen">
          <div class="head">
            <a
              href="javascript:"
              class="status-info"
              onClick={() => ShowModal()}
            >
              <span class="material-icons">
                <img
                  alt=""
                  className="before"
                  src={user_white}
                />
              </span>
            </a>
            <img src={logo3} />
          </div>
          <div class="wth-ans-inner-slider promotionVideoSlide">
            <Slider {...settings}>
              {AnswerData.length != 0
                ? AnswerData.map((item) => (
                    <div class="wth-ans-inner-single-slide">
                      <div class="img-vid">
                        <video playsInline autoPlay muted loop>
                          <source src={item.answer} type="video/mp4" />
                        </video>
                      </div>
                      <div class="cont">
                        <div class="star-rate">
                          <span
                            className={`material-icons ${
                              item.rating >= 1 ? "star-checked" : ""
                            }`}
                            id="star_r1"
                            onClick={() =>
                              submitRating(1, item.question_id, item.answer_id)
                            }
                          >
                            {item.rating >= 1 ? (
                              <img
                                alt=""
                                className="before"
                                src={star_white}
                              />
                            ) : (
                              <img
                                alt=""
                                className="before"
                                src={star}
                              />
                            )}
                          </span>
                          <span
                            className={`material-icons ${
                              item.rating >= 2 ? "star-checked" : ""
                            }`}
                            id="star_r2"
                            onClick={() =>
                              submitRating(2, item.question_id, item.answer_id)
                            }
                          >
                            {item.rating >= 2 ? (
                              <img
                                alt=""
                                className="before"
                                src={star_white}
                              />
                            ) : (
                              <img
                                alt=""
                                className="before"
                                src={star}
                              />
                            )}
                          </span>
                          <span
                            className={`material-icons ${
                              item.rating >= 3 ? "star-checked" : ""
                            }`}
                            id="star_r3"
                            onClick={() =>
                              submitRating(3, item.question_id, item.answer_id)
                            }
                          >
                            {item.rating >= 3 ? (
                              <img
                                alt=""
                                className="before"
                                src={star_white}
                              />
                            ) : (
                              <img
                                alt=""
                                className="before"
                                src={star}
                              />
                            )}
                          </span>
                          <span
                            className={`material-icons ${
                              item.rating >= 4 ? "star-checked" : ""
                            }`}
                            id="star_r4"
                            onClick={() =>
                              submitRating(4, item.question_id, item.answer_id)
                            }
                          >
                            {item.rating >= 4 ? (
                              <img
                                alt=""
                                className="before"
                                src={star_white}
                              />
                            ) : (
                              <img
                                alt=""
                                className="before"
                                src={star}
                              />
                            )}
                          </span>
                          <span
                            className={`material-icons ${
                              item.rating >= 5 ? "star-checked" : ""
                            }`}
                            id="star_r5"
                            onClick={() =>
                              submitRating(5, item.question_id, item.answer_id)
                            }
                          >
                            {item.rating >= 5 ? (
                              <img
                                alt=""
                                className="before"
                                src={star_white}
                              />
                            ) : (
                              <img
                                alt=""
                                className="before"
                                src={star}
                              />
                            )}
                          </span>
                        </div>
                        <p>{item.question}</p>
                      </div>
                    </div>
                  ))
                : null}
            </Slider>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
