import React, { useState } from "react";
function BackToTop() {
  const [backToTop, setBackToTop] = useState(false);
  const showBackToTop = () => {
    if (window.scrollY >= 80) {
      setBackToTop(true);
    } else {
      setBackToTop(false);
    }
  };
  window.addEventListener("scroll", showBackToTop);
  return (
    <a
      href="#"
      className={
        backToTop
          ? "back-to-top d-flex align-items-center justify-content-center active"
          : "back-to-top d-flex align-items-center justify-content-center "
      }
    >
      <i className="bi bi-arrow-up-short"></i>
    </a>
  );
}
export default BackToTop;
