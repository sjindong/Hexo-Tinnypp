---
title: MarkDown学习笔记
time: 2016-03-29
tag: 
---

写完发现些好东西，先安利下，给那些没心思看Blog的
[Markdown快速上手](https://en.wikipedia.org/wiki/Markdown#Example "Wiki Markdown#Example")


<table>
  <tr>
    <td>
      **Text using Markdown syntax**
    </td>
    
    <td>
      **Corresponding HTML produced <br/>by a Markdown processor**
    </td>
    
    <td>
      **Text viewed in a browser**
    </td>
  </tr>
  <tr>
    <td>

        Heading    
        =======    
            <br/>
        Sub-heading    
        -----------    
         <br/>
        ### Another deeper heading    
         <br/>
        Paragraphs are separated    
        by a blank line.    
        <br/>
        Two spaces at the end of a line leave a &nbsp; &nbsp;    
        line break.    
        <br/>
        Text attributes \_italic\_,     
        \*\*bold\*\*, \`monospace\`.    
        <br/>
        Bullet list:    
        <br/>
        &emsp;  \* apples    
        &emsp;  \* oranges    
        &emsp;  \* pears    
        <br/><br/>
        Numbered list:    
        <br/>
        &emsp;  1. apples    
        &emsp;  2. oranges    
        &emsp;  3. pears    
        <br/>    
        A [link]\(http://example.com).    

      </td>
    
    <td>
    &lt;h1>Heading&lt;/h1>   
        <br/>
      &lt;h2>Sub-heading&lt;/h2>   
      <br/>  
      &lt;h3>Another deeper heading&lt;/h3>   
      <br/> 
      &lt;p>Paragraphs are separated
      by a blank line.&lt;/p>   
      <br/>
      &lt;p>Two spaces at the end of a line leave a&lt;br />      
      line break.&lt;/p>   
      <br/>
      &lt;p>Text attributes &lt;em>italic&lt;/em>,    
      &lt;strong>bold&lt;/strong>, &lt;code>monospace&lt;/code>.&lt;/p>   
      <br/>
      &lt;p>Bullet list:&lt;/p>   
      <br/>
      &lt;ul>   
      &lt;li>apples&lt;/li>   
      &lt;li>oranges&lt;/li>   
      &lt;li>pears&lt;/li>      
      &lt;/ul>   
      <br/>
      &lt;p>Numbered list:&lt;/p>   
      <br/>
      &lt;ol>   
      &lt;li>apples&lt;/li>   
      &lt;li>oranges&lt;/li>   
      &lt;li>pears&lt;/li>   
      &lt;/ol>   
      <br/>
      &lt;p>A &lt;a href="http://example.com">link&lt;/a>.&lt;/p>   
    </td>
    
    <td>
    <h1>Heading</h1>

<h2>Sub-heading</h2>

<h3>Another deeper heading</h3>

<p>Paragraphs are separated
by a blank line.</p>

<p>Two spaces at the end of a line leave a<br />
line break.</p>

<p>Text attributes <em>italic</em>, 
<strong>bold</strong>, <code>monospace</code>.</p>

<p>Bullet list:</p>

<ul>
<li>apples</li>
<li>oranges</li>
<li>pears</li>
</ul>

<p>Numbered list:</p>

<ol>
<li>apples</li>
<li>oranges</li>
<li>pears</li>
</ol>

<p>A <a href="http://example.com">link</a>.</p>
    </td>
  </tr>
</table>

----

## 1.兼容HTML

#### 1.1.

&lt;span>、&lt;cite>、&lt;del>  
  1)使用必须在前后加上空行和其他内容隔开  
  2)开始和结束标签不能缩进  
  3）markdown 不会在 HTML 区块标签外加上不必要的 &lt;p>标签  

例子：  （表格）  
<table>
  <tr>
    <td>Table</td>
    <td>  td   </td>
  </tr>
</table>

**注意**：在HTMKL区块标签间，MarkDown格式语法不会被处理  

#### 1.2. 特殊字符转换  

  1）&lt; 和 &amp; 符号 必须使用 &amp;lt; 和&amp;amp;来代替；  
  Tips：如果是直接显示网址，也要进行转换（<code>href</code> 中也要进行转换）  
  2）版权符号 &copy; :可以 &amp;copy;  


## 2.区块元素

#### 2.1. 段落和换行  
> 一个 Markdown 段落是由一个或多个连续的文本行组成，它的前后要有一个以上的空行（空行的定义是显示上看起来像是空的，便会被视为空行。比方说，若某一行只包含空格和制表符，则该行也会被视为空行）。普通段落不该用空格或制表符来缩进。
>
> 「由一个或多个连续的文本行组成」这句话其实暗示了 Markdown 允许段落内的强迫换行（插入换行符），这个特性和其他大部分的 text-to-HTML 格式不一样（包括 Movable Type 的「Convert Line Breaks」选项），其它的格式会把每个换行符都转成 &lt;br /> 标签。  

这边不太理解什么意思， 但知道MarkDown中换行是 通过 “空格+空格+回车” 来实现，相当于<code>&lt;br /></code>的效果。  

**注意：**我使用Atom编辑器，它会保存的时候默认自动删除每行最后面的空格。  
    *具体设置：* 文件 -- 设置 -- 扩展 --  “WhiteSpace”的 设置 -- 把 "remove trailing whitesace" 选项去掉。

<br/>

#### 2.2 标题    

有两种方式显标题  
<table>
  <tr>
    <td>类Setext</td>
    <td>类atx</td>
  </tr>
  <tr>
    <td>
      <code>
        这个最高阶标题 <br/>
        ====== <br/>
        <br/>
        第二阶标题<br/>
        -----<br/>
      </code>
    </td>
    <td>
      <code>#这是1阶标题#<br/>
            ##这是2阶标题#<br/>
            ###这是3阶标题#<br/>
            ####这是4阶标题#<br/>
            #####这是5阶标题#<br/>
            ######这是6阶标题#<br/>
      </code>
    </td>
  </tr>
</table>

#### 2.3.区块引用 Blockquotes

每行文字前使用<code>></code> 即可形成引用效果。  
<pre><code>
&gt;这是引用
&gt;这是引用
&gt;这是引用
&gt;这是引用
</code>
</pre>

引用中也可以使用MarkDown语法。  

引用中可以 继续引用；即增加引用阶层。  


#### 2.4.列表  

###### 2.4.1  
<table>
  <tr>
    <td colspan="3" >无序列表</td>
    <td>有序列表</td>
  </tr>
  <tr>
    <div>
      <td>
           +  red  
           +  green  
           +  blue 
      </td>
      <td>
         \*   red    
         \*   green  
         \*   blue  
      </td>
      <td>
           -  red  
           -  green  
           -  blue 
      </td>
      
    </div>
    <td>
      1.  red  
      2.  green  
      3.  blue  
    </td>
  </tr>
</table>

**注意：**1）这里 <code>**</code>所描述的无序列表，和斜体格式 混淆了，等之后我在看看怎么解决。  

2）有序列表中数字标示不会影响生成的HTML的标记 <code>&lt;li></code>  。  

Ps: 使用\*的时候 需要在\*的前面加上\\

###### 2.4.2    
列表项目用空行分开，转换后项目内容会被&lt;p>标签包起来，如：  

    *   red  
    *   green  
  
转换后是：  
 
    <ul>  
    <li>red</li>  
    <li>green</li>  
    </ul> 
 

而如果列表项之间有了空行：  

    *   red  
  
    *  green  

转换后是：  
 
    <ul>  
    <li><p>red</p></li>  
    <li><p>green</p> </li>  
    </ul> 

###### 2.4.3 
在MarkDown中建立代码区块，可以通过缩进4个空格或者1个制表符就可以，如：  

    这是普通段落    
    
    &ensp;&ensp;&ensp;&ensp;这是代码区块
PS：段落之间需要一个空行

会被转换成：  

    <p>Here is an example of AppleScript:</p>
    <pre><code>tell application "Foo"
    beep
    end tell
    </code></pre>
代码区块会持续到没有缩进的那一行；且Markdown会自动将其中的 &lt;、&amp;、\\ 之类转换为html样式。  

#### 2.5. 分隔线

你可以使用 \*、-、_和空格（三个及以上）  来建立分隔线，行内不允许有其他内容：

    ---
    ***
    ___
    - - -
    * * *
    _ _ _

## 3. 区段元素  
#### 3.1. 链接  
Markdown支持两种链接模式：行内式，参考式    
链接均是使用[]来标记

######    3.1.1. 行内式  
直接在要添加连接的文字后面增加就可以

这是个连接[百度](http://www.baidu.com/ "这个显示文字")（这不是软广）  

    这是个连接[百度](http://www.baidu.com/ "这个显示文字")（这不是软广）  
    
也可以使用相对路径，访问同一主机的资源，如：  

    查看 [主机文件](/路径/文件) 就这样子
    
###### 3.1.2. 参考式   
要添加连接的文字后面加上 [id] 标签，然后可以在文中任意一处对 [id]定义。

这又是一个链接 [我的博客][id].  
[id]: http://sjindong.github.io/ "任意位置"

    这又是一个链接 [我的博客][id].
    [id]: http://sjindong.github.io/ "任意位置"  
    
1）链接内容定义的形式为：  

+  方括号（前面可以选择性地加上至多三个空格来缩进），里面输入链接文字
+  接着一个冒号
+  接着一个以上的空格或制表符
+  接着链接的网址
+  选择性地接着 title 内容，可以用单引号、双引号或是括弧包着(单引号使用可能略有问题)   
   title 属性可以放到链接的下一行显示，方便网址过长时的阅读  
   
2）链接标签 识别：数字、字母（不区分大小写）、空白、标点符号

3）隐式链接（[]）可以省略指定链接标签   
[博客- 隐式链接][]  
[博客- 隐式链接]: http://sjindong.github.io/ "隐式链接"
    [博客- 隐式链接][]  
    [博客- 隐式链接]: http://sjindong.github.io/ "隐式链接"  
  
#### 3.2. 强调  
Markdown使用 \* 和 \_作为标记强调的符号，使用单个\*和\_ 包围的字词会被转成&lt;em> 标签； 使用两个\*和\_ 包围的字词会被转成&lt;strong>标签，如：  
*em*    **em**  
 _em_   __em__  
 **_ sdkfj _**
 
     *em*    **em**  
    _em_   __em__  
    **_ sdkfj _**  
      
1)强调可以直接插在文字中间；   
2）如果  *  和 _ 两边都有空白，会被当成普通符号（仅限一行内只有一个的情况）；      
3）如果要直接插在文字中，和其他混合使用，请使用 反斜杠'\\'  
#### 3.3. 代码  
###### 3.3.1.标记一小段行内代码
可以使用反引号包围起来，如：  
使用`activity`  
  
    使用`activity`

如果要在代码段内使用反引号\`，则可以通过多个反引号控制代码的范围，如：  
使用``` `activity`function```  

    使用``` `activity`function```  
    
###### 3.3.2.代码区段内  
& 和 方括号[]都会被自动地转成 HTML 实体，这使得插入 HTML 原始码变得很容易，如：

    &lt; &amp; []<em>seikg</em>] []
    
&lt; &amp; <em>seikg</em> []   

#### 3.4. 图片
图片的插和 链接的使用 是类似的

###### 3.4.1. 行内式
![图片的替代文字](/img/myLogo.jpg "图片说明")
![图片的替代文字](/com/a.jpg "文字说明")

    ![图片的替代文字](/com/a.jpg "文字说明")
    
详细叙述如下：

+  一个惊叹号 !
+  接着一个方括号，里面放上图片的替代文字
+  接着一个普通括号，里面放上图片的网址，最后还可以用引号包住并加上 选择性的 'title' 文字。  

###### 3.4.2. 参考式

    ![图片的替代文字][id]
    [id]: 链接/地址 "说明文字"  
    
 **PS:** Markdown暂时还不能指定图片宽高，只能通过`<img>`标签自己定义
    
## 4. 其他  
#### 4.1. 自动链接  
1）支持以比较简短的自动链接形式来处理网址和电子邮件信箱，只要是用方括号包起来， Markdown 就会自动把它转成链接;

2）邮址的自动链接也很类似，只是 Markdown 会先做一个编码转换的过程，把文字字符转成 16 进位码的 HTML 实体，这样的格式可以糊弄一些简单的不好的邮址收集机器人

#### 4.2. 反斜杠 \\  
Markdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：

     \   反斜线
     `   反引号
     *   星号
     _   底线
     {}  花括号
     []  方括号
     ()  括弧
     #   井字号
     +   加号
     -   减号
     .   英文句点
     !   惊叹号

##  个人总结
  先上干货，嗯，工具始终是为了便捷，内容才是重点，  
  关于这个文章，网上有很多可参照的，但自己写一遍才映像深刻，  
  我这边是断断续续的在学在写，所以文章源码有些地方还是可以优化改进的，

  **吐槽**
  唉，终于搞定了，说多不多，说少不少，看完了，以后估计用的也就那么常用的几样； 这个其实对大多数人来说，没有太大帮助的，还不如使用其他工具进行文字编辑。  
  
  那我干嘛学这个呢，想了想，一个字，懒；两个字，很懒... 嗯，我懒得碰鼠标，这是 使用这个方法写blog给我带来的最大的帮助，^_^2333.  
  
  
