function rootRender(element, option = "apc") {
  const root = document.querySelector("#root");
  if (option === "apc") {
    document.querySelector("#root").appendChild(element);
  } else if (option === "rpc") {
    while (root.children.length > 0) {
      root.removeChild(root.childNodes[1]);
    }
  }
}
export default rootRender;
