(this.webpackJsonpratingoclient=this.webpackJsonpratingoclient||[]).push([[0],{15:function(e,t,a){e.exports=a(39)},20:function(e,t,a){},21:function(e,t,a){},39:function(e,t,a){"use strict";a.r(t);var n=a(0),r=a.n(n),c=a(13),o=a.n(c),i=(a(20),a(3)),l=a(1),s=(a(21),a(14)),u=a.n(s),m=function(){return u.a.create({baseURL:"https://ratingo.herokuapp.com/"})},f={newRating:function(e){return m().post("newRating",e)},getRating:function(e,t){return m().get("getRating",{params:{offset:e,limit:t}})},getRatings:function(e,t,a){return m().get("getRatings",{params:{offset:t,limit:a,pid:e}})}},p=r.a.createContext({status:!1,data:[]}),d=function(e){var t=Object(n.useContext)(p).dispatch;return r.a.createElement("div",{className:"cards",style:{color:"#fff"},onClick:function(){console.log(e),t({type:"SET_PRODUCT",payload:{pid:e.pid,avg:e.avg,count:e.count}})}},r.a.createElement("h1",{className:"title",style:{textAlign:"center",padding:"3%",width:"100%"}},e.pid),r.a.createElement("h3",null,"Rating:",e.avg,"(",e.count,")"))};function g(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function b(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?g(Object(a),!0).forEach((function(t){Object(i.a)(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):g(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}var O={offset:1,limit:5};var y=function(e){var t=Object(n.useContext)(p),a=t.state,c=(t.dispatch,Object(n.useState)({})),o=Object(l.a)(c,2),i=o[0],s=o[1],u=Object(n.useState)([]),m=Object(l.a)(u,2),d=m[0],g=m[1],y=Object(n.useState)(O),h=Object(l.a)(y,2),v=h[0],j=h[1],E=Object(n.useState)(!1),w=Object(l.a)(E,2),P=w[0],R=w[1],N=Object(n.useState)(!1),S=Object(l.a)(N,2),x=S[0],C=S[1],k=Object(n.useState)(!1),D=Object(l.a)(k,2),T=D[0],U=D[1];return Object(n.useEffect)((function(){a.data.pid&&f.getRatings(a.data.pid,v.offset,v.limit).then((function(e){e.data.data?g(e.data.data):R(!0)})).catch((function(e){R(!0)}))}),[v.offset]),r.a.createElement("div",{style:{marginTop:"7%"}},r.a.createElement("div",{className:"cards",style:{marginLeft:"25vw",width:"50vw",color:"white",display:"block"}},r.a.createElement("div",{className:"flex-container"},r.a.createElement("div",{style:{minWidth:"20vw",background:"#414550",borderRadius:"15px",margin:"5%"}},r.a.createElement("h1",{className:"title",style:{padding:"10%",border:"0"}},a.data.pid)),r.a.createElement("div",{style:{marginLeft:"10%",marginTop:"5%"}},r.a.createElement("h2",null,"Avg Rating: ",a.data.avg),r.a.createElement("h3",null,"No. of Ratings: ",a.data.count)))),r.a.createElement("div",{style:{color:"white"}},r.a.createElement("h2",null,"Add your rating:"),r.a.createElement("form",{onSubmit:function(e){e.preventDefault(),i.uid&&i.rating&&i.comment&&f.newRating(b({},i,{pid:a.data.pid})).then((function(e){C(!1),U(!0)})).catch((function(e){console.log(e),C(!0),U(!1)}))}},r.a.createElement("input",{required:!0,type:"text",className:"cusInput",placeholder:"UserID",name:"username",style:{margin:"2%"},onChange:function(e){return s(b({},i,{uid:e.target.value}))}}),r.a.createElement("input",{required:!0,type:"number",className:"cusInput",placeholder:"Rating(1to5)",style:{width:"7vw",margin:"2%"},name:"rating",onChange:function(e){return s(b({},i,{rating:e.target.value}))}}),r.a.createElement("input",{type:"text",className:"cusInput",placeholder:"Comment",name:"comment",style:{width:"10vw",margin:"2%"},onChange:function(e){return s(b({},i,{comment:e.target.value}))}}),r.a.createElement("button",{className:"cusBut1"},"Submit")),x&&r.a.createElement("h1",null,"Wrong Input try again."),T&&r.a.createElement("h1",null,"Rating Submitted successfully!"),r.a.createElement("h2",null,"Ratings:"),d.length>0&&r.a.createElement(r.a.Fragment,null,d.map((function(e){return r.a.createElement("div",{style:{marginBottom:"3%"}},r.a.createElement("div",{key:e.uid,style:{display:"inline",background:"#414550",borderRadius:"10px",padding:"1%"}},r.a.createElement("span",{className:"rating",style:{marginRight:"2%"}},"User:",e.uid),r.a.createElement("span",{className:"rating",style:{marginRight:"2%"}},"Rating:",e.rating),r.a.createElement("span",{className:"rating"},"Comment:",e.comment)))})),r.a.createElement("div",{style:{display:"flex",marginLeft:"40%"}},v.offset<a.data.count/5&&r.a.createElement("p",{className:"next",onClick:function(){j(b({},v,{offset:v.offset+1}))}},"Next"),v.offset>1&&r.a.createElement("p",{className:"prev",onClick:function(){j(b({},v,{offset:v.offset-1}))}},"Prev"))),0===d.length&&r.a.createElement("h2",null,"No ratings to Show!!")),P&&r.a.createElement("div",null,r.a.createElement("h1",null,"Error occured!!!")))};function h(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function v(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?h(Object(a),!0).forEach((function(t){Object(i.a)(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):h(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}var j={offset:1,limit:10};var E=function(){var e=Object(n.useContext)(p).state,t=Object(n.useState)([]),a=Object(l.a)(t,2),c=a[0],o=a[1],i=Object(n.useState)(j),s=Object(l.a)(i,2),u=s[0],m=s[1],g=Object(n.useState)(!1),b=Object(l.a)(g,2),O=b[0],h=b[1],E=Object(n.useState)(0),w=Object(l.a)(E,2),P=w[0],R=w[1];return Object(n.useEffect)((function(){f.getRating(u.offset,u.limit).then((function(e){console.log(e.data),e.data.data&&e.data.count?(o(e.data.data),R(e.data.count)):h(!0)})).catch((function(e){console.log(e),h(!0)}))}),[u.offset]),r.a.createElement("div",{className:"App"},r.a.createElement("div",{className:"topbar"},r.a.createElement("h1",{className:"title",style:{float:"left",border:"1px double white",borderRadius:"0px",marginLeft:"2%"}},"ratin",r.a.createElement("br",null),"GO")),!e.status&&r.a.createElement(r.a.Fragment,null,r.a.createElement("div",{className:"flex-container"},c.map((function(e){return r.a.createElement(d,{pid:e.pid,count:e.count,avg:e.avg,key:e.pid})}))),r.a.createElement("div",{style:{display:"flex",marginLeft:"40%"}},u.offset<P/10&&r.a.createElement("p",{className:"next",onClick:function(){m(v({},u,{offset:u.offset+1}))}},"Next"),u.offset>1&&r.a.createElement("p",{className:"prev",onClick:function(){m(v({},u,{offset:u.offset-1}))}},"Prev"))),e.status&&r.a.createElement(y,null),O&&r.a.createElement("div",null,r.a.createElement("h1",null,"Some Error Occured!!!")))};Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));function w(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function P(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?w(Object(a),!0).forEach((function(t){Object(i.a)(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):w(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function R(e,t){switch(t.type){case"SET_PRODUCT":return P({},e,{status:!0,data:{pid:t.payload.pid,avg:t.payload.avg,count:t.payload.count}});case"UNSET_PRODUCT":return P({},e,{status:!1,data:[]});default:return P({},e)}}p.Consumer;var N=function(e){var t=Object(n.useContext)(p),a=Object(n.useReducer)(R,t),c=Object(l.a)(a,2),o=c[0],i=c[1];return r.a.createElement(p.Provider,{value:{state:o,dispatch:i}},e.children)};o.a.render(r.a.createElement((function(){return r.a.createElement(N,null,r.a.createElement(E,null))}),null),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()}))}},[[15,1,2]]]);
//# sourceMappingURL=main.308de93b.chunk.js.map