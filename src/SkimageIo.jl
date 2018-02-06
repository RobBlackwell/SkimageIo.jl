module SkimageIo

export imsave, imread

using ImageMagick # Force the Julia version of libMagickWand
using PyCall

@pyimport skimage.io as skimageio

imsave = skimageio.imsave
imread = skimageio.imread

end # module
