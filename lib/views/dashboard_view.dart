import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Controle Financeiro',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/analysis',
              );
            },

            icon: const Icon(
              Icons.bar_chart,
              color: Colors.white,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,

        onPressed: () {},

        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const Text(
                'Saldo Atual',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),

                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    Text(
                      'R\$ 4.850,00',
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Saldo disponível',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Row(
                children: [

                  Expanded(
                    child: Container(
                      padding:
                          const EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                                20),
                      ),

                      child: const Column(
                        children: [

                          Icon(
                            Icons.arrow_downward,
                            color: Colors.green,
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Receitas',
                          ),

                          SizedBox(height: 5),

                          Text(
                            'R\$ 7.200',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Container(
                      padding:
                          const EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                                20),
                      ),

                      child: const Column(
                        children: [

                          Icon(
                            Icons.arrow_upward,
                            color: Colors.red,
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Despesas',
                          ),

                          SizedBox(height: 5),

                          Text(
                            'R\$ 2.350',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Transações Recentes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              transactionItem(
                'Salário',
                '+ R\$ 5.000',
                Icons.attach_money,
                Colors.green,
              ),

              transactionItem(
                'Mercado',
                '- R\$ 350',
                Icons.shopping_cart,
                Colors.red,
              ),

              transactionItem(
                'Internet',
                '- R\$ 120',
                Icons.wifi,
                Colors.red,
              ),

              transactionItem(
                'Freelance',
                '+ R\$ 2.200',
                Icons.work,
                Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget transactionItem(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(15),

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
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}