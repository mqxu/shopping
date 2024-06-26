@Component
export default struct NavExample {
  @State message: string = '导航组件'

  build() {
    Row() {
      Text(this.message)
    }
    .height('100%')
  }
}