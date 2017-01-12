"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Metodo que recibe un numero e indica si el valor es
        primo o no con un True o False
        """
        # Condicion si el numero es menor a 2 no es primo
        if num_int < 2:    
            # Por lo tanto devuelve Falso
            return False
        # Ciclo desde el 2 hasta el numero que escogimos, 
        # para obtener las divisiones 
        for incremento in range(2, num_int):  
            # Condicion para ver si el residuo de la división es igual a 0 
            if num_int % incremento == 0:   
                # El número no es primo por lo tanto devuelve falso
                return False
        # El numero es primo devuelve verdadero
        return True  
