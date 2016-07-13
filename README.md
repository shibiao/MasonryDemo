# MasonryDemo

###一行代码搞定TableView的cell动态高度
####前提是要通过自动布局,也就是AutoLayout,用frame布局是不行的,作为过时的手动布局方式,建议大家以后别用frame,使用AutoLayout特别方便
####本Demo中使用到的一行代码是self.myTableView.estimatedRowHeight=100;就完成了对cell动态高度的计算,而且很流畅.
####AutoLayout布局中,对于cell中控件较多,结合UIStackView可以非常快速的实现很多复杂功能,然自动布局变的从没这么简单过
