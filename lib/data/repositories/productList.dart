import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/data/models/productListItem.dart';


class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<ProductListItem> items = [
    ProductListItem(
      id: '1',
      name: 'Burgundy Mist Jersey',
      description: 'A soft, lightweight hijab with a comfortable stretch and versatile styling.',
      price: 5500,
      imageUrl: 'assets/images/burgundy_mist_jersey.webp',
    ),
    ProductListItem(
      id: '2',
      name: 'Luxury Crinkle Chiffon - Ice Blue',
      description:
          'A luxurious soft crinkle chiffon hijab with a slightly textured fabric, ideal for draping, pleating, or everyday wear.',
      price: 5800,
      imageUrl: 'assets/images/luxury_crinkle_chiffon.webp',
    ),
    ProductListItem(
      id: '3',
      name: 'Luxury Organza - Blush',
      description:
          'A lightweight luxury organza hijab with a soft blush tone, offering a delicate sheen and elegant drape for any occasion.',
      price: 7100,
      imageUrl: 'assets/images/luxury_organza_blush.webp',
    ),
    ProductListItem(
      id: '4',
      name: 'Luxury Tie Dye Chiffon - Smoked Orchid',
      description:
          'A premium lightweight chiffon hijab in smoked orchid tones, blending rich plum hues with soft gradients for an elegant, airy drape.',
      price: 8000,
      imageUrl: 'assets/images/luxury_tie_dye_chiffon_smoked_orchid.webp',
    ),
    ProductListItem(
      id: '5',
      name: 'Premium Maxi Modal - Sesame',
      description:
          'A breathable 100% modal hijab with a soft, durable weave, offering generous coverage and an elegant, effortless drape.',
      price: 6700,
      imageUrl: 'assets/images/premium_maxi_modal_sesame.webp',
    ),
    ProductListItem(
      id: '6',
      name: 'Luxury Printed - Celestial Mirage',
      description:
          'A premium lightweight crepe hijab with celestial-inspired swirls, blending soft tones for an elegant, dreamy, and timeless look.',
      price: 9600,
      imageUrl: 'assets/images/luxury_printed_celestial_mirage.webp',
    ),
    ProductListItem(
      id: '7',
      name: 'Premium Viscose Hijab - Trench Coat',
      description:
          'A lightweight premium viscose hijab with a soft, textured feel, offering breathable comfort and lasting elegance for everyday wear.',
      price: 2500,
      imageUrl: 'assets/images/premium_viscose_trench_coat.webp',
    ),
    ProductListItem(
      id: '8',
      name: 'Frayed Crinkle Hijab',
      description:
          'A lightweight frayed crinkle hijab made from soft viscose cotton, offering effortless, breathable, and fuss-free styling for everyday comfort.',
      price: 2100,
      imageUrl: 'assets/images/frayed_crinkle_hijab_purple.webp',
    ),
    ProductListItem(
      id: '9',
      name: 'Luxury Georgette Hijab with Dainty Black',
      description:
          'A luxurious georgette hijab in classic black with delicate hand-crochet edging, offering timeless elegance and refined artisanal charm.',
      price: 6600,
      imageUrl: 'assets/images/luxury_georgette_dainty_black.png',
    ),
    ProductListItem(
      id: '10',
      name: 'Luxury Tie Die Chiffon - Sunkissed Dune',
      description:
          'A premium lightweight chiffon hijab with warm tie-dye tones of beige and peach, offering an airy drape and effortless summer elegance.',
      price: 7900,
      imageUrl: 'assets/images/luxury_tie_die_sunkissed_dune.webp',
    ),
   
  ];

 @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ProductListItemView(
          item: item,
        );
      },
    );
  }
}