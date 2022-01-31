function CurrentLive() {
  return (
    <section>
      <div>
        <div className="container">
          <div className="row">
            <div
              className="icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 "
              data-aos="fade-left"
            >
              <div class="section-title">
                <h2 style={{ color: "#1acc8d" }}>Currently Live At</h2>
              </div>
            </div>
          </div>
        </div>
        <div className="container">
          <div className="row justify-content-center">
            <div
              className="col-lg-4 order-1 order-lg-2 movement-img"
              data-aos="zoom-out"
              data-aos-delay="300"
            >
              <img
                src="assets/img/snackers.png"
                className="img-fluid animated"
                alt=""
              />
            </div>
          </div>
        </div>
        <div className="section-title" style={{ paddingBottom: "0px" }}>
          <h3>@ NIT Jalandhar</h3>
        </div>
      </div>
    </section>
  );
}
export default CurrentLive;
