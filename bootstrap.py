#!/bin/python3

import os
import pathlib
import shutil

def removeDirTree(dirpath):
    # tries to remove tree; if failed show exception
    try:
        shutil.rmtree(dirpath)
    except OSError as e:
        print("Error:%s - %s." % (e.filename, e.strerror))

def removeFile(filepath):
    # tries to remove file; if failed show exception
    try:
        os.remove(filepath)
    except OSError as e:
        print("Error:%s - %s." % (e.filename, e.strerror))

def removeLink(linkpath):
    # tries to remove file; if failed show exception
    try:
        os.unlink(linkpath)
    except OSError as e:
        print("Error:%s - %s." % (e.filename, e.strerror))


def main():
    # os path variables
    home = os.environ['HOME']
    config = home + "/.config"
    repo_dir = pathlib.Path(__file__).parent.resolve().as_posix()

    # dict to map src files (repo) to dest files (links)
    destinations = {
            repo_dir + "/nvim"      :   config + "/nvim",
            repo_dir + "/alacritty" :   config + "/alacritty",
            repo_dir + "/tmux.conf" :   home + "/.tmux.conf",
            }

    print("This may overwrite existing files in your home directory. Are you sure? (y/n)")
    ans = input()

    if(ans.lower() == "y"):
        for src in destinations:
            dest = destinations[src]

            # Check if the dest is a link, a file or a dir and delete it
            if(os.path.islink(dest)):
                removeLink(dest)
            elif(os.path.isfile(dest)):
                removeFile(dest)
            elif(os.path.isdir(dest)):
                removeDirTree(dest)

            # creates the symbolic link
            os.symlink(src, dest)
            print(src + " -> " + dest)
    print("Links created successfully!")

if __name__ == "__main__":
    main()
