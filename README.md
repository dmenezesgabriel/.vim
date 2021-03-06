## Setup

## Requirements

- **Vim**:

```sh
sudo apt install vim
```

### Create a Symbolic link

#### What Are Symbolic Links?

Symbolic links are basically advanced shortcuts. With a symbolic link, what you create on a folder/file will appear to be the same as the file or folder it’s pointing at.

```sh
touch ~/.vimrc && \
# Set symlink
ln -s ~/.vim/vimrc ~/.vimrc
```

### (Optional) YouCompleteMe requirements

https://github.com/ycm-core/YouCompleteMe

- **System requirements**:

```sh
sudo dnf install cmake gcc-c++ make python3-devel
```

- **Compilling**:

```sh
cd ~/.vim/bundle/YouCompleteMe && \
./install.py --clang-completer
```

## Installation

- **Clone**:

```sh
git clone https://github.com/dmenezesgabriel/.vim.git ~/.vim
```

- **Install**

```sh
Make install
```

or

| Method   | Command                                                                                                  |
| :------- | :------------------------------------------------------------------------------------------------------- |
| **curl** | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/dmenezesgabriel/.vim/master/scripts/install.sh)"` |

## Usage

### Split layouts

- **Split layout vertically**:

```sh
:sp <filename>
```

- **Split layout horizontally**:

```sh
:vs <filename>
```

#### Split navigation

```sh
# Bellow
Ctrl + J
# Above
Ctrl + K
# Right
Ctrl + L
# Left
Ctrl + H
```

### NerdTree

- **Reload current directory listing**:

```sh
r
```

- **Reload root directory listing**:

```sh
R
```

- **Collapse file browser**:

```sh
CTRL + e
```
