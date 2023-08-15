import "./index.css";
import { Helmet } from "react-helmet-async";

const Presentation = () => {
  return (
    <Helmet>
      <script src="/flutter/flutter.js" defer></script>
      <script src="/flutter_init.js" defer></script>
    </Helmet>
  );
};

export default Presentation;
