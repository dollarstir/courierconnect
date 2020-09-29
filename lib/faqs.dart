// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Frequently Asked Questions'),
        ),
        body: Container(
          width: 350,
          height: 500,
          // color: Colors.black54,
          margin: EdgeInsets.all(10),
          child: Card(
            elevation: 15,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index]),
              itemCount: data.length,
            ),
          ),
        ));
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'How do I track my shipment? ',
    <Entry>[
      Entry(
          'Once you complete your shipping order, you will get a shipment/tracking number(s) for tracking the status of your order. You get to see the status and origin of the order as well as the destination of your order. You can track your shipment on our portal here. '),
    ],
  ),
  Entry(
    'What is a tracking Number?',
    <Entry>[
      Entry(
          'A tracking number is a combination of numbers and letters that uniquely identifies your shipment. '),
    ],
  ),
  Entry(
    'How do I track my shipment? ',
    <Entry>[
      Entry(
          'Once you complete your shipping order, you will get a shipment/tracking number(s) for tracking the status of your order. You get to see the status and origin of the order as well as the destination of your order. You can track your shipment on our portal here. '),
    ],
  ),
  Entry(
    'Can I change my delivery address? ',
    <Entry>[
      Entry(
          'Unforunately, it is not possible to change the address once the shipment has been dispatched.  '),
    ],
  ),
  Entry(
    'Are your packages insured? ',
    <Entry>[
      Entry(
          'Once a package is enroute to your destination, influencing the shiping experience is mostly out of hands, which is why your shipment are insured to handle unforeseen issues like lost or delayed shipments. '),
    ],
  ),
  Entry(
    'What happens if my packages arrives late? ',
    <Entry>[
      Entry(
          'Delays can\'t be completely controlled for, and so we are willing to support all our customers for late arrivals of their packages. '),
    ],
  ),
  Entry(
    'My Shipment is not delivered. What can I do? ',
    <Entry>[
      Entry(
          'In case your shipment has not arrived within the expect delivery time, please contact us directly, to investigate on the cause.Please also keep in mind that delivery times can vary depending on the product/service and origin/destination relation. Delays of up to 10 days are unfortunely possible due to examples; weather incidents, customs or operational backlogs.'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
