docker-ffmpeg
=============

Docker based FFMPEG - keeping the dependancy soup in a neat Docker container.

Install ffmpeg from ppa:jon-severinsson/ffmpeg on ubuntu 12.04 container.


Build
======

Adjust the sources.list to your nearst Ubuntu Repo

'''
docker build .
'''

Save the generated machine ID for invocation (<gen_id>)

Invoke
======

We needed to change the audio bitsteam to a lower value for some media:

Assumption is that you are in the directory containing the media:

'''
docker run -v `pwd`:`pwd` -w `pwd` -i -t <gen_id> ffmpeg -threads 0 -i input.webm -vcodec copy -acodec libvorbis -ab 64K -ar 22050 -ac 2 -async 2 fixed_version.webm
'''
