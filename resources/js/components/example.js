// import React from "react";
import ReactDOM from "react-dom";

// function User() {
//     return (
//         <div className="container mt-5">
//             <div className="row justify-content-center">
//                 <div className="col-md-8">
//                     <div className="card text-center">
//                         <div className="card-header">
//                             <h2>React Component in Laravel</h2>
//                         </div>

//                         <div className="card-body">
//                             I'm tiny React component in Laravel app!
//                         </div>
//                     </div>
//                 </div>
//             </div>
//         </div>
//     );
// }

// export default User;

import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import React, { Suspense, lazy } from "react";

import LayoutTwo from "./components/layout/LayoutTwo";

function App() {
    console.log("calll", LayoutTwo);
    return (
        <div>
            <Router>
                <Suspense
                    fallback={
                        <div className="asker-app">
                            <div className="asker">
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    }
                >
                    <Switch>
                        {/* Log in Routes start*/}
                        <Route
                            exact
                            path={process.env.PUBLIC_URL + "/"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/LogIn"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/ForgotPassword"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={
                                process.env.PUBLIC_URL + "/ForgotPassOtpVerify"
                            }
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/ResetPassword"}
                            component={LayoutTwo}
                        />
                        {/* Log in route end */}

                        {/* SignUp routes start*/}
                        <Route
                            path={process.env.PUBLIC_URL + "/SignUp"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/VerifyOtp"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/VerifyEmail"}
                            component={LayoutTwo}
                        />
                        {/* SignUp routes end */}

                        {/* other Routes Start */}
                        {/* Home Tab*/}
                        <Route
                            path={process.env.PUBLIC_URL + "/PromotionVideo"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/HomeStatic"}
                            component={LayoutTwo}
                        />

                        {/* Ask Tab */}
                        <Route
                            path={process.env.PUBLIC_URL + "/Asker"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/Create_asker"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/AskerQuestionList"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/PublishQuestion"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/ShareAsker"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/ViewAnswer"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/AskerOption"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/EditAsker"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/ViewAsker"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/WatchAnswer"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/Askersetting"}
                            component={LayoutTwo}
                        />

                        {/* Asker Search Tab */}
                        <Route
                            path={process.env.PUBLIC_URL + "/Search"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/SatrtAnswer"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/GetReady"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/RecordAnswer"}
                            component={LayoutTwo}
                        />
                        <Route
                            path={process.env.PUBLIC_URL + "/SubmitAnswer"}
                            component={LayoutTwo}
                        />
                        {/* other Routes End */}
                    </Switch>
                </Suspense>
            </Router>
        </div>
    );
}

export default App;

// DOM element
if (document.getElementById("user")) {
    ReactDOM.render(<App />, document.getElementById("user"));
}
