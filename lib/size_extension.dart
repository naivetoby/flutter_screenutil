part of flutter_screenutil;

extension SizeExtension on num {
  ///[ScreenUtil.setWidth]
  double get w => ScreenUtil().setWidth(this);

  ///[ScreenUtil.setHeight]
  double get h => ScreenUtil().setHeight(this);

  ///[ScreenUtil.radius]
  double get r => ScreenUtil().radius(this);

  ///[ScreenUtil.setSp]
  double get sp => ScreenUtil().setSp(this);
  
  
  //smart size :  it check your value if it is bigger than your value set your value 
  //for example you have setted  16.sm() , if for your screen 16.sp() bigger than 16 it will  set 16 not 16.sp()
  //I think that it is good for save size balance on big sizes of screen
  double get sm => (this.sp.toDouble()>toDouble())?toDouble():sp;

  ///[ScreenUtil.setSp]
  @Deprecated('please use [sp]')
  double get ssp => ScreenUtil().setSp(this);

  ///[ScreenUtil.setSp]
  @Deprecated(
      'please use [sp] , and set textScaleFactor: 1.0 , for example: Text("text", textScaleFactor: 1.0)')
  double get nsp => ScreenUtil().setSp(this);

  ///屏幕宽度的倍数
  ///Multiple of screen width
  double get sw => ScreenUtil().screenWidth * this;

  ///屏幕高度的倍数
  ///Multiple of screen height
  double get sh => ScreenUtil().screenHeight * this;
}
