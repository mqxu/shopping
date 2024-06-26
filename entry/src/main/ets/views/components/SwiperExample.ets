@Component
export default struct SwiperExample {
  @State message: string = '轮播组件'

  build() {
    Row() {
      Text(this.message)
    }
    .height('100%')
  }
}