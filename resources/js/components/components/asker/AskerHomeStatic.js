import React, { useState, useEffect, Fragment } from "react";
import { useLocation } from "react-router-dom";
import $ from "jquery";

import tilt01 from "../../assets/images/home-tilt01.png";
import tilt02 from "../../assets/images/home-tilt02.png";
import tilt03 from "../../assets/images/home-tilt03.png";
import tilt04 from "../../assets/images/home-tilt04.png";
import tilt05 from "../../assets/images/home-tilt05.png";

const AskerHomeStatic = (props) => {
    return (
        <Fragment>
            <div class="home-tilt-wrapper hasHomePage" id="homeTiltWrapper">
                <div class="container">
                    <div class="row">
                        <div class="col col-md-6 home-tilt-col">
                            <div class="home-tilt-inner rgt">
                                <div class="img mscreen-img">
                                    <img alt="" src={tilt02} />
                                </div>
                                <div class="img pos-abs listing-img tilt-js">
                                    <img alt="" src={tilt05} />
                                </div>
                            </div>
                        </div>
                        <div class="col col-md-6 home-tilt-col">
                            <div class="home-tilt-inner lft">
                                <div class="img-wrapper">
                                    <div class="img mscreen-img">
                                        <img alt="" src={tilt01} />
                                    </div>
                                    <div class="img pos-abs boxing-img tilt-js">
                                        <img alt="" src={tilt03} />
                                    </div>
                                </div>
                                <div class="img pos-abs listing-img tilt-js">
                                    <img alt="" src={tilt04} />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Fragment>
    );
};
export default AskerHomeStatic;
