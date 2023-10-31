import "./styles.css";
import rootRender from "./rootRender";

const helloWorld = () => {
  const helloWorld = document.createElement("p");
  helloWorld.textContent = "Hello World!";
  return helloWorld;
};

rootRender(helloWorld(), "apc");
