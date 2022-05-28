import 'dart:convert';
import 'package:http/http.dart' as http;

class MintIPFS {
  Future<String> mintFromIPFS() async {

    final response = await http.post(
      Uri.parse('https://api.nftport.xyz/v0/mints/customizable'),
      headers: {
        'Content-Type': "application/json",
        'Authorization': "b2071c0f-45ec-4490-bb43-f1be95cb480f",
      },
      body: "{\"chain\":\"rinkeby\",\"contract_address\":\"0xc3CD2774a9967EcC8d35dB4c63776D4dCCac5913\",\"metadata_uri\":\"https://ipfs.io/ipfs/bafkreidtuu4ij437pga7szdjpty3pzo4pwcozne7wakoujvrsbqdyuq7ve\",\"mint_to_address\":\"0xa99DB7F7333F0537e2A3Ad0227F8B3De2AE46100\"}",
    );

    final data = jsonDecode(response.body);
    final hash = data['transaction_hash'];
    print(data);
    print(hash);
    return hash;
  }
}