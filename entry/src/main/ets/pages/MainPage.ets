@Entry
@Component
struct Main {
  @State message: string = '首页'
  private controller: TabsController = new TabsController(); // Tabs组件的控制器，控制页签切换

  build() {
    Row() {
      Column() {
        // barPosition.Start 左侧或顶部， .vertical(true)，true页签位于左侧，false页签位于顶部
        // barPosition.End 左侧或底部， .vertical(true)，true页签位于右侧，false页签位于底部
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            //   页签内容
            Column()
              .width('100%')
              .height('100%')
              .backgroundColor(Color.Red)
          }.tabBar('首页')

          TabContent() {
            //   页签内容
            Column()
              .width('100%')
              .height('100%')
              .backgroundColor(Color.Pink)
          }.tabBar('精选')

          TabContent() {
            //   页签内容
            Column()
              .width('100%')
              .height('100%')
              .backgroundColor(Color.Green)
          }.tabBar('我的')
        }
        .vertical(false)
        .barWidth('100%') // 宽度
        .barHeight('70vp') // 高度
        .animationDuration(300)
      }
      .width('100%')
    }
    .height('100%')
  }
}