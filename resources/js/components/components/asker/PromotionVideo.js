import React, { useState, useEffect, Fragment } from "react";
import $ from "jquery";
import Slider from "react-slick";
import SITEURL from "../../SiteUrl.json";

import logo from "../../assets/images/logo3.png";
const PromotionVideo = (props) => {
  const [AllPromotionVideo, setAllPromotionVideo] = useState([]);

  useEffect(() => {
    getPromotionVideo();
  }, [props]);

  const getPromotionVideo = () => {
    fetch(SITEURL.FULLBASE_API + "promotionalVideo", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
    })
      .then((resp) => resp.json())
      .then((respJson) => {
        if (respJson.status === true) {
          setAllPromotionVideo(respJson.video)
        }
      })
      .catch((err) => {});
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

  return (
    <Fragment>
      <div class="wth-ans-outer-single-slide modile-screen-border ease-in-effect">
        <div class="screen ">
          <div class="head justify-content-end">
            <img alt="" src={logo} />
          </div>
          <div class="wth-ans-inner-slider promotionVideoSlide">
            <Slider {...settings}>
              {AllPromotionVideo.map((item) => (
                <div class="wth-ans-inner-single-slide">
                  <div class="sticky-user-name with-slide d-show active">
                    <div class="cont">
                      <span>{item.title}</span>
                      <h4>{item.author}</h4>
                    </div>
                  </div>
                  <div class="img-vid">
                    <video playsInline autoPlay muted loop>
                      <source src={item.video} type="video/mp4" />
                    </video>
                  </div>
                  <div class="cont">
                    <p>{item.question}</p>
                  </div>
                </div>
              ))}
            </Slider>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default PromotionVideo;
