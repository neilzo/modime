// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";

type HelloTSProps = {
  name: string;
};

const HelloTS: React.FC<HelloTSProps> = (props) => <div>Hello, I'm a {props.name} component!</div>;

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <HelloTS name="Typescript" />,
    document.body.appendChild(document.createElement("div"))
  );
});
