import FollowPage from './FollowPage'
import SportPage from './SportPage'
import FreshPage from './FreshPage'
import DigitPage from './DigitPage'
import TechnologyPage from './TechnologyPage'

@Entry
@Component
export default struct Choice {
  @State message: string = '精选'
  private controller: TabsController = new TabsController(); // Tabs组件的控制器，控制页签切换
  private items: Array<{ title: string }> = [
    { title: '关注' },
    { title: '运动' },
    { title: '生鲜' },
    { title: '数码' },
    { title: '科技' },
  ]
  @State currentIndex: number = 0; // 当前索引下标

  // @Builder 装饰器 自定义构建函数
  @Builder TabBuilder(title, index) {
    Column() {
      Text(title)
        .fontColor(this.currentIndex === index ? '#007dee' : '#182431')
        .fontSize('16fp')
        .fontWeight(500)
    }
  }

  build() {
    Row() {
      Column() {
        // barPosition.Start 左侧或顶部， .vertical(true)，true页签位于左侧，false页签位于顶部
        // barPosition.End 左侧或底部， .vertical(true)，true页签位于右侧，false页签位于底部
        Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
          ForEach(this.items, (item: { title: string }, index: number) => {
            TabContent() {
              // 页签内容
              Column() {
                // 加载不同的组件
                if (index === 0) {
                  FollowPage();
                } else if (index === 1) {
                  SportPage();
                } else if (index === 2) {
                  FreshPage();
                }
                else if (index === 3) {
                  DigitPage();
                } else {
                  TechnologyPage();
                }
              }
            }.tabBar(new SubTabBarStyle(item.title))
          })
        }
        .vertical(false)
        .barHeight('80vp')
        .onChange((index: number) => {
          this.currentIndex = index;
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}