open Utils;

let component = ReasonReact.statelessComponent("page");
let handleClick = (_event, _self) => Js.log("clicked!");

let make = (~message, _children) => {
  ...component,
  render: self =>
    <div className="jim" onClick=(self.handle(handleClick)) >
      <h1>
        (str(message))
      </h1>
    </div>,
};
