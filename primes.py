"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
		#Condición si el numero es menor a 2, no es primo
		if num_int<2:    
			#Por lo tanto devuelve Falso
			return False
		#Ciclo desde el 2 hasta el numero que escogimos para obtener las divisiones
		for i in range(2, num_int):  
			#Condición para ver si el residuo de la división es igual a 0 
			if num_int%i == 0:   
				#El número no es primo por lo tanto devuelve falso
				return False
		#El numero es primo, devuelve verdadero
		return True  
