import React from "react";
function Contact() {
  function refreshPage() {
    alert("Your message has been sent. Thank you!");
    window.location.reload(false);
  }
  return (
    <section id="contact" class="contact">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <p>Contact Us</p>
        </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right" data-aos-delay="100">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>530, Suwalka Tower, IPIA road, Kota ( 324005 )</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>hello@coolage.co.in</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+91-7221904716 , +91-8126596788 </p>
              </div>
              <div class="play-store " style={{ marginTop: "40px" }}>
                <a href="https://play.google.com/store/apps/details?id=com.kraigs.coolage">
                  <img
                    src="assets/img/play_store.png"
                    alt=""
                    className="img-fluid"
                  />
                </a>
              </div>
            </div>
          </div>

          <div
            class="col-lg-8 mt-5 mt-lg-0"
            data-aos="fade-left"
            data-aos-delay="200"
          >
            <iframe
              name="hidden_iframe"
              id="hidden_iframe"
              style={{ display: "none" }}
            ></iframe>
            <form
              action="https://docs.google.com/forms/u/0/d/e/1FAIpQLSeRUL4aMwvk7HSQHlODX4SG2cYlWzNH1cpQD-rIvB-EFKAUag/formResponse"
              method="post"
              role="form"
              class="php-email-form"
              target="hidden_iframe"
              onSubmit={refreshPage}
            >
              <div class="row">
                <div class="col-md-6 form-group">
                  <input
                    type="text"
                    name="entry.2060122050"
                    class="form-control"
                    id="name"
                    placeholder="Your Name"
                    required
                  />
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input
                    type="email"
                    class="form-control"
                    name="entry.1116945069"
                    id="email"
                    placeholder="Your Email"
                    required
                  />
                </div>
              </div>
              <div class="form-group mt-3">
                <input
                  type="text"
                  class="form-control"
                  name="entry.1318878918"
                  id="subject"
                  placeholder="Subject"
                  required
                />
              </div>
              <div class="form-group mt-3">
                <textarea
                  class="form-control"
                  name="entry.893459776"
                  rows="5"
                  placeholder="Message"
                  required
                ></textarea>
              </div>
              <div class="text-center">
                <button
                  // onClick={() => {
                  //   alert("Your message has been sent. Thank you!");
                  // }}
                  type="submit"
                >
                  Send Message
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  );
}
export default Contact;
