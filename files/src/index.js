import "./styles.css";
import rootRender from "./rootRender";
import put from "put-selector";

const helloWorld = () => {
  const helloWorld = put("p", "Hello World!");
  return helloWorld;
};

rootRender(helloWorld(), "apc");
