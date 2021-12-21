import React, { Fragment , useEffect} from "react";
import $ from "jquery";

import StaticScreen from "../asker/StaticScreen";
import BottomTab from "../other/BottomTab";

const LayoutOne = ({ children }) => {

  useEffect(() => {
    // $(".hasHomePage").parents("#main").addClass("home-screen");
  }, []);
  return (
    <Fragment>
      <main id="main" class="home-main main full-screen ">
        <section class="main-flex-sec">
          <div class="container">
            <div class="row">
              {/* <div class="col col-md-6 dynamic-mobile-section"> */}
              <div class="col col-md-6 dynamic-mobile-section">
                <div class="dynamic-mobile-inner">
                  {children}

                  <BottomTab />
                </div>
              </div>
              <div class="col col-md-6 home-static-mobile-section static-tellme-section">
                <StaticScreen />
              </div>
            </div>
          </div>
        </section>
      </main>
    </Fragment>
  );
};


export default LayoutOne;
