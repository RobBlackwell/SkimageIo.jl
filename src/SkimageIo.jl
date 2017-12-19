module SkimageIo

export imsave, imread

using PyCall

@pyimport skimage.io as skimageio

imsave = skimageio.imsave
imread = skimageio.imread

end # module
