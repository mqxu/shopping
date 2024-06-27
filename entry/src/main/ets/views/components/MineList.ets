@Component
export default struct MineList {
  @State message: string = '用户列表';

  build() {
    Column() {
      Text(this.message);
    }
  }
}