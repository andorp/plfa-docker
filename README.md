# Docker image for PLFA book

This is a standalone docker image for the PLFa book. If you would like to
experiment with the PLFA book and Agda, but you don't have the time to
go into the details of configuring the Stack Haskell ecosystem, compile
Agda, and configure Emacs as it described in the PLFA book website,
this is an out of the box solution for you. Bare in mind, everything in this
docker image is terminal based, which gives an exotic look to Emacs.

## Prerequists

- Install `docker` for the operating system. (docker.com)
- Free up 3GB space for the image.

## Installation

- Pull the docker image: `docker pull andorp/plfa-club`
- OR alternatively build your own image. See `Build your own image` section.

## Build your own image

- Modify the `./build.sh` file to change the name of the docker image from `andorp/plfa-club` to something else.
- Free up additional 7GB as during the installation this extra amount will be used.

## Usage

This docker image can be used without the PLFA repository, but I designed its usecase around having the PLFA
repository checked out. The minimum one needs is a directory where one collects the solutions for the exercises,
say a working directory. This working directory will be attached under the `/plfa/book` within the docker session.

- Create a folder where you check out the PLFA repository OR your solution directory.
- Copy the `./run.sh` file to your `plfa` working directory. (If you built your own image use image name you have had given)
- Now you should have an active docker session. All the changes you make under the `/plfa/book` directory will be persisted on your host machine.
- Open one of the chapters you work on: `emacs src/plfa/partX/chaterY.lagda.md`
- Emacs agda-mode, agda commands should work

