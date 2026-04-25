# cmd-ls-wrapper

一个极轻量的 Windows CMD `ls` 包装脚本，用 `dir` 模拟常见的 `ls` 用法。

> PowerShell 默认已经自带 `ls` 别名，等价于 `Get-ChildItem`，所以本仓库只保留 CMD 版本。

## 功能

- `ls`：以宽格式查看当前目录
- `ls 路径`：查看指定路径
- `ls -l`：查看详细列表
- `ls -a`：显示隐藏/系统文件
- `ls -la` / `ls -al`：显示隐藏/系统文件的详细列表
- `ls --help`：查看帮助

> 注意：这只是一个轻量 CMD 包装器，底层调用 Windows 自带的 `dir`。

## 文件

```text
cmd-ls-wrapper/
├── ls.cmd
├── README.md
├── LICENSE
└── .gitignore
```

## 安装

### 方法一：复制到用户 bin 目录

```cmd
mkdir %USERPROFILE%\bin
copy ls.cmd %USERPROFILE%\bin\ls.cmd
```

然后把下面路径加入用户 `PATH`：

```text
%USERPROFILE%\bin
```

重新打开 CMD 后即可使用：

```cmd
ls
ls -la
```

### 方法二：直接在当前目录使用

```cmd
ls.cmd
ls.cmd -la
```

## 用法示例

查看当前目录：

```cmd
ls
```

查看指定目录：

```cmd
ls D:\WorkSpace
```

查看详细信息：

```cmd
ls -l
```

查看隐藏文件：

```cmd
ls -a
```

查看隐藏文件和详细信息：

```cmd
ls -la
```

查看帮助：

```cmd
ls --help
```

## 卸载

删除脚本即可：

```cmd
del %USERPROFILE%\bin\ls.cmd
```

如果不再需要 `%USERPROFILE%\bin`，也可以从用户 `PATH` 中移除。
