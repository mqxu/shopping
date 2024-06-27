@Component
export default struct TechnologyPage {
  @State message: string = '科技';

  build() {
    Column() {
      Text(this.message)
    }
  }
}