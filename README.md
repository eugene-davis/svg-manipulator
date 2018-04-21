# SVG Manipulator

Provides scripts for automatically exporting SVG to PNG with [svgexport](https://github.com/shakiba/svgexport) and via [ImageMagick](http://www.imagemagick.org/script/index.php) adding copyright and watermarking for website use.

## Directory Structure

To use the convert-shell script, follow the directory structure laid out here. Optional elements are indicated in (), variable names in [].

- [project directory]
  - [image1]
    - (fonts)
      - ([image1].md)
      - [image1].svg
  - watermark
    - watermark.png
  - favicon
    - favicon.png

## hq-image

The hq-image converter takes in an SVG and exports it to a PNG.

### Copyright

If an `[image].md` file exists it will pull copyright information from it and overlay it in small text in the lower righthand corner. Copyright information in the markdown file must be formatted on its own line as `date: YYYY-MM-DD`. This feature is intended to work with yaml front matter from a static site generator.

`convert-shell.sh image1`

### Scaling

Optionally, this converter can also scale by a numerical factor. Please note if you use the watermarking script, it does not automatically scale the watermark image.

`convert-shell.sh image1 2`

## watermark

Calling the watermark converter will call hq-image and then apply the watermark and resize the PNG to be 40% of its original size. You can optionally include a scaling factor as the final parameter.

`convert-shell.sh watermark image1`

## favicon-convert

Takes a *PNG* input and creates a favicon (ICO) file with multiple resolutions.

`convert-shell.sh favicon-convert favicon`