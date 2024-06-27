import router from '@ohos.router';
import MineUser from './components/MineUser'
import MineList from './components/MineList'

@Component
export default struct Mine {
  @State message: string = '我的'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize('16vp')
          .alignSelf(ItemAlign.Start)
        // 用户描述组件
        MineUser()
        // 用户列表组件
        MineList()
        // 退出登录
        Button('退出登录')
          .width('90%')
          .height('40vp')
          .fontSize('16fp')
          .backgroundColor('#e5e8ea')
          .fontColor(Color.Red)
          .margin({
            top: '30vp'
          })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/LoginPage'
            }).catch((error: Error) => {
              // 异常处理
            })
          })
      }
      .width('100%')
      .height('100%')
      .margin('10vp')
      .padding('10vp')
    }
    .backgroundColor('#f1f3f5')
  }
}