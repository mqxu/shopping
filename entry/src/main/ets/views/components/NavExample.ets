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
    Row() {
      Text(this.message)
    }
    .height('100%')
  }
}