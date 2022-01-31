// import Benefit from "./components/benefit";
// import Movement from "./components/movement";
// import NavBar from "./components/navbar";
// import WhatWeDo from "./components/whatWeDo";
// import Team from "./components/team";
// import Contact from "./components/contact";
// import Demo from "./components/demo";
// import BackToTop from "./components/backToTop";
// import HomePage from "./components/homePage";
// import CurrentLive from "./components/currentLive";
import Loader from "./components/loader";
// import Lottie from "react-lottie";
// import animationData from "./components/loader.json";
import React, { Suspense, useState, useEffect } from "react";
// import AllPage from "./components/allPages";
const AllPage = React.lazy(() => import("./components/allPages"));

function App() {
  // window.addEventListener("scroll", (event) => {
  //   console.log(window.scrollY);
  //   console.log(window.scrollX);
  // });
  const [spinner, setSpinner] = useState(true);
  useEffect(() => {
    setTimeout(() => setSpinner(false), 2000);
  }, []);
  // const defaultOptions = {
  //   loop: true,
  //   autoplay: true,
  //   animationData: animationData,
  //   rendererSettings: {
  //     preserveAspectRatio: "xMidYMid slice",
  //   },
  // };
  return spinner ? (
    <div>
      <Loader />
    </div>
  ) : (
    <Suspense fallback={<Loader />}>
      <>
        {/* <div>
        <Lottie options={defaultOptions} height={400} width={400} />
      </div> */}
        <AllPage />
        {/* <NavBar />
      <HomePage />
      <WhatWeDo />
      <Demo />
      <Benefit />
      <Movement />
      <CurrentLive />
      <Team />
      <Contact />
      <BackToTop /> */}
      </>
    </Suspense>
  );
}

export default App;
