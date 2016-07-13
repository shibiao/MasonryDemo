# MasonryDemo
![1](https://github.com/shibiao/MasonryDemo/blob/master/1.gif)
###一行代码搞定TableView的cell动态高度
####前提是要通过自动布局,也就是AutoLayout,用frame布局是不行的,作为过时的手动布局方式,建议大家以后别用frame,使用AutoLayout特别方便
####本Demo中使用到的一行代码是self.myTableView.estimatedRowHeight=100;就完成了对cell动态高度的计算,demo中通过masonry对Label进行约束,可以自动显示label的内容及对应高度,而且很流畅.
####AutoLayout布局中,对于cell中控件较多,结合UIStackView可以非常快速的实现很多复杂功能,让自动布局变的从没这么简单过

##对Cell中各个空间的约束
<pre><code>
self.titleLabel=[[UILabel alloc]init];
    self.titleLabel.numberOfLines=0;
    [self.contentView addSubview:self.titleLabel];
    
    self.contentImageView=[[UIImageView alloc]init];
    [self.contentView addSubview:self.contentImageView];
    UIEdgeInsets padding=UIEdgeInsetsMake(10, 10, 10, 10);
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).with.offset(padding.top);
        make.left.equalTo(self.contentView).with.offset(padding.left);
        make.right.equalTo(self.contentView).with.offset(-padding.right);
        make.bottom.equalTo(self.contentImageView.mas_top).priorityMedium();
    }];
    [self.contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).with.offset(padding.top);
        make.left.equalTo(self.contentView).with.offset(padding.left);
        make.right.equalTo(self.contentView).with.offset(-padding.right);
        make.bottom.equalTo(self.contentView).with.offset(-padding.bottom);
        make.height.equalTo(@200);
    }];
</code></pre>
