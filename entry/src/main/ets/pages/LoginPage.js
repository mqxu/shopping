"use strict";
struct Login extends   {
    constructor() { }
    build() {
            .height('100%');
    }
}
// 添加公共的样式函数
// @Extend装饰器：扩展组件样式
// @Extend(组件描述名称) function 样式名称
// 输入框公共样式函数
function inputStyle() {
    
  
        .placeholderColor(0x999999)
        .maxLength(6)
        .padding('12vp')
        .margin('10vp');
}
// 原型按钮公共样式函数
function circleBtnStyle() {
    
  
        .width('60vp')
        .height('60vp');
}
//# sourceMappingURL=LoginPage.js.map