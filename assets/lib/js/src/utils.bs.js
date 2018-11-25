'use strict';

var ReasonReact = require("reason-react/lib/js/src/ReasonReact.js");

function str(prim) {
  return prim;
}

var el = ReasonReact.element;

exports.str = str;
exports.el = el;
/* ReasonReact Not a pure module */
