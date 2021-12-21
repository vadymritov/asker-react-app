import React, { useRef, useEffect } from "react";
import { useLocation } from "react-router-dom";
import $ from "jquery";
import Headers from "../other/Headers";
import Typed from "typed.js";

import tellmebefore from '../../assets/images/tellme-content-before.png';
import tellmeafter from '../../assets/images/tellme-content-after.png';
import appstore from '../../assets/images/app-store.png';
import googleplay from '../../assets/images/google-play.png';

const StaticScreen = (props) => {
  const el = useRef(null);

  useEffect(() => {
    const typed = new Typed(el.current, {
      strings: [
        'Tell me about <br/> yourself in <br/> <span class="t1">30 seconds</span>',
        'Tell me what <br/> makes you <span class="t1">perfect</span> <br/> for this role',
        'Tell me what <br/> makes you <br/> <span class="t1">unique</span>',
        'Tell me about <br/> your <span class="t1">strengths</span> <span class="use-and">and</span> <br/> <span class="t1">weaknesses</span>',
        'Tell me what <br/> you most enjoy <br/> about <span class="t1">work</span>',
        '<span class="t1">Tell me</span> what <br/> makes you a <br/> great flatmate',
        'Tell me about <br/> your relevant <br/> <span class="t1">experience</span>',
        'Tell me what <br/> makes you a <br/> great <span class="t1">candidate</span>',
      ],
      startDelay: 1000,
      typeSpeed: 50,
      backSpeed: 50,
      backDelay: 100,
      smartBackspace: true,
      loop: true,
      showCursor: true,
    });

    return () => {
      typed.destroy();
    };
  }, []);

  return (
    <div className="static-main-section">
      <div class="static-tellme-inner">
        <Headers />
        <div class="tellme-content" id="tellMeTilt">
          <div class="tellme-content-before-after" id="tellMeTiltBeforeAfter">
            <img
              alt=""
              className="before"
              src={tellmebefore}
            />
            <img
              alt=""
              className="after"
              src={tellmeafter}
            />
          </div>
          <div class="text">
            <h2>
              <span id="tellMeTyped" ref={el}></span>
            </h2>
          </div>
          <div class="bttn">
            <a href="#">Create Asker</a>
          </div>
        </div>

        <div class="tellme-download">
          <a href="#" class="app-store">
            <img
              alt=""
              src={appstore}
            />
          </a>

          <a href="#" class="google-play">
            <img
              alt=""
              src={googleplay}
            />
          </a>
        </div>
      </div>
    </div>
  );
};
export default StaticScreen;
