import Presentation from "./Presentation";
import Welcome from "./Welcome";
import "./index.css";
import { Routes, Route } from "react-router-dom";

const App = () => {
  return (
    <Routes>
      <Route exact path="/" element={<Welcome />}></Route>
      <Route exact path="/presentation" element={<Presentation />}></Route>
    </Routes>
  );
};

export default App;
