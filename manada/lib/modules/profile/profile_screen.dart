import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Seu perfil', style: TextStyle(color:  Color.fromARGB(255, 245, 130, 22)),),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        elevation: 0,
       
      ),
      body: Column(
        children: [
          // Seção de Cabeçalho
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:  Column(
              children: [
                 CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/profile.png'), // Substitua pela imagem de perfil
                ),
                 Text(
                  'João Paulo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 245, 130, 22),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Campos de Informações do Usuário
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildInfoField('Nome de usuário', 'jpozao', Icons.person),
                _buildInfoField('Phone Number', '+37 999552181', Icons.phone),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Função para construir os campos de informação com ícones
  Widget _buildInfoField(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 253, 253, 253),
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 39, 39, 39),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16,
                      color: const  Color.fromARGB(255, 245, 130, 22),
                    ),
                  ),
                ),
                Icon(icon, color: const  Color.fromARGB(255, 245, 130, 22)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
