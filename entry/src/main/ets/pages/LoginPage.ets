// 导入页面路由模块
import router from '@ohos.router';

@Entry
@Component
struct Login {
  @State message: string = '欢迎登录';
  @State user: string = ''; // 用户名
  @State password: string = ''; // 密码
  private otherData: Array<string> = [
    '微信', 'QQ', '手机'
  ]

  build() {
    Row() {
      Column() {
        // logo
        Image($r("app.media.icon"))
          .width('80vp') // 默认单位就是vp，可以简写为80
          .width(80)
          .margin({ bottom: '20vp' })

        // 欢迎文字
        Text(this.message)
          .fontSize('30fp')
          .fontWeight(FontWeight.Bold)

        // 用户名和密码输入框
        TextInput({ placeholder: '请输入用户名' })
          .inputStyle() // 公共样式函数
          .onChange(data => { // 输入框的值发生变化时，触发回调，data代表输入的内容
            this.user = data;
            console.info('user:' + data)
          })

        TextInput({ placeholder: '请输入密码' })
          .type(InputType.Password) // 输入框类型
          .inputStyle() // 公共样式函数
          .onChange(data => { // 输入框的值发生变化时，触发回调，data代表输入的内容
            this.password = data;
            console.info('password:' + data)
          })

        // 文字提示
        Row() {
          Text('短信验证码登录')
            .fontSize('18fp')
            .fontColor(Color.Blue)
          Text('忘记密码')
            .fontSize('18fp')
            .fontColor(Color.Blue)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

        // 登录按钮
        Button('登录', { type: ButtonType.Capsule })
          .width('90%')
          .margin('20vp')
          .onClick(() => {
            // 路由跳转
            router.pushUrl({
              url: 'pages/MainPage'
            }).catch((err: Error) => {
              // 错误提示
            })
          })

        // 其他
        Row() {
          Text('其他登录方式')
            .fontSize('18fp')
            .fontColor(Color.Blue)
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)

        // 三个按钮
        Row() {
          ForEach(this.otherData, (item: string) => {
            Button(item, { type: ButtonType.Circle })
              .circleBtnStyle()
          }, (item: string) => JSON.stringify(item))
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
        .margin('20vp')
      }
      .width('100%')
    }
    .height('100%')
  }
}

// 添加公共的样式函数
// @Extend装饰器：扩展组件样式
// @Extend(组件描述名称) function 样式名称
// 输入框公共样式函数
@Extend(TextInput) function inputStyle() {
  .placeholderColor(0x999999)
  .maxLength(6)
  .padding('12vp')
  .margin('10vp')
}

// 原型按钮公共样式函数
@Extend(Button) function circleBtnStyle() {
  .width('60vp')
  .height('60vp')
}
