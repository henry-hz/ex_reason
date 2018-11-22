

import * as Page from "./page.bs.js";
import * as ReactDOMRe from "reason-react/lib/es6/src/ReactDOMRe.js";
import * as ReasonReact from "reason-react/lib/es6/src/ReasonReact.js";

((require('../css/app.sass')));

ReactDOMRe.renderToElementWithId(ReasonReact.element(undefined, undefined, Page.make("Hellooo", /* array */[])), "root");

export {
  
}
/*  Not a pure module */
