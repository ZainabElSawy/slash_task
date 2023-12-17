import '../models/product.dart';
import '../models/product_property.dart';
import '../models/product_property_and_values.dart';
import '../models/product_variation.dart';

List<Product> sampleProducts = [
  Product(
    id: 1,
    name: "Scarf",
    description: "A stylish and comfortable Scarf.",
    brandId: 1,
    brandName: "Alamki Brand",
    brandLogoUrl:
        "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/398089669_733330998828475_6937799979871334035_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=bt1MQqkgy8cAX_fIpaO&_nc_oc=AQmo8tfYh4REGbPp8bnz-ruhsWHyueQ7ST_yncBxNQFKEDMTSiaMm-38mUeOPMjElX8&_nc_ht=scontent-hbe1-1.xx&oh=00_AfB2WWAvexf86yAay8eZrPU1tQH9ltoaWccrpjrOa0W37Q&oe=658374CD",
    rating: 4.5,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 23,
        quantity: 5,
        inStock: true,
        productVariantImages: [
          "https://m.media-amazon.com/images/I/512dR+z5UhL._AC_SR175,263_QL70_.jpg",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF808000),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
      ProductVariation(
        id: 2,
        productId: 1,
        price: 23,
        quantity: 5,
        inStock: true,
        productVariantImages: [
          "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/07/929991/1.jpg?5125",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF000000),
          ProductPropertyAndValue(property: "Material", value: "Chiffon"),
        ],
      ),
      ProductVariation(
        id: 3,
        productId: 1,
        price: 19.99,
        quantity: 10,
        inStock: true,
        productVariantImages: [
          "https://scontent.fcai21-1.fna.fbcdn.net/v/t39.30808-6/242209409_1325352061252212_4794159249814366876_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=3635dc&_nc_ohc=L07xetqYqAUAX8oBjOV&_nc_ht=scontent.fcai21-1.fna&oh=00_AfD9s5906Kq0pJRtnMXtA3yJXljaxnzgjMeIEXSu9W5J9g&oe=658370B9",
          "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/242029117_1325352327918852_7012518754030270850_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=3635dc&_nc_ohc=G1zo9-oOPhcAX9xSOJW&_nc_ht=scontent-hbe1-1.xx&oh=00_AfCP-q5heBmJBYxc1-yDVScv28GD58Nc67oHPFUs7ZpC4A&oe=65825D76",
          "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/242022649_1325352201252198_1065792936322483317_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=3635dc&_nc_ohc=ER7sQx4G1TQAX8IcYbk&_nc_ht=scontent-hbe1-1.xx&oh=00_AfC4RlVSZwlip3focOP3piMklJExU6yWIFQAlqiBSdpBaw&oe=65835F12",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFFE6E6FA),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(
          name: "Color", values: [0xFF808000, 0xFF000000, 0xFFE6E6FA]),
      ProductProperty(name: "Material", values: ["Cotton"]),
    ],
  ),
  Product(
    id: 2,
    name: "T-Shirt",
    description: "A stylish and comfortable t-shirt.",
    brandId: 1,
    brandName: "ABC Brand",
    brandLogoUrl:
        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-logo-design-template-0a279abdd76be76cc852e4ac959cc5f4_screen.jpg?ts=1669470887",
    rating: 4.5,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 19.99,
        quantity: 10,
        inStock: true,
        productVariantImages: [
          "https://static.lefties.com/9/photos2/2023/I/0/2/p/5028/504/686/5028504686_2_1_1.jpg?t=1694772072336",
          "https://static.lefties.com/9/photos2/2023/I/0/2/p/5028/504/686/5028504686_2_3_1.jpg?t=1694772072336",
          "https://static.lefties.com/9/photos2/2023/I/0/2/p/5028/504/686/5028504686_2_4_1.jpg?t=1694772072336",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFFA52A2A),
          ProductPropertyAndValue(property: "Size", value: "XL"),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
      ProductVariation(
        id: 2,
        productId: 1,
        price: 25,
        quantity: 5,
        inStock: true,
        productVariantImages: [
          "https://m.media-amazon.com/images/I/41opNJOxgqL.AC_SX679.jpg",
          "https://m.media-amazon.com/images/I/51U+sJkzLeL.AC_SX679.jpg",
          "https://m.media-amazon.com/images/I/51a+kIhOrSL.AC_SY741.jpg",
          "https://m.media-amazon.com/images/I/51Cv8yPXSZL.AC_SY741.jpg",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF000000),
          ProductPropertyAndValue(property: "Size", value: "L"),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(name: "Color", values: [0xFFA52A2A, 0xFF000000]),
      ProductProperty(name: "Size", values: ["XL", "L"]),
      ProductProperty(name: "Material", values: ["Cotton"]),
    ],
  ),
  Product(
    id: 3,
    name: "Scarf",
    description: "A stylish and comfortable Scarf.",
    brandId: 1,
    brandName: "Alamki Brand",
    brandLogoUrl:
        "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/398089669_733330998828475_6937799979871334035_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=bt1MQqkgy8cAX_fIpaO&_nc_oc=AQmo8tfYh4REGbPp8bnz-ruhsWHyueQ7ST_yncBxNQFKEDMTSiaMm-38mUeOPMjElX8&_nc_ht=scontent-hbe1-1.xx&oh=00_AfB2WWAvexf86yAay8eZrPU1tQH9ltoaWccrpjrOa0W37Q&oe=658374CD",
    rating: 4.5,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 19.99,
        quantity: 10,
        inStock: true,
        productVariantImages: [
          "https://m.media-amazon.com/images/I/518Yphm3sEL.AC_SY550.jpg",
          "https://m.media-amazon.com/images/I/618fb-IXUJL.AC_SX679.jpg",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF000000),
          ProductPropertyAndValue(property: "Size", value: "XL"),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
      ProductVariation(
        id: 2,
        productId: 1,
        price: 19.99,
        quantity: 5,
        inStock: true,
        productVariantImages: [
          "https://m.media-amazon.com/images/I/61hj-DVqENL.AC_SY550.jpg",
          "https://m.media-amazon.com/images/I/61xFqK4CkrL.AC_SX522.jpg",
          "https://m.media-amazon.com/images/I/51G4K+ZqNeL.AC_SY550.jpg",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF000000),
          ProductPropertyAndValue(property: "Size", value: "L"),
          ProductPropertyAndValue(property: "Size", value: "XL"),
          ProductPropertyAndValue(property: "Size", value: "XXL"),
          ProductPropertyAndValue(property: "Material", value: "Cotton"),
        ],
      ),
    ],
    availableProperties: [
      // ProductProperty(name: "Color", values: [0xFF000000]),
      ProductProperty(name: "Size", values: ["XL", "L", "XL", "XXL"]),
      ProductProperty(name: "Material", values: ["Cotton"]),
    ],
  ),
  Product(
    id: 4,
    name: "phone",
    description: "A new smart phone",
    brandId: 1,
    brandName: "Apple",
    brandLogoUrl:
        "https://cdn.benzinga.com/files/imagecache/story_image_685x375C/images/story/2023/02/02/image-apple6.jpg?crop=smart&height=375&width=685&optimize=medium&dpr=1&auto=webp",
    rating: 4.8,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 25888,
        quantity: 10,
        inStock: true,
        productVariantImages: [
          "https://m.media-amazon.com/images/I/610pghkO81L.AC_SL1500.jpg",
          "https://m.media-amazon.com/images/I/61im796yRUL.AC_SL1500.jpg",
          "https://m.media-amazon.com/images/I/711yt5-rPLL.AC_SL1500.jpg",
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: "Color", value: 0xFF000000),
          ProductPropertyAndValue(property: "Size", value: "256 GB"),
          ProductPropertyAndValue(
            property: "Material",
            value: "stainless steel",
          ),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(name: "Color", values: [0xFF000000]),
      ProductProperty(name: "Size", values: ["256 GB"]),
    ],
  ),
];
