import Home from '../views/HomePage'
import Choice from '../views/ChoicePage'
import Mine from '../views/MinePage'

@Entry
@Component
struct Main {
  @State message: string = '首页'
  private controller: TabsController = new TabsController(); // Tabs组件的控制器，控制页签切换
  private items: Array<{
    title: string,
    iconSelected: Resource,
    iconNormal: Resource
  }> = [
    { title: '首页', iconSelected: $r('app.media.ic_home_selected'), iconNormal: $r('app.media.ic_home_normal') },
    {
      title: '精选',
      iconSelected: $r('app.media.ic_discover_selected'),
      iconNormal: $r('app.media.ic_discover_normal')
    },
    { title: '我的', iconSelected: $r('app.media.ic_mine_selected'), iconNormal: $r('app.media.ic_mine_normal') },
  ]
  @State currentIndex: number = 0; // 当前索引下标

  // @Builder 装饰器 自定义构建函数
  @Builder TabBuilder(title, iconSelected, iconNormal, index) {
    Column() {
      Image(this.currentIndex === index ? iconSelected : iconNormal)
        .width('25vp')
        .height('25vp')
      Text(title)
        .fontColor(this.currentIndex === index ? '#007dee' : '#182431')
        .fontSize('14fp')
        .fontWeight(500)
    }
  }

  build() {
    Row() {
      Column() {
        // barPosition.Start 左侧或顶部， .vertical(true)，true页签位于左侧，false页签位于顶部
        // barPosition.End 左侧或底部， .vertical(true)，true页签位于右侧，false页签位于底部
        Tabs({ barPosition: BarPosition.End }) {
          ForEach(this.items, (item: {
            title: string,
            iconSelected: Resource,
            iconNormal: Resource
          }, index: number) => {
            TabContent() {
              // 页签内容
              Column() {
                // 加载不同的组件
                if (index === 0) {
                  Home();
                } else if (index === 1) {
                  Choice();
                } else {
                  Mine();
                }
              }
            }.tabBar(this.TabBuilder(item.title, item.iconSelected, item.iconNormal, index))
          })
        }
        .vertical(false)
        .barWidth('100%') // 宽度
        .barHeight('70vp') // 高度
        .animationDuration(300)
        .onChange((index: number) => {
          this.currentIndex = index;
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}