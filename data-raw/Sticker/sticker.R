library(hexSticker)
library(magick)
flag <-image_read("https://images.all-free-download.com/images/graphiclarge/american_flag_312241.jpg")
sticker(flag, package = "fec20", p_color = "#BF0A30", h_color="#002868", h_fill = "#FFFFFF",
        filename="data-raw/sticker/hex_fec20.png", p_size=10, s_x=1, s_y=.75, s_width=1.3, s_height = 1.8)