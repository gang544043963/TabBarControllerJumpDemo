# TabBarControllerJumpDemo
TabBarController控制器之间无缝跳转

通常情况下，我们的控制器之间的跳转是这样的：
A.Nav -push-> B      B -pop-> A 
A -present-> B         B -dismiss-> A

相互之间都是有层级关系和顺序的。但是，有时候项目中需要实现这样一种情况：
B.Nav -push-> X      X -pop-> A

[具体讲义](http://blog.csdn.net/gang544043963/article/details/50544289)

<img src="https://github.com/gang544043963/TabBarControllerJumpDemo/blob/master/browser1.gif?raw=true" alt="CXLSlideList Screenshot" width="300" height="550"/>
