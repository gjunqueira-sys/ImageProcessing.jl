using Images, ImageMetadata, TestImages, ImageView

penny_image = load(download("https://www.usacoinbook.com/us-coins/lincoln-memorial-cent.jpg"))

size(penny_image)

# in julia images are index from the top left corner
head = penny_image[:, 1:end ÷ 2]

tail = penny_image[:, end ÷ 2 : end]

rcoins = rand([ head, tail ], 5 , 5)

# in jupyter i think the whole image matrix would have been displayed
rcoins



## accessing individual pixels
head[1, 1, :]
typeof(head)

RGB(0.4, 0.6, 0.1)

size(head)

head[1,1, :]