import { GoodsType } from '../mode/types';

@Component
export default struct FollowPage {
  @State message: string = '关注';
  private listData: Array<GoodsType> = [
    {
      id: 1,
      img: $r('app.media.banner_1'),
      title: '畅乐冰晶绿低脂新品',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
    {
      id: 2,
      img: $r('app.media.banner_2'),
      title: '奶茶自然清新亲近自然',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
    {
      id: 3,
      img: $r('app.media.banner_1'),
      title: '畅乐冰晶绿低脂新品',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
    {
      id: 4,
      img: $r('app.media.banner_2'),
      title: '奶茶自然清新亲近自然',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
    {
      id: 5,
      img: $r('app.media.banner_1'),
      title: '畅乐冰晶绿低脂新品',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
    {
      id: 6,
      img: $r('app.media.banner_2'),
      title: '奶茶自然清新亲近自然',
      desc: '重磅推荐，MD新品试用中！',
      comment: 6662,
      rate: 95,
      price: 199
    },
  ]

  build() {
    List() {
      ForEach(this.listData, (item: GoodsType) => {
        ListItem() {
          Row() {
            Row({ space: 10 }) {
              Image(item.img)
                .width('140vp')
                .height('100vp')
                .borderRadius(8)
              Column() {
                Text(item.title)
                  .fontSize('18fp')
                  .fontWeight(600)
                  .margin({ bottom: '15vp' })
                Text(item.desc)
                  .fontSize('14fp')
                  .fontColor('#888888')
                  .margin({ bottom: '15vp' })
                Row({ space: 10 }) {
                  Text(item.comment + '人评价')
                    .fontSize('13fp')
                  Text(item.rate + '%好评')
                    .fontSize('13fp')
                  Text('￥' + item.price)
                    .fontSize('18fp')
                    .fontWeight(600)
                    .fontColor(Color.Red)
                }
              }.alignSelf(ItemAlign.Start)
              .alignItems(HorizontalAlign.Start)
            }
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding('10vp')
        }
        .height('130vp')
      })
    }
    .width('100%')
    .backgroundColor(Color.White)
    .divider({
      color: '#eeeeee',
      strokeWidth: '1vp',
      startMargin: '12vp', // 分割线开始位置
      endMargin: '12vp' // 分割线结束位置
    })
  }
}