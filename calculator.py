"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num_list):
        """
        Metodo que recibe una lista de numero
        como entrada y regresa la suma de todos
        """
        # Inicializar la variable en 0
        resultado = 0
        # Ciclo para realizar la suma de los elementos que tiene la lista
        for incremento in range(0, len(num_list)):
            # Suma de los valores que tiene la lista
            resultado = resultado + num_list[incremento]
        # Resultado de la suma de los valores de la lista
        return resultado
