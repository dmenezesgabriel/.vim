## Setup

### Create a Symbolic link

#### What Are Symbolic Links?

Symbolic links are basically advanced shortcuts. With a symbolic link, what you create on a folder/file will appear to be the same as the file or folder it’s pointing at.

```sh
touch ~/.vimrc && \
# Set symlink
ln -s ~/.vim/vimrc ~/.vimrc
```

### YouCompleteMe requirements

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
