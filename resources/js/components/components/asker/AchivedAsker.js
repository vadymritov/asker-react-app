import React, { useState, useEffect, Fragment } from "react";
import { useLocation, Link } from "react-router-dom";
import $ from "jquery";
import { MdAdd, MdOutlineShare, MdArrowForward } from "react-icons/md";

import AskerIcon from "../../assets/images/all-asker-icon.png";

const AchivedAsker = (props) => {
  const [Data, setData] = useState([]);
  const [UserData, setUserData] = useState([]);

  useEffect(async () => {
    var userdata = await JSON.parse(localStorage.getItem("User"));
    setUserData(userdata);
    setData(props.AchivedAsker);
  }, [props]);

  return (
    <Fragment>
      <div class="row category-tabs-preview-row categoryAll">
        {Data.length != 0
          ? Data.map((item) => (
              <div class="col col-md-6 category-tabs-panel ">
                <div class="inner-bx">
                  <div class="cont">
                    <div class="icon">
                      <img
                        alt=""
                        src={AskerIcon}
                      />
                    </div>
                    <div class="text">
                      <Link
                        to={{
                          pathname: "/ViewAnswer",
                          state: {
                            asker_id: item.asker_id,
                            user_id: UserData.id,
                          },
                        }}
                      >
                        <h4>{item.title}</h4>
                      </Link>
                      <p>{item.author}</p>
                    </div>
                  </div>
                  <div class="bttn">
                    {item.watch_answer === "n" ? (
                      <>
                        <input
                          type="hidden"
                          name="asker_id"
                          value="{{$a_value['id']}}"
                        />
                        <input
                          type="hidden"
                          name="user_id"
                          value="{{\Auth::user()->id}}"
                        />
                        <a href="javascript:" class="share-ask-bttn">
                          SHARE ASKER{" "}
                          <span class="material-icons">
                            <MdOutlineShare />
                          </span>
                        </a>
                      </>
                    ) : (
                      <>
                        <input
                          type="hidden"
                          name="asker_id"
                          value="{{$a_value['id']}}"
                        />
                        <input
                          type="hidden"
                          name="user_id"
                          value="{{\Auth::user()->id}}"
                        />

                        <Link
                          to={{
                            pathname: "/ViewAnswer",
                            state: {
                              asker_id: item.asker_id,
                              user_id: UserData.id,
                              active_status: item.asker_status,
                            },
                          }}
                        >
                          WATCH ANSWERS{" "}
                          <span class="material-icons">
                            <MdArrowForward />
                          </span>
                        </Link>
                      </>
                    )}
                  </div>
                </div>
              </div>
            ))
          : null}
      </div>
    </Fragment>
  );
};
export default AchivedAsker;
