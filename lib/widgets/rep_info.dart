import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RepInfo extends StatelessWidget {
  const RepInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: const [
              _MenuInfo(
                imageUrl: '/icon/bedroom.svg',
                content: '5 quartos',
              ),
              _MenuInfo(
                imageUrl: '/icon/bathroom.svg',
                content: '3 banheiros',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              _MenuInfo(
                imageUrl: '/icon/kitchen.svg',
                content: '1 cozinha',
              ),
              _MenuInfo(
                imageUrl: '/icon/parking.svg',
                content: '3 vagas de garagem',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const _MenuInfo({
    Key? key,
    required this.imageUrl,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SvgPicture.asset(imageUrl),
          const SizedBox(
            height: 5,
          ),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 13,
                  fontFamily: 'BodoAmatic',
                ),
          ),
        ],
      ),
    );
  }
}
