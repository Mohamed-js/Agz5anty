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
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/application.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/application.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/application.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\app\\javascript\\packs\\application.js: Identifier 'Tone' has already been declared (19:12)\n\n  17 |\n  18 | import * as Tone from 'tone'\n> 19 | import * as Tone from 'tone'\n     |             ^\n  20 |\n  21 | const synth = new Tone.Synth().toDestination();\n  22 |\n    at Parser._raise (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:776:17)\n    at Parser.raiseWithData (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:769:17)\n    at Parser.raise (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:737:17)\n    at ScopeHandler.checkRedeclarationInScope (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:1392:12)\n    at ScopeHandler.declareName (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:1358:12)\n    at Parser.checkLVal (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:9742:24)\n    at Parser.parseImportSpecifierLocal (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:13301:10)\n    at Parser.maybeParseStarImportSpecifier (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:13415:12)\n    at Parser.parseImport (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:13268:41)\n    at Parser.parseStatementContent (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11946:27)\n    at Parser.parseStatement (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11846:17)\n    at Parser.parseBlockOrModuleBlockBody (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12428:25)\n    at Parser.parseBlockBody (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:12419:10)\n    at Parser.parseTopLevel (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:11777:10)\n    at Parser.parse (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:13583:10)\n    at parse (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\parser\\lib\\index.js:13636:38)\n    at parser (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\core\\lib\\parser\\index.js:54:34)\n    at parser.next (<anonymous>)\n    at normalizeFile (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\core\\lib\\transformation\\normalize-file.js:99:38)\n    at normalizeFile.next (<anonymous>)\n    at run (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\core\\lib\\transformation\\index.js:31:50)\n    at run.next (<anonymous>)\n    at Function.transform (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\core\\lib\\transform.js:27:41)\n    at transform.next (<anonymous>)\n    at step (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\gensync\\index.js:261:32)\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\gensync\\index.js:273:13\n    at async.call.result.err.err (C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\gensync\\index.js:223:11)\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\gensync\\index.js:189:28\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\@babel\\core\\lib\\gensync-utils\\async.js:72:7\n    at C:\\Users\\lordd\\Documents\\GitHub\\Agz5anty\\node_modules\\gensync\\index.js:113:33");

/***/ })

/******/ });
//# sourceMappingURL=application-c44c63dc9699fb5331ac.js.map