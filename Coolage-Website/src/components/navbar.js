import React, { useState } from "react";
function NavBar() {
  const [isMobile, setIsMobile] = useState(false);
  const [tranparentHeader, setTransparentHeader] = useState(true);
  const [isHome, setIsHome] = useState(true);
  const [isFeatures, setIsFeatures] = useState(false);
  const [isVision, setIsVision] = useState(false);
  const [isTeam, setIsTeam] = useState(false);
  const [isContact, setIsContact] = useState(false);
  const highlightNavBar = () => {
    if (window.scrollY <= 3840) {
      setIsHome(true);
    } else {
      setIsHome(false);
    }
    if (window.scrollY > 3840 && window.scrollY <= 5200) {
      setIsFeatures(true);
    } else {
      setIsFeatures(false);
    }
    if (window.scrollY > 5200 && window.scrollY <= 5830) {
      setIsVision(true);
    } else {
      setIsVision(false);
    }
    if (window.scrollY > 5830 && window.scrollY <= 7180) {
      setIsTeam(true);
    } else {
      setIsTeam(false);
    }
    if (window.scrollY > 7180) {
      setIsContact(true);
    } else {
      setIsContact(false);
    }
  };
  const changeHeaderTransparency = () => {
    if (window.scrollY >= 80) {
      setTransparentHeader(false);
    } else {
      setTransparentHeader(true);
    }
  };
  const navBarSet = () => {
    if (isMobile) {
      setIsMobile(!isMobile);
    } else {
      // setTransparentHeader(true);
    }
  };
  window.addEventListener("scroll", highlightNavBar);
  window.addEventListener("scroll", changeHeaderTransparency);
  return (
    <header
      id="header"
      className={
        tranparentHeader
          ? "fixed-top d-flex align-items-center header-transparent "
          : "fixed-top d-flex align-items-center header-scrolled"
      }
    >
      <div className="container d-flex align-items-center justify-content-between">
        <div className="logo">
          {/* <h1>
            <a href="index.html">
              <span>Bootslander</span>
            </a>
          </h1> */}
          <a href="index.html">
            <img src="assets/img/logo.png" alt="" className="img-fluid" />
          </a>
        </div>

        <nav
          id="navbar"
          className={isMobile ? "navbar navbar-mobile" : "navbar"}
          // {isMobile ? "navbar" : "navbar-mobile"}
          onClick={navBarSet}
        >
          <ul>
            <li>
              <a
                className={`nav-link scrollto ${isHome ? "active" : ""}`}
                href="#hero"
              >
                Home
              </a>
            </li>
            <li>
              <a
                className={`nav-link scrollto ${isFeatures ? "active" : ""}`}
                href="#benefit"
              >
                Features
              </a>
            </li>
            <li>
              <a
                className={`nav-link scrollto ${isVision ? "active" : ""}`}
                href="#vision"
              >
                Vision
              </a>
            </li>
            <li>
              <a
                className={`nav-link scrollto ${isTeam ? "active" : ""}`}
                href="#team"
              >
                Team
              </a>
            </li>
            <li>
              <a
                className={`nav-link scrollto ${isContact ? "active" : ""}`}
                href="#contact"
              >
                Contact
              </a>
            </li>
          </ul>
          <i
            className={
              isMobile
                ? "bi mobile-nav-toggle bi-x "
                : "bi mobile-nav-toggle bi-list "
            }
            onClick={() => setIsMobile(!isMobile)}
          ></i>
        </nav>
      </div>
    </header>
  );
}
export default NavBar;
