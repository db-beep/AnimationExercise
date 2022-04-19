@Entry
@Component
// 页面间转场：底部滑入动效
struct B_page {
  build() {
    Stack() {
      Image($rawfile('image1.jpg'))
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
  }
// 页面转场通过全局transition方法配置转场参数
  pageTransition() {
    // 页面入场组件：SlideEffect.Bottom 设置到入场时表示从下边滑入，出场时表示滑出到下边。
    PageTransitionEnter({duration:600,curve:Curve.Smooth})
      .slide(SlideEffect.Bottom)
    // 页面退场组件：SlideEffect.Top 设置到入场时表示从下边滑入，出场时表示滑出到上边。
    PageTransitionExit({duration:600,curve:Curve.Smooth})
      .slide(SlideEffect.Top)
  }
}