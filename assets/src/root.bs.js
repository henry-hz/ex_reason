'use strict';

var Page = require("./page.bs.js");
var ReactDOMRe = require("reason-react/src/ReactDOMRe.js");
var ReasonReact = require("reason-react/src/ReasonReact.js");

((require('../css/app.sass')));

ReactDOMRe.renderToElementWithId(ReasonReact.element(undefined, undefined, Page.make("Hellooo", /* array */[])), "root");

/*  Not a pure module */
