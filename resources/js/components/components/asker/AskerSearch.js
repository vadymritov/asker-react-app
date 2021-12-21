import React, { useState, useEffect, Fragment } from "react";
import { useLocation, useHistory } from "react-router-dom";
import $ from "jquery";
import { MdOutlineSearch, MdArrowForward } from "react-icons/md";
import SITEURL from "../../SiteUrl.json";

const SearchAsker = (props) => {
  let history = useHistory();
  const [Search, setSearch] = useState("");
  const [UserProfile, setUserProfile] = useState([]);

  useEffect(() => {
    var user = JSON.parse(localStorage.getItem("User"));
    if (user) {
      setUserProfile(user);
    }
  }, [props]);

  const hendaleingFormSubmit = async () => {
    var parameter =
      "&asker_code=" +
      encodeURIComponent(Search) +
      "&user_id=" +
      encodeURIComponent(UserProfile.id);

    await fetch(SITEURL.FULLBASE_API + "askerCode", {
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
          history.push({ pathname: "/SatrtAnswer", state: respJson });
        }
      });
  };

  return (
    <Fragment>
      <div class="center-box solid-white-bg with-tooltrip m-auto same-theme-bg search-asker-code ease-in-effect">
        <div class="center-box-inner">
          <div class="share-asker-wrapper">
            <form action="" method="post">
              <div class="share-asker-head search-asker">
                <h4>Asker Search</h4>
              </div>
              <div class="share-asker-form-wrapper">
                <div class="share-asker-form-group search-asker">
                  <p>Enter Asker Access Code below.</p>
                  <div class="search-filled">
                    <input
                      type="text"
                      name="asker_code"
                      placeholder="ENTER ASKER CODE"
                      onChange={(event) => setSearch(event.target.value)}
                    />
                    <button
                      type="button"
                      class="search-bttn"
                      onClick={() => hendaleingFormSubmit()}
                    >
                      <span class="material-icons">
                        <MdOutlineSearch />
                      </span>
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </Fragment>
  );
};
export default SearchAsker;
