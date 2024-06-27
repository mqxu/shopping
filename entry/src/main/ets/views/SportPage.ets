@Component
export default struct SportPage {
  @State message: string = '运动';

  build() {
    Column() {
      Text(this.message)
    }
  }
}