function get(t){return getComputedStyle(t)}function set(t,e){for(var r in e){var l=e[r];"number"===typeof l&&(l+="px");t.style[r]=l}return t}function div(t){var e=document.createElement("div");e.className=t;return e}var t="undefined"!==typeof Element&&(Element.prototype.matches||Element.prototype.webkitMatchesSelector||Element.prototype.mozMatchesSelector||Element.prototype.msMatchesSelector);function matches(e,r){if(!t)throw new Error("No element matching method supported");return t.call(e,r)}function remove(t){t.remove?t.remove():t.parentNode&&t.parentNode.removeChild(t)}function queryChildren(t,e){return Array.prototype.filter.call(t.children,(function(t){return matches(t,e)}))}var e={main:"ps",rtl:"ps__rtl",element:{thumb:function(t){return"ps__thumb-"+t},rail:function(t){return"ps__rail-"+t},consuming:"ps__child--consume"},state:{focus:"ps--focus",clicking:"ps--clicking",active:function(t){return"ps--active-"+t},scrolling:function(t){return"ps--scrolling-"+t}}};var r={x:null,y:null};function addScrollingClass(t,l){var i=t.element.classList;var n=e.state.scrolling(l);i.contains(n)?clearTimeout(r[l]):i.add(n)}function removeScrollingClass(t,l){r[l]=setTimeout((function(){return t.isAlive&&t.element.classList.remove(e.state.scrolling(l))}),t.settings.scrollingThreshold)}function setScrollingClassInstantly(t,e){addScrollingClass(t,e);removeScrollingClass(t,e)}var l=function EventElement(t){this.element=t;this.handlers={}};var i={isEmpty:{configurable:true}};l.prototype.bind=function bind(t,e){"undefined"===typeof this.handlers[t]&&(this.handlers[t]=[]);this.handlers[t].push(e);this.element.addEventListener(t,e,false)};l.prototype.unbind=function unbind(t,e){var r=this;this.handlers[t]=this.handlers[t].filter((function(l){if(e&&l!==e)return true;r.element.removeEventListener(t,l,false);return false}))};l.prototype.unbindAll=function unbindAll(){for(var t in this.handlers)this.unbind(t)};i.isEmpty.get=function(){var t=this;return Object.keys(this.handlers).every((function(e){return 0===t.handlers[e].length}))};Object.defineProperties(l.prototype,i);var n=function EventManager(){this.eventElements=[]};n.prototype.eventElement=function eventElement(t){var e=this.eventElements.filter((function(e){return e.element===t}))[0];if(!e){e=new l(t);this.eventElements.push(e)}return e};n.prototype.bind=function bind(t,e,r){this.eventElement(t).bind(e,r)};n.prototype.unbind=function unbind(t,e,r){var l=this.eventElement(t);l.unbind(e,r);l.isEmpty&&this.eventElements.splice(this.eventElements.indexOf(l),1)};n.prototype.unbindAll=function unbindAll(){this.eventElements.forEach((function(t){return t.unbindAll()}));this.eventElements=[]};n.prototype.once=function once(t,e,r){var l=this.eventElement(t);var onceHandler=function(t){l.unbind(e,onceHandler);r(t)};l.bind(e,onceHandler)};function createEvent(t){if("function"===typeof window.CustomEvent)return new CustomEvent(t);var e=document.createEvent("CustomEvent");e.initCustomEvent(t,false,false,void 0);return e}function processScrollDiff(t,e,r,l,i){void 0===l&&(l=true);void 0===i&&(i=false);var n;if("top"===e)n=["contentHeight","containerHeight","scrollTop","y","up","down"];else{if("left"!==e)throw new Error("A proper axis should be provided");n=["contentWidth","containerWidth","scrollLeft","x","left","right"]}processScrollDiff$1(t,r,n,l,i)}function processScrollDiff$1(t,e,r,l,i){var n=r[0];var o=r[1];var s=r[2];var a=r[3];var c=r[4];var h=r[5];void 0===l&&(l=true);void 0===i&&(i=false);var u=t.element;t.reach[a]=null;u[s]<1&&(t.reach[a]="start");u[s]>t[n]-t[o]-1&&(t.reach[a]="end");if(e){u.dispatchEvent(createEvent("ps-scroll-"+a));e<0?u.dispatchEvent(createEvent("ps-scroll-"+c)):e>0&&u.dispatchEvent(createEvent("ps-scroll-"+h));l&&setScrollingClassInstantly(t,a)}t.reach[a]&&(e||i)&&u.dispatchEvent(createEvent("ps-"+a+"-reach-"+t.reach[a]))}function toInt(t){return parseInt(t,10)||0}function isEditable(t){return matches(t,"input,[contenteditable]")||matches(t,"select,[contenteditable]")||matches(t,"textarea,[contenteditable]")||matches(t,"button,[contenteditable]")}function outerWidth(t){var e=get(t);return toInt(e.width)+toInt(e.paddingLeft)+toInt(e.paddingRight)+toInt(e.borderLeftWidth)+toInt(e.borderRightWidth)}var o={isWebKit:"undefined"!==typeof document&&"WebkitAppearance"in document.documentElement.style,supportsTouch:"undefined"!==typeof window&&("ontouchstart"in window||"maxTouchPoints"in window.navigator&&window.navigator.maxTouchPoints>0||window.DocumentTouch&&document instanceof window.DocumentTouch),supportsIePointer:"undefined"!==typeof navigator&&navigator.msMaxTouchPoints,isChrome:"undefined"!==typeof navigator&&/Chrome/i.test(navigator&&navigator.userAgent)};function updateGeometry(t){var r=t.element;var l=Math.floor(r.scrollTop);var i=r.getBoundingClientRect();t.containerWidth=Math.round(i.width);t.containerHeight=Math.round(i.height);t.contentWidth=r.scrollWidth;t.contentHeight=r.scrollHeight;if(!r.contains(t.scrollbarXRail)){queryChildren(r,e.element.rail("x")).forEach((function(t){return remove(t)}));r.appendChild(t.scrollbarXRail)}if(!r.contains(t.scrollbarYRail)){queryChildren(r,e.element.rail("y")).forEach((function(t){return remove(t)}));r.appendChild(t.scrollbarYRail)}if(!t.settings.suppressScrollX&&t.containerWidth+t.settings.scrollXMarginOffset<t.contentWidth){t.scrollbarXActive=true;t.railXWidth=t.containerWidth-t.railXMarginWidth;t.railXRatio=t.containerWidth/t.railXWidth;t.scrollbarXWidth=getThumbSize(t,toInt(t.railXWidth*t.containerWidth/t.contentWidth));t.scrollbarXLeft=toInt((t.negativeScrollAdjustment+r.scrollLeft)*(t.railXWidth-t.scrollbarXWidth)/(t.contentWidth-t.containerWidth))}else t.scrollbarXActive=false;if(!t.settings.suppressScrollY&&t.containerHeight+t.settings.scrollYMarginOffset<t.contentHeight){t.scrollbarYActive=true;t.railYHeight=t.containerHeight-t.railYMarginHeight;t.railYRatio=t.containerHeight/t.railYHeight;t.scrollbarYHeight=getThumbSize(t,toInt(t.railYHeight*t.containerHeight/t.contentHeight));t.scrollbarYTop=toInt(l*(t.railYHeight-t.scrollbarYHeight)/(t.contentHeight-t.containerHeight))}else t.scrollbarYActive=false;t.scrollbarXLeft>=t.railXWidth-t.scrollbarXWidth&&(t.scrollbarXLeft=t.railXWidth-t.scrollbarXWidth);t.scrollbarYTop>=t.railYHeight-t.scrollbarYHeight&&(t.scrollbarYTop=t.railYHeight-t.scrollbarYHeight);updateCss(r,t);if(t.scrollbarXActive)r.classList.add(e.state.active("x"));else{r.classList.remove(e.state.active("x"));t.scrollbarXWidth=0;t.scrollbarXLeft=0;r.scrollLeft=true===t.isRtl?t.contentWidth:0}if(t.scrollbarYActive)r.classList.add(e.state.active("y"));else{r.classList.remove(e.state.active("y"));t.scrollbarYHeight=0;t.scrollbarYTop=0;r.scrollTop=0}}function getThumbSize(t,e){t.settings.minScrollbarLength&&(e=Math.max(e,t.settings.minScrollbarLength));t.settings.maxScrollbarLength&&(e=Math.min(e,t.settings.maxScrollbarLength));return e}function updateCss(t,e){var r={width:e.railXWidth};var l=Math.floor(t.scrollTop);e.isRtl?r.left=e.negativeScrollAdjustment+t.scrollLeft+e.containerWidth-e.contentWidth:r.left=t.scrollLeft;e.isScrollbarXUsingBottom?r.bottom=e.scrollbarXBottom-l:r.top=e.scrollbarXTop+l;set(e.scrollbarXRail,r);var i={top:l,height:e.railYHeight};e.isScrollbarYUsingRight?e.isRtl?i.right=e.contentWidth-(e.negativeScrollAdjustment+t.scrollLeft)-e.scrollbarYRight-e.scrollbarYOuterWidth-9:i.right=e.scrollbarYRight-t.scrollLeft:e.isRtl?i.left=e.negativeScrollAdjustment+t.scrollLeft+2*e.containerWidth-e.contentWidth-e.scrollbarYLeft-e.scrollbarYOuterWidth:i.left=e.scrollbarYLeft+t.scrollLeft;set(e.scrollbarYRail,i);set(e.scrollbarX,{left:e.scrollbarXLeft,width:e.scrollbarXWidth-e.railBorderXWidth});set(e.scrollbarY,{top:e.scrollbarYTop,height:e.scrollbarYHeight-e.railBorderYWidth})}function clickRail(t){t.element;t.event.bind(t.scrollbarY,"mousedown",(function(t){return t.stopPropagation()}));t.event.bind(t.scrollbarYRail,"mousedown",(function(e){var r=e.pageY-window.pageYOffset-t.scrollbarYRail.getBoundingClientRect().top;var l=r>t.scrollbarYTop?1:-1;t.element.scrollTop+=l*t.containerHeight;updateGeometry(t);e.stopPropagation()}));t.event.bind(t.scrollbarX,"mousedown",(function(t){return t.stopPropagation()}));t.event.bind(t.scrollbarXRail,"mousedown",(function(e){var r=e.pageX-window.pageXOffset-t.scrollbarXRail.getBoundingClientRect().left;var l=r>t.scrollbarXLeft?1:-1;t.element.scrollLeft+=l*t.containerWidth;updateGeometry(t);e.stopPropagation()}))}function dragThumb(t){bindMouseScrollHandler(t,["containerWidth","contentWidth","pageX","railXWidth","scrollbarX","scrollbarXWidth","scrollLeft","x","scrollbarXRail"]);bindMouseScrollHandler(t,["containerHeight","contentHeight","pageY","railYHeight","scrollbarY","scrollbarYHeight","scrollTop","y","scrollbarYRail"])}function bindMouseScrollHandler(t,r){var l=r[0];var i=r[1];var n=r[2];var o=r[3];var s=r[4];var a=r[5];var c=r[6];var h=r[7];var u=r[8];var d=t.element;var f=null;var v=null;var p=null;function mouseMoveHandler(e){e.touches&&e.touches[0]&&(e[n]=e.touches[0].pageY);d[c]=f+p*(e[n]-v);addScrollingClass(t,h);updateGeometry(t);e.stopPropagation();e.type.startsWith("touch")&&e.changedTouches.length>1&&e.preventDefault()}function mouseUpHandler(){removeScrollingClass(t,h);t[u].classList.remove(e.state.clicking);t.event.unbind(t.ownerDocument,"mousemove",mouseMoveHandler)}function bindMoves(r,s){f=d[c];s&&r.touches&&(r[n]=r.touches[0].pageY);v=r[n];p=(t[i]-t[l])/(t[o]-t[a]);if(s)t.event.bind(t.ownerDocument,"touchmove",mouseMoveHandler);else{t.event.bind(t.ownerDocument,"mousemove",mouseMoveHandler);t.event.once(t.ownerDocument,"mouseup",mouseUpHandler);r.preventDefault()}t[u].classList.add(e.state.clicking);r.stopPropagation()}t.event.bind(t[s],"mousedown",(function(t){bindMoves(t)}));t.event.bind(t[s],"touchstart",(function(t){bindMoves(t,true)}))}function keyboard(t){var e=t.element;var elementHovered=function(){return matches(e,":hover")};var scrollbarFocused=function(){return matches(t.scrollbarX,":focus")||matches(t.scrollbarY,":focus")};function shouldPreventDefault(r,l){var i=Math.floor(e.scrollTop);if(0===r){if(!t.scrollbarYActive)return false;if(0===i&&l>0||i>=t.contentHeight-t.containerHeight&&l<0)return!t.settings.wheelPropagation}var n=e.scrollLeft;if(0===l){if(!t.scrollbarXActive)return false;if(0===n&&r<0||n>=t.contentWidth-t.containerWidth&&r>0)return!t.settings.wheelPropagation}return true}t.event.bind(t.ownerDocument,"keydown",(function(r){if(!(r.isDefaultPrevented&&r.isDefaultPrevented()||r.defaultPrevented)&&(elementHovered()||scrollbarFocused())){var l=document.activeElement?document.activeElement:t.ownerDocument.activeElement;if(l){if("IFRAME"===l.tagName)l=l.contentDocument.activeElement;else while(l.shadowRoot)l=l.shadowRoot.activeElement;if(isEditable(l))return}var i=0;var n=0;switch(r.which){case 37:i=r.metaKey?-t.contentWidth:r.altKey?-t.containerWidth:-30;break;case 38:n=r.metaKey?t.contentHeight:r.altKey?t.containerHeight:30;break;case 39:i=r.metaKey?t.contentWidth:r.altKey?t.containerWidth:30;break;case 40:n=r.metaKey?-t.contentHeight:r.altKey?-t.containerHeight:-30;break;case 32:n=r.shiftKey?t.containerHeight:-t.containerHeight;break;case 33:n=t.containerHeight;break;case 34:n=-t.containerHeight;break;case 36:n=t.contentHeight;break;case 35:n=-t.contentHeight;break;default:return}if((!t.settings.suppressScrollX||0===i)&&(!t.settings.suppressScrollY||0===n)){e.scrollTop-=n;e.scrollLeft+=i;updateGeometry(t);shouldPreventDefault(i,n)&&r.preventDefault()}}}))}function wheel(t){var r=t.element;function shouldPreventDefault(e,l){var i=Math.floor(r.scrollTop);var n=0===r.scrollTop;var o=i+r.offsetHeight===r.scrollHeight;var s=0===r.scrollLeft;var a=r.scrollLeft+r.offsetWidth===r.scrollWidth;var c;c=Math.abs(l)>Math.abs(e)?n||o:s||a;return!c||!t.settings.wheelPropagation}function getDeltaFromEvent(t){var e=t.deltaX;var r=-1*t.deltaY;if("undefined"===typeof e||"undefined"===typeof r){e=-1*t.wheelDeltaX/6;r=t.wheelDeltaY/6}if(t.deltaMode&&1===t.deltaMode){e*=10;r*=10}if(e!==e&&r!==r){e=0;r=t.wheelDelta}return t.shiftKey?[-r,-e]:[e,r]}function shouldBeConsumedByChild(t,l,i){if(!o.isWebKit&&r.querySelector("select:focus"))return true;if(!r.contains(t))return false;var n=t;while(n&&n!==r){if(n.classList.contains(e.element.consuming))return true;var s=get(n);if(i&&s.overflowY.match(/(scroll|auto)/)){var a=n.scrollHeight-n.clientHeight;if(a>0&&(n.scrollTop>0&&i<0||n.scrollTop<a&&i>0))return true}if(l&&s.overflowX.match(/(scroll|auto)/)){var c=n.scrollWidth-n.clientWidth;if(c>0&&(n.scrollLeft>0&&l<0||n.scrollLeft<c&&l>0))return true}n=n.parentNode}return false}function mousewheelHandler(e){var l=getDeltaFromEvent(e);var i=l[0];var n=l[1];if(!shouldBeConsumedByChild(e.target,i,n)){var o=false;if(t.settings.useBothWheelAxes){if(t.scrollbarYActive&&!t.scrollbarXActive){n?r.scrollTop-=n*t.settings.wheelSpeed:r.scrollTop+=i*t.settings.wheelSpeed;o=true}else if(t.scrollbarXActive&&!t.scrollbarYActive){i?r.scrollLeft+=i*t.settings.wheelSpeed:r.scrollLeft-=n*t.settings.wheelSpeed;o=true}}else{r.scrollTop-=n*t.settings.wheelSpeed;r.scrollLeft+=i*t.settings.wheelSpeed}updateGeometry(t);o=o||shouldPreventDefault(i,n);if(o&&!e.ctrlKey){e.stopPropagation();e.preventDefault()}}}"undefined"!==typeof window.onwheel?t.event.bind(r,"wheel",mousewheelHandler):"undefined"!==typeof window.onmousewheel&&t.event.bind(r,"mousewheel",mousewheelHandler)}function touch(t){if(o.supportsTouch||o.supportsIePointer){var r=t.element;var l={};var i=0;var n={};var s=null;if(o.supportsTouch){t.event.bind(r,"touchstart",touchStart);t.event.bind(r,"touchmove",touchMove);t.event.bind(r,"touchend",touchEnd)}else if(o.supportsIePointer)if(window.PointerEvent){t.event.bind(r,"pointerdown",touchStart);t.event.bind(r,"pointermove",touchMove);t.event.bind(r,"pointerup",touchEnd)}else if(window.MSPointerEvent){t.event.bind(r,"MSPointerDown",touchStart);t.event.bind(r,"MSPointerMove",touchMove);t.event.bind(r,"MSPointerUp",touchEnd)}}function shouldPrevent(e,l){var i=Math.floor(r.scrollTop);var n=r.scrollLeft;var s=Math.abs(e);var a=Math.abs(l);if(a>s){if(l<0&&i===t.contentHeight-t.containerHeight||l>0&&0===i)return 0===window.scrollY&&l>0&&o.isChrome}else if(s>a&&(e<0&&n===t.contentWidth-t.containerWidth||e>0&&0===n))return true;return true}function applyTouchMove(e,l){r.scrollTop-=l;r.scrollLeft-=e;updateGeometry(t)}function getTouch(t){return t.targetTouches?t.targetTouches[0]:t}function shouldHandle(t){return(!t.pointerType||"pen"!==t.pointerType||0!==t.buttons)&&(!(!t.targetTouches||1!==t.targetTouches.length)||!(!t.pointerType||"mouse"===t.pointerType||t.pointerType===t.MSPOINTER_TYPE_MOUSE))}function touchStart(t){if(shouldHandle(t)){var e=getTouch(t);l.pageX=e.pageX;l.pageY=e.pageY;i=(new Date).getTime();null!==s&&clearInterval(s)}}function shouldBeConsumedByChild(t,l,i){if(!r.contains(t))return false;var n=t;while(n&&n!==r){if(n.classList.contains(e.element.consuming))return true;var o=get(n);if(i&&o.overflowY.match(/(scroll|auto)/)){var s=n.scrollHeight-n.clientHeight;if(s>0&&(n.scrollTop>0&&i<0||n.scrollTop<s&&i>0))return true}if(l&&o.overflowX.match(/(scroll|auto)/)){var a=n.scrollWidth-n.clientWidth;if(a>0&&(n.scrollLeft>0&&l<0||n.scrollLeft<a&&l>0))return true}n=n.parentNode}return false}function touchMove(t){if(shouldHandle(t)){var e=getTouch(t);var r={pageX:e.pageX,pageY:e.pageY};var o=r.pageX-l.pageX;var s=r.pageY-l.pageY;if(shouldBeConsumedByChild(t.target,o,s))return;applyTouchMove(o,s);l=r;var a=(new Date).getTime();var c=a-i;if(c>0){n.x=o/c;n.y=s/c;i=a}shouldPrevent(o,s)&&t.preventDefault()}}function touchEnd(){if(t.settings.swipeEasing){clearInterval(s);s=setInterval((function(){if(t.isInitialized)clearInterval(s);else if(n.x||n.y)if(Math.abs(n.x)<.01&&Math.abs(n.y)<.01)clearInterval(s);else if(t.element){applyTouchMove(30*n.x,30*n.y);n.x*=.8;n.y*=.8}else clearInterval(s);else clearInterval(s)}),10)}}}var defaultSettings=function(){return{handlers:["click-rail","drag-thumb","keyboard","wheel","touch"],maxScrollbarLength:null,minScrollbarLength:null,scrollingThreshold:1e3,scrollXMarginOffset:0,scrollYMarginOffset:0,suppressScrollX:false,suppressScrollY:false,swipeEasing:true,useBothWheelAxes:false,wheelPropagation:true,wheelSpeed:1}};var s={"click-rail":clickRail,"drag-thumb":dragThumb,keyboard:keyboard,wheel:wheel,touch:touch};var a=function PerfectScrollbar(t,r){var l=this;void 0===r&&(r={});"string"===typeof t&&(t=document.querySelector(t));if(!t||!t.nodeName)throw new Error("no element is specified to initialize PerfectScrollbar");this.element=t;t.classList.add(e.main);this.settings=defaultSettings();for(var i in r)this.settings[i]=r[i];this.containerWidth=null;this.containerHeight=null;this.contentWidth=null;this.contentHeight=null;var focus=function(){return t.classList.add(e.state.focus)};var blur=function(){return t.classList.remove(e.state.focus)};this.isRtl="rtl"===get(t).direction;true===this.isRtl&&t.classList.add(e.rtl);this.isNegativeScroll=function(){var e=t.scrollLeft;var r=null;t.scrollLeft=-1;r=t.scrollLeft<0;t.scrollLeft=e;return r}();this.negativeScrollAdjustment=this.isNegativeScroll?t.scrollWidth-t.clientWidth:0;this.event=new n;this.ownerDocument=t.ownerDocument||document;this.scrollbarXRail=div(e.element.rail("x"));t.appendChild(this.scrollbarXRail);this.scrollbarX=div(e.element.thumb("x"));this.scrollbarXRail.appendChild(this.scrollbarX);this.scrollbarX.setAttribute("tabindex",0);this.event.bind(this.scrollbarX,"focus",focus);this.event.bind(this.scrollbarX,"blur",blur);this.scrollbarXActive=null;this.scrollbarXWidth=null;this.scrollbarXLeft=null;var o=get(this.scrollbarXRail);this.scrollbarXBottom=parseInt(o.bottom,10);if(isNaN(this.scrollbarXBottom)){this.isScrollbarXUsingBottom=false;this.scrollbarXTop=toInt(o.top)}else this.isScrollbarXUsingBottom=true;this.railBorderXWidth=toInt(o.borderLeftWidth)+toInt(o.borderRightWidth);set(this.scrollbarXRail,{display:"block"});this.railXMarginWidth=toInt(o.marginLeft)+toInt(o.marginRight);set(this.scrollbarXRail,{display:""});this.railXWidth=null;this.railXRatio=null;this.scrollbarYRail=div(e.element.rail("y"));t.appendChild(this.scrollbarYRail);this.scrollbarY=div(e.element.thumb("y"));this.scrollbarYRail.appendChild(this.scrollbarY);this.scrollbarY.setAttribute("tabindex",0);this.event.bind(this.scrollbarY,"focus",focus);this.event.bind(this.scrollbarY,"blur",blur);this.scrollbarYActive=null;this.scrollbarYHeight=null;this.scrollbarYTop=null;var a=get(this.scrollbarYRail);this.scrollbarYRight=parseInt(a.right,10);if(isNaN(this.scrollbarYRight)){this.isScrollbarYUsingRight=false;this.scrollbarYLeft=toInt(a.left)}else this.isScrollbarYUsingRight=true;this.scrollbarYOuterWidth=this.isRtl?outerWidth(this.scrollbarY):null;this.railBorderYWidth=toInt(a.borderTopWidth)+toInt(a.borderBottomWidth);set(this.scrollbarYRail,{display:"block"});this.railYMarginHeight=toInt(a.marginTop)+toInt(a.marginBottom);set(this.scrollbarYRail,{display:""});this.railYHeight=null;this.railYRatio=null;this.reach={x:t.scrollLeft<=0?"start":t.scrollLeft>=this.contentWidth-this.containerWidth?"end":null,y:t.scrollTop<=0?"start":t.scrollTop>=this.contentHeight-this.containerHeight?"end":null};this.isAlive=true;this.settings.handlers.forEach((function(t){return s[t](l)}));this.lastScrollTop=Math.floor(t.scrollTop);this.lastScrollLeft=t.scrollLeft;this.event.bind(this.element,"scroll",(function(t){return l.onScroll(t)}));updateGeometry(this)};a.prototype.update=function update(){if(this.isAlive){this.negativeScrollAdjustment=this.isNegativeScroll?this.element.scrollWidth-this.element.clientWidth:0;set(this.scrollbarXRail,{display:"block"});set(this.scrollbarYRail,{display:"block"});this.railXMarginWidth=toInt(get(this.scrollbarXRail).marginLeft)+toInt(get(this.scrollbarXRail).marginRight);this.railYMarginHeight=toInt(get(this.scrollbarYRail).marginTop)+toInt(get(this.scrollbarYRail).marginBottom);set(this.scrollbarXRail,{display:"none"});set(this.scrollbarYRail,{display:"none"});updateGeometry(this);processScrollDiff(this,"top",0,false,true);processScrollDiff(this,"left",0,false,true);set(this.scrollbarXRail,{display:""});set(this.scrollbarYRail,{display:""})}};a.prototype.onScroll=function onScroll(t){if(this.isAlive){updateGeometry(this);processScrollDiff(this,"top",this.element.scrollTop-this.lastScrollTop);processScrollDiff(this,"left",this.element.scrollLeft-this.lastScrollLeft);this.lastScrollTop=Math.floor(this.element.scrollTop);this.lastScrollLeft=this.element.scrollLeft}};a.prototype.destroy=function destroy(){if(this.isAlive){this.event.unbindAll();remove(this.scrollbarX);remove(this.scrollbarY);remove(this.scrollbarXRail);remove(this.scrollbarYRail);this.removePsClasses();this.element=null;this.scrollbarX=null;this.scrollbarY=null;this.scrollbarXRail=null;this.scrollbarYRail=null;this.isAlive=false}};a.prototype.removePsClasses=function removePsClasses(){this.element.className=this.element.className.split(" ").filter((function(t){return!t.match(/^ps([-_].+|)$/)})).join(" ")};export{a as default};
