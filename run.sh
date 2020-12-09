#/bin/sh

docker run --mount src="$(pwd)",target=/plfa/book/,type=bind -it andorp/plfa-club /bin/bash

