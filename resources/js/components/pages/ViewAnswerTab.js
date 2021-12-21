import React, { useState, useEffect, Fragment } from "react";
import { Link, useLocation } from "react-router-dom";
import {
  MdOutlineShare,
  MdMoreVert,
  MdOutlineStarPurple500,
  MdCall,
  MdMail,
} from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";

const StartAsker = (props) => {
  const [UserProfile, setUserProfile] = useState([]);
  const [AskerDetails, setAskerDetails] = useState([]);
  const [ViewAskerData, setViewAskerData] = useState([]);
  const [ViewAsker, setViewAsker] = useState([]);

  useEffect(async () => {
    setViewAskerData(props.asker);
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }
    setViewAsker(props.askerDetails);
    await setAskerDetails(props.askerDetails.asker_detail);
  }, [props]);

  const toggleClick = () => {
    $(".user-humburg-toggler a")
      .siblings(".user-mail-phone")
      .toggleClass("active");
  };

  const handleClickViewAsker = () => {
    // props.changeScreen("View_Asker");
  };
  return (
    <Fragment>
      <div class="category-tabs-preview hide-scrollbar">
        <div class="row category-tabs-preview-row-second ques-ans-tabs-preview-row categoryAnswers">
          <div class="col col-12 category-tabs-panel">
            <div class="inner-bx">
              <div class="ques-ans-list">
                {AskerDetails ? (
                  <ul>
                    {AskerDetails.map((item) => (
                      <li>
                        <div class="user-name">
                          <h4>
                            <Link
                              to={{
                                pathname: "/ViewAsker",
                                state: { item , ViewAskerData , ViewAsker},
                              }}
                            >
                              {item.name}
                            </Link>
                          </h4>
                          <p>{item.total_answers} Answers</p>
                        </div>
                        <div class="rating">
                          <span class="material-icons">
                            <MdOutlineStarPurple500 />
                          </span>
                          <span class="text">{item.rating}</span>
                        </div>
                        <div class="humburg user-humburg-toggler">
                          <a
                            href="javascript:"
                            onClick={() => toggleClick()}
                            class="material-icons"
                          >
                            <MdMoreVert />
                          </a>

                          <div class="user-mail-phone">
                            <ul>
                              <li>
                                <a href="tel:{{$a_value['mobile_number']}}">
                                  <span class="material-icons">
                                    <MdCall />
                                  </span>{" "}
                                  {item.mobile_number}
                                </a>
                              </li>
                              <li>
                                <a href="mailto:{{$a_value['email']}}">
                                  <span class="material-icons">
                                    <MdMail />
                                  </span>{" "}
                                  {item.email}
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                    ))}
                  </ul>
                ) : (
                  <ul>
                    <li>
                      <div class="record-not-found">
                        <h4>No Answers!</h4>
                        <p>
                          It’s lonely here. Share your Asker to start filling
                          this place up!
                        </p>
                        <div class="create-asker-bttn pos-rel publish">
                          <a href="javascript:">
                            <span class="material-icons">
                              <MdOutlineShare />
                            </span>{" "}
                            SHARE ASKER
                          </a>
                        </div>
                      </div>
                    </li>
                  </ul>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default StartAsker;
