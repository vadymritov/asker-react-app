import React, { Component, Fragment, useEffect, lazy } from "react";
import $ from "jquery";

import StaticScreen from "../asker/StaticScreen";
import BottomTab from "../other/BottomTab";
import LoginScreen from "../other/LoginScreen";

import Login from "../../pages/LoginScreen";
import ForgotPassword from "../../pages/ForgotPassword";
import ForgotPassOtpVerify from "../../pages/ForgotPassOtpVerify";
import ResetPassword from "../../pages/ResetPassword";

import Signup from "../../pages/SignUpScreen";
import VerifyOtp from "../../pages/VerifyOtp";
import VerifyEmail from "../../pages/VerifyEmail";

import Home from "../../pages/Home";
import PromotionVideo from "../../components/asker/PromotionVideo";
import HomeStatic from "../../components/asker/AskerHomeStatic";

import AllAskerMain from "../../components/asker/AllAskerMain";
import Create_asker from "../../pages/startAsker";
import AskerQuestionList from "../../pages/DisplayQuestionList";
import PublishQuestion from "../../pages/PublishQuestionList";
import ShareAsker from "../../pages/ShareAsker";
import ViewAnswer from "../../pages/ViewAnswer";
import AskerOption from "../../pages/AskerOption";
import EditAsker from "../../pages/EditAsker";
import ViewAsker from "../../pages/ViewAsker";
import WatchAnswer from "../../pages/WatchAnswer";
import Askersetting from "../../pages/Askersetting";

import AskerSearch from "../../components/asker/AskerSearch";
import SatrtAnswer from "../../pages/SatrtAnswer";
import GetReady from "../../pages/GetReadyScreen";
import RecordAnswer from "../../pages/RecordAnswer";
import SubmitAnswer from "../../pages/SubmitAnswer";

const LayoutTwo = (props) => {
    useEffect(() => {
        // $(".hasHomePage").parents("#main").addClass("home-screen");
    }, [props]);

    // console.log("props.location.pathnamep", props.location.pathname);
    const ChildrenComponents = () => {
        if (props.location.pathname === "/") {
            // Log in
            return <Home />;
        } else if (props.location.pathname === "/LogIn") {
            // Log in
            return <Login />;
        } else if (props.location.pathname === "/ForgotPassword") {
            // Forgot Password
            return <ForgotPassword />;
        } else if (props.location.pathname === "/ForgotPassOtpVerify") {
            // Forgot Password otp verify
            return <ForgotPassOtpVerify data={props.location.state} />;
        } else if (props.location.pathname === "/ResetPassword") {
            // Reset Password
            return <ResetPassword data={props.location.state} />;
        } else if (props.location.pathname === "/SignUp") {
            // Sign UP
            return <Signup />;
        } else if (props.location.pathname === "/VerifyOtp") {
            // Verify otp
            return <VerifyOtp data={props.location.state} />;
        } else if (props.location.pathname === "/VerifyEmail") {
            // Verify Email
            return <VerifyEmail data={props.location.state} />;
        } else if (props.location.pathname === "/") {
            // Home
            return <Home data={props.location.state} />;
        } else if (props.location.pathname === "/PromotionVideo") {
            // Promotion video
            return <PromotionVideo />;
        } else if (props.location.pathname === "/HomeStatic") {
            // Home static
            return <HomeStatic />;
        } else if (props.location.pathname === "/Asker") {
            // Asker main
            return <AllAskerMain />;
        } else if (props.location.pathname === "/Create_asker") {
            // Create asker
            return <Create_asker />;
        } else if (props.location.pathname === "/AskerQuestionList") {
            // Asker QuestionList
            return <AskerQuestionList data={props.location.state} />;
        } else if (props.location.pathname === "/PublishQuestion") {
            // Publish Questions
            return <PublishQuestion data={props.location.state} />;
        } else if (props.location.pathname === "/ShareAsker") {
            // Share Asker
            return <ShareAsker data={props.location.state} />;
        } else if (props.location.pathname === "/ViewAnswer") {
            // View Answer
            return <ViewAnswer data={props.location.state} />;
        } else if (props.location.pathname === "/AskerOption") {
            // Asker Option
            return <AskerOption data={props.location.state} />;
        } else if (props.location.pathname === "/EditAsker") {
            // Edit Asker
            return <EditAsker data={props.location.state} />;
        } else if (props.location.pathname === "/ViewAsker") {
            // View Asker
            return <ViewAsker data={props.location.state} />;
        } else if (props.location.pathname === "/WatchAnswer") {
            // Watch Answer
            return <WatchAnswer data={props.location.state} />;
        } else if (props.location.pathname === "/Askersetting") {
            // Watch Answer
            return <Askersetting data={props.location.state} />;
        } else if (props.location.pathname === "/Search") {
            // Asker Search
            return <AskerSearch />;
        } else if (props.location.pathname === "/SatrtAnswer") {
            // Asker Start
            return <SatrtAnswer data={props.location.state} />;
        } else if (props.location.pathname === "/GetReady") {
            // Asker Get Ready
            return <GetReady data={props.location.state} />;
        } else if (props.location.pathname === "/RecordAnswer") {
            // Record Answer
            return <RecordAnswer data={props.location.state} />;
        } else if (props.location.pathname === "/SubmitAnswer") {
            // Submit Answer
            return <SubmitAnswer data={props.location.state} />;
        } else {
            return <LoginScreen />;
        }
    };

    return (
        <div>
            <main id="main" class="home-main main full-screen ">
                <section class="main-flex-sec">
                    <div class="container">
                        <div class="row">
                            <div class="col col-md-6 dynamic-mobile-section">
                                <div class="dynamic-mobile-inner">
                                    <ChildrenComponents />
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
        </div>
    );
};

export default LayoutTwo;
