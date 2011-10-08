# Bercow

Convert an RSS feed to a Podcast suitable for subscribing to in iTunes.

## Installing

You need to setup [King](https://github.com/craigw/king) and the dependencies
for that.

## Usage

I make a few assumptions for this example:

  * That King is running at `http://10.0.1.200:4567/`.
  * That your mp3 files will be hosted under `http://example.com/media/`.
  * That your RSS feed is available at `http://blog.example.com/rss.xml`.

Run Bercow like this:

    bercow \
      --king http://10.0.1.200:4567/ \
      --host http://example.com/media/ \
      --rss http://blog.example.com/rss.xml \
      --cache /var/www/example.com/htdocs/media

Obviously you'll need to put your own locations in for these options.


## Authors

Craig R Webster <http://barkingiguana.com/>
