import Benefit from "./benefit";
import Movement from "./movement";
import NavBar from "./navbar";
import WhatWeDo from "./whatWeDo";
import Team from "./team";
import Contact from "./contact";
import Demo from "./demo";
import BackToTop from "./backToTop";
import HomePage from "./homePage";
import CurrentLive from "./currentLive";
// import Loader from "./loader";

function AllPage() {
  return (
    <>
      <NavBar />
      <HomePage />
      <WhatWeDo />
      <Demo />
      <Benefit />
      <Movement />
      <CurrentLive />
      <Team />
      <Contact />
      <BackToTop />
    </>
  );
}
export default AllPage;
