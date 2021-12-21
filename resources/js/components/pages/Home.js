import React, { useState, useEffect, Fragment } from "react";
import PromotionVideo from "../components/asker/PromotionVideo";
import AskerHomeStatic from "../components/asker/AskerHomeStatic";
import MetaTags from "react-meta-tags";

const Home = (props) => {
  const [LoginStatus, setLoginStatus] = useState();
  const [Notify, setNotify] = useState(false);
  const [Msg, setMsg] = useState("");
  const [Status, setStatus] = useState("");

  useEffect(() => {
    var user = localStorage.getItem("User");
    if (user === "Logout" || user === null) {
      setLoginStatus(false);
    } else {
      setLoginStatus(true);
    }
  }, []);

  return (
    <Fragment>
      <MetaTags>
        <title>Asker||Home</title>
        <meta name="asker" content="asker home page." />
      </MetaTags>
      {LoginStatus ? <PromotionVideo /> : <AskerHomeStatic />}
    </Fragment>
  );
};

export default Home;
