(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/register/register"],{"0070":function(e,t,n){},"3df9":function(e,t,n){"use strict";var r;n.d(t,"b",(function(){return u})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return r}));var u=function(){var e=this,t=e.$createElement;e._self._c},a=[]},"4ac5":function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=u(n("a34a"));function u(e){return e&&e.__esModule?e:{default:e}}function a(e,t,n,r,u,a,o){try{var s=e[a](o),i=s.value}catch(c){return void n(c)}s.done?t(i):Promise.resolve(i).then(r,u)}function o(e){return function(){var t=this,n=arguments;return new Promise((function(r,u){var o=e.apply(t,n);function s(e){a(o,r,u,s,i,"next",e)}function i(e){a(o,r,u,s,i,"throw",e)}s(void 0)}))}}var s={data:function(){return{yonghusexTypesOptions:[],yonghusexTypesIndex:0,ruleForm:{},tableName:""}},onLoad:function(){var t=this;return o(r.default.mark((function n(){var u,a,o;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if([],u=e.getStorageSync("loginTable"),t.tableName=u,"yonghu"!=t.tableName){n.next=9;break}return a={page:1,limit:100,dicCode:"sex_types"},n.next=7,t.$api.page("dictionary",a);case 7:o=n.sent,t.yonghusexTypesOptions=o.data.list;case 9:t.styleChange();case 10:case"end":return n.stop()}}),n)})))()},methods:{yonghusexTypesChange:function(e){this.yonghusexTypesIndex=e.target.value,this.ruleForm.sexValue=this.yonghusexTypesOptions[this.yonghusexTypesIndex].indexName,this.ruleForm.sexTypes=this.yonghusexTypesOptions[this.yonghusexTypesIndex].codeIndex},styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},register:function(){var e=this;return o(r.default.mark((function t(){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.ruleForm.username||"yonghu"!=e.tableName){t.next=3;break}return e.$utils.msg("姓名不能为空"),t.abrupt("return");case 3:if(e.ruleForm.password||"yonghu"!=e.tableName){t.next=6;break}return e.$utils.msg("密码不能为空"),t.abrupt("return");case 6:if(e.ruleForm.yonghuName||"yonghu"!=e.tableName){t.next=9;break}return e.$utils.msg("姓名不能为空"),t.abrupt("return");case 9:if("yonghu"!=e.tableName||!e.ruleForm.yonghuPhone||e.$validate.isMobile(e.ruleForm.yonghuPhone)){t.next=12;break}return e.$utils.msg("手机应输入手机格式"),t.abrupt("return");case 12:if("yonghu"!=e.tableName||!e.ruleForm.yonghuIdNumber||e.$validate.checkIdCard(e.ruleForm.yonghuIdNumber)){t.next=15;break}return e.$utils.msg("身份证应输入正确格式"),t.abrupt("return");case 15:return t.next=17,e.$api.register("yonghu",e.ruleForm);case 17:e.$utils.msgBack("注册成功");case 19:case"end":return t.stop()}}),t)})))()}}};t.default=s}).call(this,n("543d")["default"])},"6b3a":function(e,t,n){"use strict";var r=n("0070"),u=n.n(r);u.a},"6dbc":function(e,t,n){"use strict";n.r(t);var r=n("4ac5"),u=n.n(r);for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);t["default"]=u.a},"71b3":function(e,t,n){"use strict";(function(e){n("99e5");r(n("66fd"));var t=r(n("93ec"));function r(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=n,e(t.default)}).call(this,n("543d")["createPage"])},"93ec":function(e,t,n){"use strict";n.r(t);var r=n("3df9"),u=n("6dbc");for(var a in u)"default"!==a&&function(e){n.d(t,e,(function(){return u[e]}))}(a);n("6b3a");var o,s=n("f0c5"),i=Object(s["a"])(u["default"],r["b"],r["c"],!1,null,"6ebbd8c0",null,!1,r["a"],o);t["default"]=i.exports}},[["71b3","common/runtime","common/vendor"]]]);