# cmd-ls-wrapper

[中文](#中文) | [English](#english)

A tiny, dependency-free `ls` command wrapper for **Windows CMD**.

一个极轻量、零依赖的 **Windows CMD** `ls` 包装脚本。

---

## 中文

`cmd-ls-wrapper` 用 Windows 自带的 `dir` 模拟常见的 `ls` 用法，让普通 CMD 也可以输入 `ls` 查看文件。

适合：

- 刚开始学习 Windows CMD 的用户
- 习惯 Linux/macOS `ls` 命令的用户
- 想在 Windows Terminal / CMD 中快速查看文件的人

> PowerShell 默认已经自带 `ls` 别名，等价于 `Get-ChildItem`，所以本仓库只保留 CMD 版本。

### 功能

- `ls`：以宽格式查看当前目录
- `ls 路径`：查看指定路径
- `ls -l`：查看详细列表
- `ls -a`：显示隐藏/系统文件
- `ls -la` / `ls -al`：显示隐藏/系统文件的详细列表
- `ls --help`：查看帮助

> 注意：这不是 GNU coreutils 的 `ls`，只是一个轻量 CMD 包装器，底层调用 Windows 自带的 `dir`。

### 文件结构

```text
cmd-ls-wrapper/
├── ls.cmd
├── README.md
├── LICENSE
└── .gitignore
```

### 安装

#### 方法一：复制到用户 bin 目录

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

#### 方法二：直接在当前目录使用

```cmd
ls.cmd
ls.cmd -la
```

### 用法示例

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

### 卸载

删除脚本即可：

```cmd
del %USERPROFILE%\bin\ls.cmd
```

如果不再需要 `%USERPROFILE%\bin`，也可以从用户 `PATH` 中移除。

---

## English

`cmd-ls-wrapper` is a tiny Windows CMD script that maps common `ls` habits to the built-in Windows `dir` command.

It is useful for:

- beginners learning Windows CMD
- Linux/macOS users who are used to typing `ls`
- anyone who wants a quick file-listing command in Windows Terminal or CMD

> PowerShell already includes `ls` as an alias for `Get-ChildItem`, so this repository intentionally focuses on plain CMD only.

### Features

- `ls`: list the current directory in wide format
- `ls PATH`: list a specific path
- `ls -l`: show a detailed listing
- `ls -a`: include hidden/system entries
- `ls -la` / `ls -al`: include hidden/system entries with details
- `ls --help`: show help

> Note: this is **not** GNU coreutils `ls`. It is a lightweight CMD wrapper around Windows `dir`.

### Project layout

```text
cmd-ls-wrapper/
├── ls.cmd
├── README.md
├── LICENSE
└── .gitignore
```

### Installation

#### Option 1: copy to your user bin directory

```cmd
mkdir %USERPROFILE%\bin
copy ls.cmd %USERPROFILE%\bin\ls.cmd
```

Then add this directory to your user `PATH`:

```text
%USERPROFILE%\bin
```

Open a new CMD window and run:

```cmd
ls
ls -la
```

#### Option 2: run it directly from this folder

```cmd
ls.cmd
ls.cmd -la
```

### Usage examples

List the current directory:

```cmd
ls
```

List a specific directory:

```cmd
ls D:\WorkSpace
```

Show details:

```cmd
ls -l
```

Show hidden files:

```cmd
ls -a
```

Show hidden files with details:

```cmd
ls -la
```

Show help:

```cmd
ls --help
```

### Uninstall

Delete the script:

```cmd
del %USERPROFILE%\bin\ls.cmd
```

If you no longer need `%USERPROFILE%\bin`, remove it from your user `PATH` as well.

## License

MIT License. See [LICENSE](LICENSE).
