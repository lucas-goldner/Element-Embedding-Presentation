import "./index.css";
import { Link } from "react-router-dom";

const Welcome = () => {
  return (
    <main>
      <div className="button-container">
        <h1>Hello 👋 from React</h1>
        <Link to="/presentation">
          <button className="button">Go to Presentation ➡️</button>
        </Link>
      </div>
    </main>
  );
};

export default Welcome;
