@Component
export default struct Mine {
  @State message: string = '我的'

  build() {
    Row() {
      Row() {
        Text(this.message)
      }
    }
    .height('100%')
  }
}