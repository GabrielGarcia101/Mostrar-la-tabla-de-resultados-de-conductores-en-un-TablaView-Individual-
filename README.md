# Mostrar-la-tabla-de-resultados-de-conductores-en-un-TablaView-Individual-

![image](https://github.com/user-attachments/assets/38fc07a6-d4ac-4cc7-b429-10dc65a6cc0d)






Imports: Importamos las clases necesarias de javax.swing.* para la interfaz gráfica y las clases de JDBC (java.sql.*) para la conexión y manipulación de la base de datos.

Clase Formula1ViewerFrame: Extiende JFrame y contiene los componentes y la lógica necesaria para la aplicación.

Constructor Formula1ViewerFrame():

Configura el título de la ventana, operación de cierre, tamaño y diseño.
Crea y configura los componentes de la interfaz gráfica (JComboBox, JButton, JTextArea) y los organiza en un JPanel y un JScrollPane.
Configuración del JComboBox: Establece los años disponibles en el JComboBox.

ActionListener del yearButton:

 - Se activa cuando se hace clic en el botón "Year".
 - Obtiene el año seleccionado del JComboBox.
 - Establece una conexión a la base de datos MySQL utilizando DriverManager.getConnection.
 - Prepara y ejecuta una consulta SQL para seleccionar los datos de los conductores según el año seleccionado.
 - Procesa el resultado (ResultSet) y muestra la información formateada en el JTextArea.
 - Maneja excepciones (SQLException) y muestra un mensaje de error si la conexión o la consulta fallan.
