function Team() {
  return (
    <section id="team">
      <div>
        <div className="container">
          <div className="row">
            <div
              className="icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 "
              data-aos="fade-left"
            >
              <div className="section-title">
                <h2>Our Team</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="team">
        <div className="container">
          <div
            className="row aos-init aos-animate justify-content-between"
            data-aos="fade-left"
          >
            <div className="col-lg-3 col-md-6">
              <div className="member" data-aos="zoom-in" data-aos-delay="100">
                <div className="pic">
                  <img
                    src="assets/img/team/m-1.png"
                    className="img-fluid"
                    alt=""
                  />
                </div>
                <div className="member-info">
                  <h4>Kumar Shivam</h4>
                  <span>Manager</span>
                  <div className="social">
                    <a href="https://www.linkedin.com/in/kshivam17">
                      <i className="bi bi-linkedin"></i>
                    </a>
                    <h5>Graduate @ NIT Jalandhar ‘21</h5>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-lg-3 col-md-6 mt-md-0">
              <div className="member" data-aos="zoom-in" data-aos-delay="100">
                <div className="pic">
                  <img
                    src="assets/img/team/m-2.png"
                    className="img-fluid"
                    alt=""
                  />
                </div>
                <div className="member-info">
                  <h4>Praveen Agarwal</h4>
                  <span>Developer</span>
                  <div className="social">
                    <a href="https://www.linkedin.com/in/praveen-agrawal-6b3b0b142">
                      <i className="bi bi-linkedin"></i>
                    </a>
                    <h5>Graduate @ NIT Jalandhar ‘22</h5>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-lg-3 col-md-6 mt-md-0">
              <div className="member" data-aos="zoom-in" data-aos-delay="100">
                <div className="pic">
                  <img
                    src="assets/img/team/m-3.png"
                    className="img-fluid"
                    alt=""
                  />
                </div>
                <div className="member-info">
                  <h4>Yash Bharani</h4>
                  <span>Designer</span>
                  <div className="social">
                    <a href="https://www.linkedin.com/in/yash-bharani-7a249816a">
                      <i className="bi bi-linkedin"></i>
                    </a>
                    <h5>Graduate @ IIT Roorkee ‘22</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div className="container">
          <div className="row">
            <div
              className="icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 "
              data-aos="fade-left"
            >
              <div className="section-title">
                <h2>Mentors</h2>
              </div>
            </div>
          </div>
        </div>
        <div className="team">
          <div className="container">
            <div
              className="row aos-init aos-animate justify-content-center"
              data-aos="fade-left"
            >
              <div className="col-lg-3 col-md-6 mt-md-0">
                <div className="member" data-aos="zoom-in" data-aos-delay="100">
                  <div className="pic">
                    <img
                      src="assets/img/team/m-4.png"
                      className="img-fluid"
                      alt=""
                    />
                  </div>
                  <div className="member-info">
                    <h4>Alok Rajiv</h4>
                    <span>Mentor</span>
                    <div className="social">
                      <a href="https://www.linkedin.com/in/alokrajiv">
                        <i className="bi bi-linkedin"></i>
                      </a>
                      <h5>CTO & Co-Founder at Trames</h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
export default Team;
