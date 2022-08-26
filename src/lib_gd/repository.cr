@[Link(ldflags: "-lgd -ljpeg")]
lib LibGD
  ALPHAMAX                  =   127
  ALPHAOPAQUE               =     0
  ALPHATRANSPARENT          =   127
  ARC                       =     0
  BLUEMAX                   =   255
  CHORD                     =     1
  DASHSIZE                  =     4
  EDGED                     =     4
  EFFECTALPHABLEND          =     1
  EFFECTMULTIPLY            =     4
  EFFECTNORMAL              =     2
  EFFECTOVERLAY             =     3
  EFFECTREPLACE             =     0
  FTEX_ADOBE_CUSTOM         =     3
  FTEX_BIG5                 =     2
  FTEX_CHARMAP              =     2
  FTEX_DISABLE_KERNING      =     8
  FTEX_FONTCONFIG           =    64
  FTEX_FONTPATHNAME         =    32
  FTEX_LINESPACE            =     1
  FTEX_RESOLUTION           =     4
  FTEX_RETURNFONTPATHNAME   =   128
  FTEX_SHIFT_JIS            =     1
  FTEX_UNICODE              =     0
  FTEX_XSHOW                =    16
  GREENMAX                  =   255
  MAXCOLORS                 =   256
  NOFILL                    =     2
  REDMAX                    =   255
  WEBPLOSSLESS              =   101
  DisposalNone              = 1_i64
  DisposalRestoreBackground = 2_i64
  DisposalRestorePrevious   = 3_i64
  DisposalUnknown           = 0_i64
  alias CallbackImageColor = (ImagePtr, LibC::Int -> LibC::Int)
  alias ErrorMethod = (LibC::Int, LibC::Char*, VaList -> Void)
  alias FontPtr = Font*
  alias FtStringExtraPtr = FtStringExtra*
  alias HeifChroma = LibC::Char*
  alias ImagePtr = Image*
  alias IoCtxPtr = IoCtx*
  alias PointFPtr = PointF*
  alias PointPtr = Point*
  alias RectPtr = Rect*
  alias ScatterPtr = Scatter*
  alias SinkPtr = Sink*
  alias SourcePtr = Source*
  alias InterpolationMethod = (LibC::Double, LibC::Double -> LibC::Double)
  alias VaList = X__GnucVaList
  alias X_IoCodecvt = Void
  alias X_IoLockT = Void
  alias X_IoMarker = Void
  alias X_IoWideData = Void
  alias X__GnucVaList = LibC::VaList
  alias X__Off64T = LibC::Long
  alias X__OffT = LibC::Long
  enum HeifCodec
    HeifCodecUnknown = 0
    HeifCodecHevc    = 1
    HeifCodecAv1     = 4
  end
  enum InterpolationMethodID
    Default          =  0
    Bell             =  1
    Bessel           =  2
    BilinearFixed    =  3
    Bicubic          =  4
    BicubicFixed     =  5
    Blackman         =  6
    Box              =  7
    Bspline          =  8
    Catmullrom       =  9
    Gaussian         = 10
    GeneralizedCubic = 11
    Hermite          = 12
    Hamming          = 13
    Hanning          = 14
    Mitchell         = 15
    NearestNeighbour = 16
    Power            = 17
    Quadratic        = 18
    Sinc             = 19
    Triangle         = 20
    Weighted4        = 21
    Linear           = 22
    Lanczos3         = 23
    Lanczos8         = 24
    BlackmanBessel   = 25
    BlackmanSinc     = 26
    QuadraticBspline = 27
    CubicSpline      = 28
    Cosine           = 29
    Welsh            = 30
    MethodCount      = 30
  end
  fun affine_apply_to_point_f = gdAffineApplyToPointF(dst : PointFPtr, src : PointFPtr, affine : LibC::Double[6]) : LibC::Int
  fun affine_concat = gdAffineConcat(dst : LibC::Double[6], m1 : LibC::Double[6], m2 : LibC::Double[6]) : LibC::Int
  fun affine_equal = gdAffineEqual(matrix1 : LibC::Double[6], matrix2 : LibC::Double[6]) : LibC::Int
  fun affine_expansion = gdAffineExpansion(src : LibC::Double[6]) : LibC::Double
  fun affine_flip = gdAffineFlip(dst_affine : LibC::Double[6], src_affine : LibC::Double[6], flip_h : LibC::Int, flip_v : LibC::Int) : LibC::Int
  fun affine_identity = gdAffineIdentity(dst : LibC::Double[6]) : LibC::Int
  fun affine_invert = gdAffineInvert(dst : LibC::Double[6], src : LibC::Double[6]) : LibC::Int
  fun affine_rectilinear = gdAffineRectilinear(src : LibC::Double[6]) : LibC::Int
  fun affine_rotate = gdAffineRotate(dst : LibC::Double[6], angle : LibC::Double) : LibC::Int
  fun affine_scale = gdAffineScale(dst : LibC::Double[6], scale_x : LibC::Double, scale_y : LibC::Double) : LibC::Int
  fun affine_shear_horizontal = gdAffineShearHorizontal(dst : LibC::Double[6], angle : LibC::Double) : LibC::Int
  fun affine_shear_vertical = gdAffineShearVertical(dst : LibC::Double[6], angle : LibC::Double) : LibC::Int
  fun affine_translate = gdAffineTranslate(dst : LibC::Double[6], offset_x : LibC::Double, offset_y : LibC::Double) : LibC::Int
  fun alpha_blend = gdAlphaBlend(dest : LibC::Int, src : LibC::Int) : LibC::Int
  fun clear_error_method = gdClearErrorMethod
  fun dp_extract_data = gdDPExtractData(ctx : IoCtxPtr, size : LibC::Int*) : Void*
  fun extra_version = gdExtraVersion : LibC::Char*
  fun font_cache_setup = gdFontCacheSetup : LibC::Int
  fun font_cache_shutdown = gdFontCacheShutdown
  fun free = gdFree(m : Void*)
  fun free_font_cache = gdFreeFontCache
  fun ft_use_font_config = gdFTUseFontConfig(flag : LibC::Int) : LibC::Int
  fun get_buf = gdGetBuf(x0 : Void*, x1 : LibC::Int, x2 : IoCtxPtr) : LibC::Int
  fun get_byte = gdGetByte(result : LibC::Int*, ctx : IoCtxPtr) : LibC::Int
  fun get_c = gdGetC(ctx : IoCtxPtr) : LibC::Int
  fun get_int = gdGetInt(result : LibC::Int*, ctx : IoCtxPtr) : LibC::Int
  fun get_int_lsb = gdGetIntLSB(result : LibC::Int*, ctx : IoCtxPtr) : LibC::Int
  fun get_word = gdGetWord(result : LibC::Int*, ctx : IoCtxPtr) : LibC::Int
  fun get_word_lsb = gdGetWordLSB(result : LibC::Short*, ctx : IoCtxPtr) : LibC::Int
  fun image_aa_blend = gdImageAABlend(im : ImagePtr)
  fun image_alpha_blending = gdImageAlphaBlending(im : ImagePtr, alpha_blending_arg : LibC::Int)
  fun image_arc = gdImageArc(im : ImagePtr, cx : LibC::Int, cy : LibC::Int, w : LibC::Int, h : LibC::Int, s : LibC::Int, e : LibC::Int, color : LibC::Int)
  fun image_avif = gdImageAvif(im : ImagePtr, out_file : File*)
  fun image_avif_ctx = gdImageAvifCtx(im : ImagePtr, outfile : IoCtxPtr, quality : LibC::Int, speed : LibC::Int)
  fun image_avif_ex = gdImageAvifEx(im : ImagePtr, out_file : File*, quality : LibC::Int, speed : LibC::Int)
  fun image_avif_ptr = gdImageAvifPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_avif_ptr_ex = gdImageAvifPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_bmp = gdImageBmp(im : ImagePtr, out_file : File*, compression : LibC::Int)
  fun image_bmp_ctx = gdImageBmpCtx(im : ImagePtr, out : IoCtxPtr, compression : LibC::Int)
  fun image_bmp_ptr = gdImageBmpPtr(im : ImagePtr, size : LibC::Int*, compression : LibC::Int) : LibC::Char*
  fun image_bounds_safe = gdImageBoundsSafe(im : ImagePtr, x : LibC::Int, y : LibC::Int) : LibC::Int
  fun image_brightness = gdImageBrightness(src : ImagePtr, brightness : LibC::Int) : LibC::Int
  fun image_char = gdImageChar(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, c : LibC::Int, color : LibC::Int)
  fun image_char_up = gdImageCharUp(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, c : LibC::Int, color : LibC::Int)
  fun image_clone = gdImageClone(src : ImagePtr) : ImagePtr
  fun image_color = gdImageColor(src : ImagePtr, red : LibC::Int, green : LibC::Int, blue : LibC::Int, alpha : LibC::Int) : LibC::Int
  fun image_color_allocate = gdImageColorAllocate(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun image_color_allocate_alpha = gdImageColorAllocateAlpha(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int, a : LibC::Int) : LibC::Int
  fun image_color_closest = gdImageColorClosest(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun image_color_closest_alpha = gdImageColorClosestAlpha(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int, a : LibC::Int) : LibC::Int
  fun image_color_closest_hwb = gdImageColorClosestHWB(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun image_color_deallocate = gdImageColorDeallocate(im : ImagePtr, color : LibC::Int)
  fun image_color_exact = gdImageColorExact(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun image_color_exact_alpha = gdImageColorExactAlpha(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int, a : LibC::Int) : LibC::Int
  fun image_color_match = gdImageColorMatch(im1 : ImagePtr, im2 : ImagePtr) : LibC::Int
  fun image_color_replace = gdImageColorReplace(im : ImagePtr, src : LibC::Int, dst : LibC::Int) : LibC::Int
  fun image_color_replace_array = gdImageColorReplaceArray(im : ImagePtr, len : LibC::Int, src : LibC::Int*, dst : LibC::Int*) : LibC::Int
  fun image_color_replace_callback = gdImageColorReplaceCallback(im : ImagePtr, callback : CallbackImageColor) : LibC::Int
  fun image_color_replace_threshold = gdImageColorReplaceThreshold(im : ImagePtr, src : LibC::Int, dst : LibC::Int, threshold : LibC::Float) : LibC::Int
  fun image_color_resolve = gdImageColorResolve(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int) : LibC::Int
  fun image_color_resolve_alpha = gdImageColorResolveAlpha(im : ImagePtr, r : LibC::Int, g : LibC::Int, b : LibC::Int, a : LibC::Int) : LibC::Int
  fun image_color_transparent = gdImageColorTransparent(im : ImagePtr, color : LibC::Int)
  fun image_compare = gdImageCompare(im1 : ImagePtr, im2 : ImagePtr) : LibC::Int
  fun image_contrast = gdImageContrast(src : ImagePtr, contrast : LibC::Double) : LibC::Int
  fun image_convolution = gdImageConvolution(src : ImagePtr, filter : LibC::Float[3][3], filter_div : LibC::Float, offset : LibC::Float) : LibC::Int
  fun image_copy = gdImageCopy(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src_x : LibC::Int, src_y : LibC::Int, w : LibC::Int, h : LibC::Int)
  fun image_copy_gaussian_blurred = gdImageCopyGaussianBlurred(src : ImagePtr, radius : LibC::Int, sigma : LibC::Double) : ImagePtr
  fun image_copy_merge = gdImageCopyMerge(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src_x : LibC::Int, src_y : LibC::Int, w : LibC::Int, h : LibC::Int, pct : LibC::Int)
  fun image_copy_merge_gray = gdImageCopyMergeGray(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src_x : LibC::Int, src_y : LibC::Int, w : LibC::Int, h : LibC::Int, pct : LibC::Int)
  fun image_copy_resampled = gdImageCopyResampled(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src_x : LibC::Int, src_y : LibC::Int, dst_w : LibC::Int, dst_h : LibC::Int, src_w : LibC::Int, src_h : LibC::Int)
  fun image_copy_resized = gdImageCopyResized(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src_x : LibC::Int, src_y : LibC::Int, dst_w : LibC::Int, dst_h : LibC::Int, src_w : LibC::Int, src_h : LibC::Int)
  fun image_copy_rotated = gdImageCopyRotated(dst : ImagePtr, src : ImagePtr, dst_x : LibC::Double, dst_y : LibC::Double, src_x : LibC::Int, src_y : LibC::Int, src_width : LibC::Int, src_height : LibC::Int, angle : LibC::Int)
  fun image_create = gdImageCreate(sx : LibC::Int, sy : LibC::Int) : ImagePtr
  fun image_create_from_avif = gdImageCreateFromAvif(in_file : File*) : ImagePtr
  fun image_create_from_avif_ctx = gdImageCreateFromAvifCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_avif_ptr = gdImageCreateFromAvifPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_bmp = gdImageCreateFromBmp(in_file : File*) : ImagePtr
  fun image_create_from_bmp_ctx = gdImageCreateFromBmpCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_bmp_ptr = gdImageCreateFromBmpPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_file = gdImageCreateFromFile(filename : LibC::Char*) : ImagePtr
  fun image_create_from_gd = gdImageCreateFromGd(in : File*) : ImagePtr
  fun image_create_from_gd2 = gdImageCreateFromGd2(in : File*) : ImagePtr
  fun image_create_from_gd2_ctx = gdImageCreateFromGd2Ctx(in : IoCtxPtr) : ImagePtr
  fun image_create_from_gd2_part = gdImageCreateFromGd2Part(in : File*, srcx : LibC::Int, srcy : LibC::Int, w : LibC::Int, h : LibC::Int) : ImagePtr
  fun image_create_from_gd2_part_ctx = gdImageCreateFromGd2PartCtx(in : IoCtxPtr, srcx : LibC::Int, srcy : LibC::Int, w : LibC::Int, h : LibC::Int) : ImagePtr
  fun image_create_from_gd2_part_ptr = gdImageCreateFromGd2PartPtr(size : LibC::Int, data : Void*, srcx : LibC::Int, srcy : LibC::Int, w : LibC::Int, h : LibC::Int) : ImagePtr
  fun image_create_from_gd2_ptr = gdImageCreateFromGd2Ptr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_ctx = gdImageCreateFromGdCtx(in : IoCtxPtr) : ImagePtr
  fun image_create_from_ptr = gdImageCreateFromGdPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_gif = gdImageCreateFromGif(fd : File*) : ImagePtr
  fun image_create_from_gif_ctx = gdImageCreateFromGifCtx(in : IoCtxPtr) : ImagePtr
  fun image_create_from_gif_ptr = gdImageCreateFromGifPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_heif = gdImageCreateFromHeif(in_file : File*) : ImagePtr
  fun image_create_from_heif_ctx = gdImageCreateFromHeifCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_heif_ptr = gdImageCreateFromHeifPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_jpeg = gdImageCreateFromJpeg(infile : File*) : ImagePtr
  fun image_create_from_jpeg_ctx = gdImageCreateFromJpegCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_jpeg_ctx_ex = gdImageCreateFromJpegCtxEx(infile : IoCtxPtr, ignore_warning : LibC::Int) : ImagePtr
  fun image_create_from_jpeg_ex = gdImageCreateFromJpegEx(infile : File*, ignore_warning : LibC::Int) : ImagePtr
  fun image_create_from_jpeg_ptr = gdImageCreateFromJpegPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_jpeg_ptr_ex = gdImageCreateFromJpegPtrEx(size : LibC::Int, data : Void*, ignore_warning : LibC::Int) : ImagePtr
  fun image_create_from_png = gdImageCreateFromPng(fd : File*) : ImagePtr
  fun image_create_from_png_ctx = gdImageCreateFromPngCtx(in : IoCtxPtr) : ImagePtr
  fun image_create_from_png_ptr = gdImageCreateFromPngPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_png_source = gdImageCreateFromPngSource(in : SourcePtr) : ImagePtr
  fun image_create_from_tga = gdImageCreateFromTga(fp : File*) : ImagePtr
  fun image_create_from_tga_ctx = gdImageCreateFromTgaCtx(ctx : IoCtxPtr) : ImagePtr
  fun image_create_from_tga_ptr = gdImageCreateFromTgaPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_tiff = gdImageCreateFromTiff(in_file : File*) : ImagePtr
  fun image_create_from_tiff_ctx = gdImageCreateFromTiffCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_tiff_ptr = gdImageCreateFromTiffPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_wbmp = gdImageCreateFromWBMP(in_file : File*) : ImagePtr
  fun image_create_from_wbmp_ctx = gdImageCreateFromWBMPCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_wbmp_ptr = gdImageCreateFromWBMPPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_webp = gdImageCreateFromWebp(in_file : File*) : ImagePtr
  fun image_create_from_webp_ctx = gdImageCreateFromWebpCtx(infile : IoCtxPtr) : ImagePtr
  fun image_create_from_webp_ptr = gdImageCreateFromWebpPtr(size : LibC::Int, data : Void*) : ImagePtr
  fun image_create_from_xbm = gdImageCreateFromXbm(in : File*) : ImagePtr
  fun image_create_from_xpm = gdImageCreateFromXpm(filename : LibC::Char*) : ImagePtr
  fun image_create_palette_from_true_color = gdImageCreatePaletteFromTrueColor(im : ImagePtr, dither_flag : LibC::Int, colors_wanted : LibC::Int) : ImagePtr
  fun image_create_true_color = gdImageCreateTrueColor(sx : LibC::Int, sy : LibC::Int) : ImagePtr
  fun image_crop = gdImageCrop(src : ImagePtr, crop : Rect*) : ImagePtr
  fun image_crop_auto = gdImageCropAuto(im : ImagePtr, mode : LibC::UInt) : ImagePtr
  fun image_crop_threshold = gdImageCropThreshold(im : ImagePtr, color : LibC::UInt, threshold : LibC::Float) : ImagePtr
  fun image_dashed_line = gdImageDashedLine(im : ImagePtr, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int, color : LibC::Int)
  fun image_destroy = gdImageDestroy(im : ImagePtr)
  fun image_edge_detect_quick = gdImageEdgeDetectQuick(src : ImagePtr) : LibC::Int
  fun image_ellipse = gdImageEllipse(im : ImagePtr, cx : LibC::Int, cy : LibC::Int, w : LibC::Int, h : LibC::Int, color : LibC::Int)
  fun image_emboss = gdImageEmboss(im : ImagePtr) : LibC::Int
  fun image_file = gdImageFile(im : ImagePtr, filename : LibC::Char*) : LibC::Int
  fun image_fill = gdImageFill(im : ImagePtr, x : LibC::Int, y : LibC::Int, color : LibC::Int)
  fun image_fill_to_border = gdImageFillToBorder(im : ImagePtr, x : LibC::Int, y : LibC::Int, border : LibC::Int, color : LibC::Int)
  fun image_filled_arc = gdImageFilledArc(im : ImagePtr, cx : LibC::Int, cy : LibC::Int, w : LibC::Int, h : LibC::Int, s : LibC::Int, e : LibC::Int, color : LibC::Int, style : LibC::Int)
  fun image_filled_ellipse = gdImageFilledEllipse(im : ImagePtr, cx : LibC::Int, cy : LibC::Int, w : LibC::Int, h : LibC::Int, color : LibC::Int)
  fun image_filled_polygon = gdImageFilledPolygon(im : ImagePtr, p : PointPtr, n : LibC::Int, c : LibC::Int)
  fun image_filled_rectangle = gdImageFilledRectangle(im : ImagePtr, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int, color : LibC::Int)
  fun image_flip_both = gdImageFlipBoth(im : ImagePtr)
  fun image_flip_horizontal = gdImageFlipHorizontal(im : ImagePtr)
  fun image_flip_vertical = gdImageFlipVertical(im : ImagePtr)
  fun image_gaussian_blur = gdImageGaussianBlur(im : ImagePtr) : LibC::Int
  fun image_gd = gdImageGd(im : ImagePtr, out : File*)
  fun image_gd2 = gdImageGd2(im : ImagePtr, out : File*, cs : LibC::Int, fmt : LibC::Int)
  fun image_gd2_ptr = gdImageGd2Ptr(im : ImagePtr, cs : LibC::Int, fmt : LibC::Int, size : LibC::Int*) : Void*
  fun image_ptr = gdImagePtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_get_clip = gdImageGetClip(im : ImagePtr, x1_p : LibC::Int*, y1_p : LibC::Int*, x2_p : LibC::Int*, y2_p : LibC::Int*)
  fun image_get_interpolation_method = gdImageGetInterpolationMethod(im : ImagePtr) : InterpolationMethodID
  fun image_get_pixel = gdImageGetPixel(im : ImagePtr, x : LibC::Int, y : LibC::Int) : LibC::Int
  fun image_get_true_color_pixel = gdImageGetTrueColorPixel(im : ImagePtr, x : LibC::Int, y : LibC::Int) : LibC::Int
  fun image_gif = gdImageGif(im : ImagePtr, out : File*)
  fun image_gif_anim_add = gdImageGifAnimAdd(im : ImagePtr, out_file : File*, local_cm : LibC::Int, left_ofs : LibC::Int, top_ofs : LibC::Int, delay : LibC::Int, disposal : LibC::Int, previm : ImagePtr)
  fun image_gif_anim_add_ctx = gdImageGifAnimAddCtx(im : ImagePtr, out : IoCtxPtr, local_cm : LibC::Int, left_ofs : LibC::Int, top_ofs : LibC::Int, delay : LibC::Int, disposal : LibC::Int, previm : ImagePtr)
  fun image_gif_anim_add_ptr = gdImageGifAnimAddPtr(im : ImagePtr, size : LibC::Int*, local_cm : LibC::Int, left_ofs : LibC::Int, top_ofs : LibC::Int, delay : LibC::Int, disposal : LibC::Int, previm : ImagePtr) : Void*
  fun image_gif_anim_begin = gdImageGifAnimBegin(im : ImagePtr, out_file : File*, global_cm : LibC::Int, loops : LibC::Int)
  fun image_gif_anim_begin_ctx = gdImageGifAnimBeginCtx(im : ImagePtr, out : IoCtxPtr, global_cm : LibC::Int, loops : LibC::Int)
  fun image_gif_anim_begin_ptr = gdImageGifAnimBeginPtr(im : ImagePtr, size : LibC::Int*, global_cm : LibC::Int, loops : LibC::Int) : Void*
  fun image_gif_anim_end = gdImageGifAnimEnd(out_file : File*)
  fun image_gif_anim_end_ctx = gdImageGifAnimEndCtx(out : IoCtxPtr)
  fun image_gif_anim_end_ptr = gdImageGifAnimEndPtr(size : LibC::Int*) : Void*
  fun image_gif_ctx = gdImageGifCtx(im : ImagePtr, out : IoCtxPtr)
  fun image_gif_ptr = gdImageGifPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_gray_scale = gdImageGrayScale(src : ImagePtr) : LibC::Int
  fun image_heif = gdImageHeif(im : ImagePtr, out_file : File*)
  fun image_heif_ctx = gdImageHeifCtx(im : ImagePtr, outfile : IoCtxPtr, quality : LibC::Int, codec : HeifCodec, chroma : HeifChroma)
  fun image_heif_ex = gdImageHeifEx(im : ImagePtr, out_file : File*, quality : LibC::Int, codec : HeifCodec, chroma : HeifChroma)
  fun image_heif_ptr = gdImageHeifPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_heif_ptr_ex = gdImageHeifPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_interlace = gdImageInterlace(im : ImagePtr, interlace_arg : LibC::Int)
  fun image_jpeg = gdImageJpeg(im : ImagePtr, out : File*, quality : LibC::Int)
  fun image_jpeg_ctx = gdImageJpegCtx(im : ImagePtr, out : IoCtxPtr, quality : LibC::Int)
  fun image_jpeg_ptr = gdImageJpegPtr(im : ImagePtr, size : LibC::Int*, quality : LibC::Int) : LibC::Char*
  fun image_line = gdImageLine(im : ImagePtr, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int, color : LibC::Int)
  fun image_mean_removal = gdImageMeanRemoval(im : ImagePtr) : LibC::Int
  fun image_negate = gdImageNegate(src : ImagePtr) : LibC::Int
  fun image_neu_quant = gdImageNeuQuant(im : ImagePtr, max_color : LibC::Int, sample_factor : LibC::Int) : ImagePtr
  fun image_open_polygon = gdImageOpenPolygon(im : ImagePtr, p : PointPtr, n : LibC::Int, c : LibC::Int)
  fun image_palette_copy = gdImagePaletteCopy(dst : ImagePtr, src : ImagePtr)
  fun image_palette_to_true_color = gdImagePaletteToTrueColor(src : ImagePtr) : LibC::Int
  fun image_pixelate = gdImagePixelate(im : ImagePtr, block_size : LibC::Int, mode : LibC::UInt) : LibC::Int
  fun image_png = gdImagePng(im : ImagePtr, out : File*)
  fun image_png_ctx = gdImagePngCtx(im : ImagePtr, out : IoCtxPtr)
  fun image_png_ctx_ex = gdImagePngCtxEx(im : ImagePtr, out : IoCtxPtr, level : LibC::Int)
  fun image_png_ex = gdImagePngEx(im : ImagePtr, out : File*, level : LibC::Int)
  fun image_png_ptr = gdImagePngPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_png_ptr_ex = gdImagePngPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_png_to_sink = gdImagePngToSink(im : ImagePtr, out : SinkPtr)
  fun image_polygon = gdImagePolygon(im : ImagePtr, p : PointPtr, n : LibC::Int, c : LibC::Int)
  fun image_rectangle = gdImageRectangle(im : ImagePtr, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int, color : LibC::Int)
  fun image_rotate_interpolated = gdImageRotateInterpolated(src : ImagePtr, angle : LibC::Float, bgcolor : LibC::Int) : ImagePtr
  fun image_save_alpha = gdImageSaveAlpha(im : ImagePtr, save_alpha_arg : LibC::Int)
  fun image_scale = gdImageScale(src : ImagePtr, new_width : LibC::UInt, new_height : LibC::UInt) : ImagePtr
  fun image_scatter = gdImageScatter(im : ImagePtr, sub : LibC::Int, plus : LibC::Int) : LibC::Int
  fun image_scatter_color = gdImageScatterColor(im : ImagePtr, sub : LibC::Int, plus : LibC::Int, colors : LibC::Int*, num_colors : LibC::UInt) : LibC::Int
  fun image_scatter_ex = gdImageScatterEx(im : ImagePtr, s : ScatterPtr) : LibC::Int
  fun image_selective_blur = gdImageSelectiveBlur(src : ImagePtr) : LibC::Int
  fun image_set_anti_aliased = gdImageSetAntiAliased(im : ImagePtr, c : LibC::Int)
  fun image_set_anti_aliased_dont_blend = gdImageSetAntiAliasedDontBlend(im : ImagePtr, c : LibC::Int, dont_blend : LibC::Int)
  fun image_set_brush = gdImageSetBrush(im : ImagePtr, brush : ImagePtr)
  fun image_set_clip = gdImageSetClip(im : ImagePtr, x1 : LibC::Int, y1 : LibC::Int, x2 : LibC::Int, y2 : LibC::Int)
  fun image_set_interpolation_method = gdImageSetInterpolationMethod(im : ImagePtr, id : InterpolationMethodID) : LibC::Int
  fun image_set_pixel = gdImageSetPixel(im : ImagePtr, x : LibC::Int, y : LibC::Int, color : LibC::Int)
  fun image_set_resolution = gdImageSetResolution(im : ImagePtr, res_x : LibC::UInt, res_y : LibC::UInt)
  fun image_set_style = gdImageSetStyle(im : ImagePtr, style : LibC::Int*, no_of_pixels : LibC::Int)
  fun image_set_thickness = gdImageSetThickness(im : ImagePtr, thickness : LibC::Int)
  fun image_set_tile = gdImageSetTile(im : ImagePtr, tile : ImagePtr)
  fun image_sharpen = gdImageSharpen(im : ImagePtr, pct : LibC::Int)
  fun image_smooth = gdImageSmooth(im : ImagePtr, weight : LibC::Float) : LibC::Int
  fun image_square_to_circle = gdImageSquareToCircle(im : ImagePtr, radius : LibC::Int) : ImagePtr
  fun image_string = gdImageString(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, s : UInt8*, color : LibC::Int)
  fun image_string16 = gdImageString16(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, s : LibC::UShort*, color : LibC::Int)
  fun image_string_ft = gdImageStringFT(im : ImagePtr, brect : LibC::Int*, fg : LibC::Int, fontlist : LibC::Char*, ptsize : LibC::Double, angle : LibC::Double, x : LibC::Int, y : LibC::Int, string : LibC::Char*) : LibC::Char*
  fun image_string_ft_circle = gdImageStringFTCircle(im : ImagePtr, cx : LibC::Int, cy : LibC::Int, radius : LibC::Double, text_radius : LibC::Double, fill_portion : LibC::Double, font : LibC::Char*, points : LibC::Double, top : LibC::Char*, bottom : LibC::Char*, fgcolor : LibC::Int) : LibC::Char*
  fun image_string_ft_ex = gdImageStringFTEx(im : ImagePtr, brect : LibC::Int*, fg : LibC::Int, fontlist : LibC::Char*, ptsize : LibC::Double, angle : LibC::Double, x : LibC::Int, y : LibC::Int, string : LibC::Char*, strex : FtStringExtraPtr) : LibC::Char*
  fun image_string_ttf = gdImageStringTTF(im : ImagePtr, brect : LibC::Int*, fg : LibC::Int, fontlist : LibC::Char*, ptsize : LibC::Double, angle : LibC::Double, x : LibC::Int, y : LibC::Int, string : LibC::Char*) : LibC::Char*
  fun image_string_up = gdImageStringUp(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, s : UInt8*, color : LibC::Int)
  fun image_string_up16 = gdImageStringUp16(im : ImagePtr, f : FontPtr, x : LibC::Int, y : LibC::Int, s : LibC::UShort*, color : LibC::Int)
  fun image_tiff = gdImageTiff(im : ImagePtr, out_file : File*)
  fun image_tiff_ctx = gdImageTiffCtx(image : ImagePtr, out : IoCtxPtr)
  fun image_tiff_ptr = gdImageTiffPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_true_color_to_palette = gdImageTrueColorToPalette(im : ImagePtr, dither_flag : LibC::Int, colors_wanted : LibC::Int) : LibC::Int
  fun image_true_color_to_palette_set_method = gdImageTrueColorToPaletteSetMethod(im : ImagePtr, method : LibC::Int, speed : LibC::Int) : LibC::Int
  fun image_true_color_to_palette_set_quality = gdImageTrueColorToPaletteSetQuality(im : ImagePtr, min_quality : LibC::Int, max_quality : LibC::Int)
  fun image_wbmp = gdImageWBMP(image : ImagePtr, fg : LibC::Int, out : File*)
  fun image_wbmp_ctx = gdImageWBMPCtx(image : ImagePtr, fg : LibC::Int, out : IoCtxPtr)
  fun image_wbmp_ptr = gdImageWBMPPtr(im : ImagePtr, size : LibC::Int*, fg : LibC::Int) : LibC::Char*
  fun image_webp = gdImageWebp(im : ImagePtr, out_file : File*)
  fun image_webp_ctx = gdImageWebpCtx(im : ImagePtr, outfile : IoCtxPtr, quantization : LibC::Int)
  fun image_webp_ex = gdImageWebpEx(im : ImagePtr, out_file : File*, quantization : LibC::Int)
  fun image_webp_ptr = gdImageWebpPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_webp_ptr_ex = gdImageWebpPtr(im : ImagePtr, size : LibC::Int*) : LibC::Char*
  fun image_xbm_ctx = gdImageXbmCtx(image : ImagePtr, file_name : LibC::Char*, fg : LibC::Int, out : IoCtxPtr)
  fun layer_multiply = gdLayerMultiply(dest : LibC::Int, src : LibC::Int) : LibC::Int
  fun layer_overlay = gdLayerOverlay(dest : LibC::Int, src : LibC::Int) : LibC::Int
  fun major_version = gdMajorVersion : LibC::Int
  fun minor_version = gdMinorVersion : LibC::Int
  fun new_dynamic_ctx = gdNewDynamicCtx(size : LibC::Int, data : Void*) : IoCtxPtr
  fun new_dynamic_ctx_ex = gdNewDynamicCtxEx(size : LibC::Int, data : Void*, free_flag : LibC::Int) : IoCtxPtr
  fun new_file_ctx = gdNewFileCtx(x0 : File*) : IoCtxPtr
  fun new_ss_ctx = gdNewSSCtx(in : SourcePtr, out : SinkPtr) : IoCtxPtr
  fun put_buf = gdPutBuf(x0 : Void*, x1 : LibC::Int, x2 : IoCtxPtr) : LibC::Int
  fun put_c = gdPutC(c : UInt8, ctx : IoCtxPtr)
  fun put_int = gdPutInt(w : LibC::Int, ctx : IoCtxPtr)
  fun put_word = gdPutWord(w : LibC::Int, ctx : IoCtxPtr)
  fun release_version = gdReleaseVersion : LibC::Int
  fun seek = gdSeek(ctx : IoCtxPtr, offset : LibC::Int) : LibC::Int
  fun set_error_method = gdSetErrorMethod(x0 : ErrorMethod)
  fun supports_file_type = gdSupportsFileType(filename : LibC::Char*, writing : LibC::Int) : LibC::Int
  fun tell = gdTell(ctx : IoCtxPtr) : LibC::Long
  fun transform_affine_bounding_box = gdTransformAffineBoundingBox(src : RectPtr, affine : LibC::Double[6], bbox : RectPtr) : LibC::Int
  fun transform_affine_copy = gdTransformAffineCopy(dst : ImagePtr, dst_x : LibC::Int, dst_y : LibC::Int, src : ImagePtr, src_region : RectPtr, affine : LibC::Double[6]) : LibC::Int
  fun transform_affine_get_image = gdTransformAffineGetImage(dst : ImagePtr*, src : ImagePtr, src_area : RectPtr, affine : LibC::Double[6]) : LibC::Int
  fun version_string = gdVersionString : LibC::Char*

  struct Font
    nchars : LibC::Int
    offset : LibC::Int
    w : LibC::Int
    h : LibC::Int
    data : LibC::Char*
  end

  struct FtStringExtra
    flags : LibC::Int
    linespacing : LibC::Double
    charmap : LibC::Int
    hdpi : LibC::Int
    vdpi : LibC::Int
    xshow : LibC::Char*
    fontpath : LibC::Char*
  end

  struct Image
    pixels : UInt8**
    sx : LibC::Int
    sy : LibC::Int
    colors_total : LibC::Int
    red : LibC::Int[256]
    green : LibC::Int[256]
    blue : LibC::Int[256]
    open : LibC::Int[256]
    transparent : LibC::Int
    poly_ints : LibC::Int*
    poly_allocated : LibC::Int
    brush : Image*
    tile : Image*
    brush_color_map : LibC::Int[256]
    tile_color_map : LibC::Int[256]
    style_length : LibC::Int
    style_pos : LibC::Int
    style : LibC::Int*
    interlace : LibC::Int
    thick : LibC::Int
    alpha : LibC::Int[256]
    true_color : LibC::Int
    tpixels : LibC::Int**
    alpha_blending_flag : LibC::Int
    save_alpha_flag : LibC::Int
    aa : LibC::Int
    aa_color : LibC::Int
    aa_dont_blend : LibC::Int
    cx1 : LibC::Int
    cy1 : LibC::Int
    cx2 : LibC::Int
    cy2 : LibC::Int
    res_x : LibC::UInt
    res_y : LibC::UInt
    palette_quantization_method : LibC::Int
    palette_quantization_speed : LibC::Int
    palette_quantization_min_quality : LibC::Int
    palette_quantization_max_quality : LibC::Int
    interpolation_id : InterpolationMethodID
    interpolation : InterpolationMethod
  end

  struct IoCtx
    get_c : (IoCtxPtr -> LibC::Int)
    get_buf : (IoCtxPtr, Void*, LibC::Int -> LibC::Int)
    put_c : (IoCtxPtr, LibC::Int -> Void)
    put_buf : (IoCtxPtr, Void*, LibC::Int -> LibC::Int)
    seek : (IoCtxPtr, LibC::Int -> LibC::Int)
    tell : (IoCtxPtr -> LibC::Long)
    gd_free : (IoCtxPtr -> Void)
    data : Void*
  end

  struct PointF
    x : LibC::Double
    y : LibC::Double
  end

  struct Point
    x : LibC::Int
    y : LibC::Int
  end

  struct Rect
    x : LibC::Int
    y : LibC::Int
    width : LibC::Int
    height : LibC::Int
  end

  struct Scatter
    sub : LibC::Int
    plus : LibC::Int
    num_colors : LibC::UInt
    colors : LibC::Int*
    seed : LibC::UInt
  end

  struct Sink
    sink : (Void*, LibC::Char*, LibC::Int -> LibC::Int)
    context : Void*
  end

  struct Source
    source : (Void*, LibC::Char*, LibC::Int -> LibC::Int)
    context : Void*
  end

  struct X_IoFile
    _flags : LibC::Int
    _io_read_ptr : LibC::Char*
    _io_read_end : LibC::Char*
    _io_read_base : LibC::Char*
    _io_write_base : LibC::Char*
    _io_write_ptr : LibC::Char*
    _io_write_end : LibC::Char*
    _io_buf_base : LibC::Char*
    _io_buf_end : LibC::Char*
    _io_save_base : LibC::Char*
    _io_backup_base : LibC::Char*
    _io_save_end : LibC::Char*
    _markers : X_IoMarker*
    _chain : X_IoFile*
    _fileno : LibC::Int
    _flags2 : LibC::Int
    _old_offset : X__OffT
    _cur_column : LibC::UShort
    _vtable_offset : LibC::Char
    _shortbuf : LibC::Char[1]
    _lock : X_IoLockT*
    _offset : X__Off64T
    _codecvt : X_IoCodecvt*
    _wide_data : X_IoWideData*
    _freeres_list : X_IoFile*
    _freeres_buf : Void*
    __pad5 : LibC::SizeT
    _mode : LibC::Int
    _unused2 : LibC::Char[20]
  end

  type File = X_IoFile
end
