@Component
export default struct FreshPage {
  @State message: string = '生鲜';

  build() {
    Column() {
      Text(this.message)
    }
  }
}