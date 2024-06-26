@Component
export default struct ListExample {
  @State message: string = '列表组件'

  build() {
    Row() {
      Text(this.message)
    }
    .height('100%')
  }
}