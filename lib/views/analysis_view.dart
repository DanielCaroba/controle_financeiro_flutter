import 'package:flutter/material.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.green,

        title: const Text(
          'Análise Financeira',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              'Resumo do Mês',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: Column(
                children: [

                  const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      Text(
                        'Orçamento usado',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),

                      Text(
                        '65%',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  LinearProgressIndicator(
                    value: 0.65,
                    minHeight: 12,
                    borderRadius:
                        BorderRadius.circular(10),

                    backgroundColor:
                        Colors.grey[300],

                    color: Colors.green,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Indicadores',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            indicatorCard(
              'Maior gasto',
              'Mercado',
              Icons.shopping_cart,
              Colors.red,
            ),

            indicatorCard(
              'Maior receita',
              'Salário',
              Icons.attach_money,
              Colors.green,
            ),

            indicatorCard(
              'Economia do mês',
              'R\$ 1.500',
              Icons.savings,
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget indicatorCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          CircleAvatar(
            backgroundColor:
                color.withOpacity(0.2),

            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}