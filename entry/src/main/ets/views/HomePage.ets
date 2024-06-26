import SwiperExample from './components/SwiperExample'
import NavExample from './components/NavExample'
import ListExample from './components/ListExample'

@Component
export default struct Home {
  @State message: string = '首页'

  build() {
    Scroll() {
      Column() {
        // 轮播图
        SwiperExample()
        // 导航
        NavExample()
        // 列表
        ListExample()
      }.width('100%')
    }
    .scrollBar(BarState.Auto)
  }
}