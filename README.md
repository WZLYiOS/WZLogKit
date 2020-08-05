# 我主良缘日志组件Kit

## Requirements:
- **iOS** 9.0+
- Xcode 10.0+
- Swift 5.0+


## Installation Cocoapods
<pre><code class="ruby language-ruby">pod 'WZLogKit', '~> 1.0.0'</code></pre>

## Use

```swift
        WZLogger.setLog(level: WZLogger.Level.off)
        WZLogger.warning("所有打印信息都关闭")
        
        WZLogger.setLog(level: WZLogger.Level.debug)
        WZLogger.debug("debug信息")
        
        WZLogger.setLog(level: WZLogger.Level.info)
        WZLogger.debug("信息")
        
        WZLogger.setLog(level: WZLogger.Level.warning)
        WZLogger.warning("警告信息")
        
        WZLogger.setLog(level: WZLogger.Level.error)
        WZLogger.warning("错误信息")
        
        WZLogger.setLog(level: WZLogger.Level.all)
        WZLogger.debug("所有信息都打印")
```

```swift
打印
"ViewController.swift:20 viewDidLoad() | debug信息"
"ViewController.swift:23 viewDidLoad() | 信息"
"ViewController.swift:26 viewDidLoad() | 警告信息"
"ViewController.swift:29 viewDidLoad() | 错误信息"
"ViewController.swift:32 viewDidLoad() | 所有信息都打印"
```

## License
WZLogKit is released under an MIT license. See [LICENSE](LICENSE) for more information.