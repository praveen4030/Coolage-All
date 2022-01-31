function Demo() {
  return (
    <section id="demo">
      <div>
        <div className="container">
          <div className="row">
            <div
              className="icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 "
              data-aos="fade-left"
            >
              <div className="section-title">
                <h2>Product Demo</h2>
              </div>
            </div>
          </div>
          <div class="row justify-content-center">
            <div className="col-lg-10">
              <div className="iframe-container">
                <iframe
                  src="https://www.youtube.com/embed/pGnDbzjouTQ"
                  title="YouTube video player"
                  frameborder="0"
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen
                ></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
export default Demo;
