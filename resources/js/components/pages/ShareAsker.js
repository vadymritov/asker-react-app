import React, { useState, useEffect, Fragment } from "react";
import { useLocation } from "react-router-dom";
import { MdLink, MdEmail, MdArrowForward } from "react-icons/md";
import $ from "jquery";
import SITEURL from "../SiteUrl.json";
import { Button, Modal } from "react-bootstrap";

import logo from "../assets/images/create-asker-icon.png";
const DisplayQuestion = (props) => {
  const [show, setShow] = useState(false);
  const [ShareAsker, setShareAsker] = useState([]);
  const [EmailID, setEmailID] = useState("");

  useEffect(() => {
    if ($(".flip-card-inner").hasClass("start-rotate")) {
      $(".flip-card-inner").removeClass("start-rotate");
    }

    const timer = setTimeout(() => {
      $(".flip-card-inner").addClass("start-rotate");
    }, 5);

    setShareAsker(props.data);
    return () => clearTimeout(timer);
  }, [props]);

  const handleClose = () => {
    setShow(false);
  };

  const handleShow = () => {
    setShow(true);
  };

  const sendEmail = async () => {
    setShow(false);
    var parameter =
      "&email=" +
      encodeURIComponent(EmailID) +
      "&asker_code=" +
      encodeURIComponent(props.data.asker_code);

    await fetch(SITEURL.FULLBASE_API + "share-asker-send-mail-api", {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
      },
      body: parameter,
    })
      .then((resp) => resp.json())
      .then((respJson) => {
        setShow(false);
        // if (respJson.status === true) {
        // }
      })
      .catch((err) => {});
  };

  return (
    <Fragment>
      <div class="container">
        <div class="center-box solid-white-bg with-tooltrip m-auto same-theme-bg default-flip flip-card-inner">
          <div class="center-box-inner remove-flip">
            <div class="share-asker-wrapper">
              <form>
                <div class="share-asker-head">
                  <img
                    src={logo}
                  />
                  <h4>Share Asker</h4>
                </div>
                <div class="share-asker-form-wrapper">
                  <div class="share-asker-form-group">
                    <p>
                      Invite people to answer using this Asker’s unique access
                      code:
                    </p>
                    <div class="text-filled with-icon">
                      <input
                        type="text"
                        value={props.data.asker_code}
                        disabled
                      />
                      <a
                        href="javascript:"
                        class="shareAskerModalToggler material-icons"
                        onClick={() => handleShow()}
                      >
                        <MdLink />
                      </a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <Modal
          show={show}
          onHide={handleClose}
          dialogClassName="share-email-modal"
        >
          <Modal.Body>
            <div id="shareAskerModal" class="share-email-modal">
              <a href="#" class="shareAskerModalClose"></a>
              <div class="center-box theme-bg">
                <div class="center-box-inner">
                  <div class="log-reg-form">
                    <form method="POST" action="{{route('asker.send_mail')}}">
                      {/* @csrf */}
                      <div class="head">
                        <h4>Share Code</h4>
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing
                          elit.
                        </p>
                      </div>
                      <div class="cust-form-row">
                        <div class="cust-form-col">
                          <div class="text-filled with-icon">
                            <input
                              type="hidden"
                              value="{{$asker}}"
                              name="asker_code"
                            />

                            <div class="icon">
                              <span class="material-icons">
                                <MdEmail />
                              </span>
                            </div>
                            <input
                              type="email"
                              name="email"
                              placeholder="Email"
                              onChange={(e) => setEmailID(e.target.value)}
                            />
                          </div>
                        </div>
                      </div>
                      <div class="cust-form-row" onClick={() => sendEmail()}>
                        <div class="cust-form-col">
                          <div class="submit-filled with-icon">
                            <input
                              type="button"
                              value="SHARE"
                              class="shareAskerModalClose"
                            />
                            <div class="icon">
                              <span class="material-icons">
                                <MdArrowForward />
                              </span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
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
