import router from '@ohos.router'

@Entry
@Component
struct Main {
  @State message: string = '首页'

  build() {
    Row() {
      Column() {
        Button('返回登录页', { type: ButtonType.Capsule })
          .width('90%')
          .margin('20vp')
          .onClick(() => {
            // 路由跳转
            router.pushUrl({
              url: 'pages/LoginPage'
            }).catch((err: Error) => {
              // 错误提示
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}