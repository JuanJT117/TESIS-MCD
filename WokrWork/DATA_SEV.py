import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import pygimli as pg
from pygimli.physics import VESManager

# 📌 Cargar datos desde archivos CSV
modelo_df = pd.read_csv("modelo_sintetico.csv")  # Modelo geofísico
ab2_df = pd.read_csv("ab2.csv")  # Distancias AB/2

# Extraer espesores y resistividades
synthk = modelo_df["Espesor (m)"].dropna().tolist()  # Eliminar NaN si hay ∞
synres = modelo_df["Resistividad (Ohm·m)"].tolist()

# Asegurar que la última capa sea infinita
if synthk[-1] != "∞":
    synthk.pop()  # Eliminar última capa si no es infinita

# Convertir distancias AB/2
ab2 = ab2_df["AB/2 (m)"].to_numpy()

# 📌 Generar modelo sintético
synthModel = synthk + synres
ves = VESManager()

# 📌 Simulación de resistividad aparente con 3% de ruido
rhoa, err = ves.simulate(synthModel, ab2=ab2, mn2=ab2/3, noiseLevel=0.03, seed=1337)

# 📌 Gráfica de resistividad aparente
plt.figure(figsize=(6, 4))
plt.plot(ab2, rhoa, 'o-', label="Resistividad Aparente", color="C0")
plt.xscale("log")
plt.yscale("log")
plt.xlabel("AB/2 (m)")
plt.ylabel("Resistividad Aparente (Ohm·m)")
plt.title("Curva de Resistividad Aparente")
plt.legend()
plt.grid(True, which="both", linestyle="--", linewidth=0.5)
plt.show()
 