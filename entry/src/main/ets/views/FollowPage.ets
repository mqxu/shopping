@Component
export default struct FollowPage {
  @State message: string = '关注';

  build() {
    Column() {
      Text(this.message)
    }
  }
}