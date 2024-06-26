import { ItemType } from '../../mode/types'

@Component
export default struct NavExample {
  @State message: string = '导航组件'
  private NavData: Array<ItemType> = [
    {
      title: '我的最爱',
      img: $r('app.media.ic_love')
    },
    {
      title: '购物车',
      img: $r('app.media.ic_shopping')
    },
    {
      title: '我的最爱',
      img: $r('app.media.ic_love')
    },
    {
      title: '购物车',
      img: $r('app.media.ic_shopping')
    },
    {
      title: '我的最爱',
      img: $r('app.media.ic_love')
    },
    {
      title: '购物车',
      img: $r('app.media.ic_shopping')
    },
    {
      title: '我的最爱',
      img: $r('app.media.ic_love')
    },
    {
      title: '购物车',
      img: $r('app.media.ic_shopping')
    }
  ]

  build() {
    Column() {
      Grid() {
        ForEach(this.NavData, (item: ItemType) => {
          GridItem() {
            Column() {
              Image(item.img)
                .width('25vp')
                .height('25vp')
              Text(item.title)
                .fontSize('14fp')
                .margin({ top: '4vp' })
            }
          }
        })
      }
      .columnsTemplate('1fr 1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr')
      .height('120vp')
      .rowsGap('12vp') //行间距
      .columnsGap('8vp') //列间距
      .backgroundColor(Color.White)
      .width('95%')
      .margin('13vp')
      .padding({
        top: '10vp',
        bottom: '10vp'
      })
    }
  }
}