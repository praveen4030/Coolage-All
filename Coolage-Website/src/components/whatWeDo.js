import Features from "./features";
function WhatWeDo() {
  return (
    <section id="about" className="about">
      <div className="container pt-5">
        <div className="row">
          <div
            className="icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 "
            data-aos="fade-left"
          >
            <div class="section-title">
              <h2>What we do?</h2>
            </div>
            <h3>
              Coolage is a service that seamlessly integrates with your college
              campus and provide a platform for:
            </h3>
          </div>
        </div>
      </div>
      <Features />
    </section>
  );
}
export default WhatWeDo;
