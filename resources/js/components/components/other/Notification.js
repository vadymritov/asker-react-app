import React, { useState, useEffect, Fragment } from "react";

const LoginScreen = (props) => {
  const [Status, setStatus] = useState("");
  const [Msg, setMsg] = useState("");

  useEffect(() => {
    setStatus(props.status);
    setMsg(props.msg);
  }, [props]);

  return (
    <Fragment>
      {Status === "success" ? (
        <div class="alert-success notification display-notification">
          {Msg}
          <button class="close" data-dismiss="alert" aria-label="Close">
            ×
          </button>
        </div>
      ) : null}
      {Status === "error" ? (
        <div class="alert-danger notification display-notification">
          {Msg}
          <button class="close" data-dismiss="alert" aria-label="Close">
            ×
          </button>
        </div>
      ) : null}
    </Fragment>
  );
};
export default LoginScreen;
