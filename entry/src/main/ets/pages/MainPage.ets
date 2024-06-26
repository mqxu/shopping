import Home from '../views/HomePage'
import Choice from '../views/ChoicePage'
import My from '../views/MyPage'

@Entry
@Component
struct Main {
  @State message: string = '首页'
  private controller: TabsController = new TabsController(); // Tabs组件的控制器，控制页签切换
  private items: Array<{ title: string }> = [
    { title: '首页' },
    { title: '精选' },
    { title: '我的' }
  ]

  build() {
    Row() {
      Column() {
        // barPosition.Start 左侧或顶部， .vertical(true)，true页签位于左侧，false页签位于顶部
        // barPosition.End 左侧或底部， .vertical(true)，true页签位于右侧，false页签位于底部
        Tabs({ barPosition: BarPosition.End }) {
          ForEach(this.items, (item: { title: string }, index: number) => {
            TabContent() {
              //   页签内容
              Column() {
                // 加载不同的组件
                if (index === 0) {
                  Home();
                } else if (index === 1) {
                  Choice();
                } else {
                  My();
                }
              }
            }.tabBar(item.title)
          })
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