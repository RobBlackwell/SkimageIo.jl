# SkimageIo.jl

A trivial package that wraps Python scikit-image io facilities
(skimage.io) providing `imread` and `imsave`.

This is a workaround that allows saving and loading of Float format
TIFF files in Julia. It works with, and preserves Float32 and Float64
array types.

## Example

```
using SkimageIo
a = rand(100,100);
b = Float32.(a);

imsave("a.tiff",a);
imsave("b.tiff",b);

a == imread("a.tiff")

b == imread("b.tiff")

a != imread("b.tiff")
```
