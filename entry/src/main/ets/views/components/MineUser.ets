@Component
export default struct MineUser {
  @State message: string = '用户描述';

  build() {
    Column() {
      Text(this.message);
    }
  }
}