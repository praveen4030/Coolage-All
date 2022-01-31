function HomePage() {
  return (
    <section id="hero">
      <div className="container">
        <div className="row justify-content-between">
          <div className="col-lg-7 pt-5 pt-lg-0 order-2 order-lg-1 d-flex align-items-center">
            <div data-aos="zoom-out">
              <h1>Connecting Campus Enterprises to its Community </h1>
              <div className="hero">
                <div
                  class="col-xl-5 col-lg-6 d-flex justify-content-center align-items-center"
                  data-aos="fade-right"
                >
                  <a
                    href="#demo"
                    class="venobox play-btn mb-4"
                    data-vbtype="video"
                    data-autoplay="true"
                  ></a>
                </div>
              </div>
              <div>
                <h2>View Demo</h2>
              </div>
              <div
                class="play-store"
                style={{ maxWidth: "200px", marginTop: "30px" }}
              >
                <a href="https://play.google.com/store/apps/details?id=com.kraigs.coolage">
                  <img
                    src="assets/img/play_store.png"
                    alt=""
                    className="img-fluid"
                  />
                </a>
              </div>
              {/* <div className="text-center text-lg-start">
              <a href="#about" className="btn-get-started scrollto">
                Get Started
              </a>
            </div> */}
            </div>
          </div>
          <div
            className="col-lg-5 order-1 order-lg-2 hero-img"
            data-aos="zoom-out"
            data-aos-delay="300"
          >
            <a href="#about">
              <img
                src="assets/img/home-gif.gif"
                className="img-fluid animated"
                alt=""
              />
            </a>
          </div>
        </div>
      </div>

      <svg
        className="hero-waves"
        xmlns="http://www.w3.org/2000/svg"
        xmlnsHlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28 "
        preserveAspectRatio="none"
      >
        <defs>
          <path
            id="wave-path"
            d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
          />
        </defs>
        <g className="wave1">
          <use
            xlinkHref="#wave-path"
            x="50"
            y="3"
            fill="rgba(255,255,255, .1)"
          />
        </g>
        <g className="wave2">
          <use
            xlinkHref="#wave-path"
            x="50"
            y="0"
            fill="rgba(255,255,255, .2)"
          />
        </g>
        <g className="wave3">
          <use xlinkHref="#wave-path" x="50" y="9" fill="#fff" />
        </g>
      </svg>
    </section>
  );
}
export default HomePage;
