require "../src/gd"

image_path = ARGV[0]
image_data = File.read(image_path)
image_pointer = LibGD.image_create_from_jpeg_ptr(image_data.bytesize, image_data)
size_x = image_pointer.value.sx
size_y = image_pointer.value.sy

(0..size_x).each do |x|
  (0..size_y).each do |y|
    bgr_pixel = LibGD.image_get_pixel(image_pointer, x, y)

    red = (bgr_pixel & 0xFF0000) >> 16
    green = (bgr_pixel & 0x00FF00) >> 8
    blue = bgr_pixel & 0x0000FF

    rgb_pixel = LibGD.image_color_allocate(image_pointer, blue, green, red)
    LibGD.image_set_pixel(image_pointer, x, y, rgb_pixel)
  end
end

jpeg_pointer = LibGD.image_jpeg_ptr(image_pointer, out size, 100)
image_data = String.new(jpeg_pointer, size)

LibGD.image_destroy(image_pointer)
LibGD.free(jpeg_pointer)

File.write("examples/images/bgr.jpg", image_data)
