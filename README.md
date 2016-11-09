# Docker image for developing TOPPERS/EV3RT

## Using with Docker

You can build EV3RT with less than 300 key strokes.

```
mkdir projects
cd projects
docker run --rm -it -v ${PWD}:/projects pizzafactory/che-stack-ev3rt /bin/bash
git clone https://github.com/ev3rt-git/ev3rt-hrp2
cd ev3rt-hrp2
git submodule init
git submodule update
cd cfg
make
cd ../base-workspace
make app=loader
cd ../sdk/workspace
make app=helloev3
```

And `Ctrl+D` for exiting your Docker container.

You'll find your build artifacts at `ev3rt-hrp2/base-workspace/uImage` and `ev3-rt-hrp2/sdk/workspace/app` (ELF image of `helloev3`)

299 key strokes. That's all.

## Using with Eclipse/Che

This image can use as the stack of Eclipse/Che.
(to be written)
