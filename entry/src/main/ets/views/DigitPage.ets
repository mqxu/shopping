@Component
export default struct DigitPage {
  @State message: string = '数码';

  build() {
    Column() {
      Text(this.message)
    }
  }
}