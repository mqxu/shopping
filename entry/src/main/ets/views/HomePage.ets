@Component
export default struct Home {
  @State message: string = '首页'

  build() {
    Row() {
      Row() {
        Text(this.message)
      }
    }
    .height('100%')
  }
}