import { ItemType } from '../../mode/types'

@Component
export default struct ListExample {
  @State message: string = '列表组件'
  private listData: Array<ItemType> = [
    {
      title: '排行榜',
      img: $r('app.media.ic_top')
    },
    {
      title: '新品首发',
      img: $r('app.media.ic_new')
    },
    {
      title: '大牌闪购',
      img: $r('app.media.ic_brand')
    },
    {
      title: '发现好物',
      img: $r('app.media.ic_top')
    },
    {
      title: '大牌闪购',
      img: $r('app.media.ic_found')
    },
    {
      title: '排行榜',
      img: $r('app.media.ic_top')
    },
    {
      title: '新品首发',
      img: $r('app.media.ic_new')
    },
  ]

  build() {
    Column() {
      Text('列表')
        .fontSize('16fp')
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin('10vp')
      // 列表
      List({ space: 12 }) {
        ForEach(this.listData, (item: ItemType) => {
          ListItem() {
            Image(item.img)
              .objectFit(ImageFit.Cover) // 图片填充模式
              .aspectRatio(1.3) //横纵比
          }
          .margin({ left: '5vp', right: '5vp' })
        })
      }
      .width('95%')
      .lanes(2) // 排列个数
    }
  }
}