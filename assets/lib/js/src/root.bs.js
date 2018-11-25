'use strict';

var Page = require("./page.bs.js");
var ReactDOMRe = require("reason-react/lib/js/src/ReactDOMRe.js");
var ReasonReact = require("reason-react/lib/js/src/ReasonReact.js");

((require('../css/app.sass')));

ReactDOMRe.renderToElementWithId(ReasonReact.element(undefined, undefined, Page.make("Hellooo", /* array */[])), "root");

/*  Not a pure module */
