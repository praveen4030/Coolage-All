import Lottie from "react-lottie";
import animationData from "./loader.json";

function Loader() {
  const defaultOptions = {
    loop: true,
    autoplay: true,
    animationData: animationData,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };
  const loaderStyle = {
    align: "center",
    // width: "50%",
    marginTop: "250px",
    // marginBottom: "100px",
    // marginRight: "700px",
    // marginLeft: "700px",
  };
  return (
    <div>
      <Lottie
        options={defaultOptions}
        height={200}
        width={200}
        style={loaderStyle}
      />
    </div>
  );
}
export default Loader;
