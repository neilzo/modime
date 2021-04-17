import React from "react";

type HelloTSProps = {
  name: string;
};

const HelloTS: React.FC<HelloTSProps> = (props) => (
  <div>Hello, I'm a {props.name} component!</div>
);
