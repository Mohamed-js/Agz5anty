/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/js.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/js.js":
/*!************************************!*\
  !*** ./app/javascript/packs/js.js ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\app\\javascript\\packs\\js.js: Invalid left-hand side in assignment expression (24:4)\n\n  22 |\n  23 | document.querySelector(\".add\").addEventListener(\"click\", function () {\n> 24 |     Number(this.previousElementSibling.value) +=1\n     |     ^\n  25 | })\n  26 |\n  27 | document.querySelector(\".min\").addEventListener(\"click\", function () {\n    at Parser._raise (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:776:17)\n    at Parser.raiseWithData (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:769:17)\n    at Parser.raise (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:737:17)\n    at Parser.checkLVal (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:9789:16)\n    at Parser.parseMaybeAssign (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10100:12)\n    at Parser.parseExpressionBase (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10023:23)\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10017:39\n    at Parser.allowInAnd (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11711:16)\n    at Parser.parseExpression (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10017:17)\n    at Parser.parseStatementContent (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11977:23)\n    at Parser.parseStatement (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11846:17)\n    at Parser.parseBlockOrModuleBlockBody (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12428:25)\n    at Parser.parseBlockBody (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12419:10)\n    at Parser.parseBlock (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12403:10)\n    at Parser.parseFunctionBody (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11389:24)\n    at Parser.parseFunctionBodyAndFinish (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11373:10)\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12561:12\n    at Parser.withTopicForbiddingContext (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11686:14)\n    at Parser.parseFunction (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12560:10)\n    at Parser.parseFunctionOrFunctionSent (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10827:17)\n    at Parser.parseExprAtom (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10663:21)\n    at Parser.parseExprSubscripts (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10318:23)\n    at Parser.parseUpdate (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10298:21)\n    at Parser.parseMaybeUnary (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10276:23)\n    at Parser.parseExprOps (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10141:23)\n    at Parser.parseMaybeConditional (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10115:23)\n    at Parser.parseMaybeAssign (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10078:21)\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10045:39\n    at Parser.allowInAnd (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11717:12)\n    at Parser.parseMaybeAssignAllowIn (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:10045:17)");

/***/ })

/******/ });
//# sourceMappingURL=js-1152cb6444e2f43a6ce1.js.map