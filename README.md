<p align='center'>
<img src ="https://d31uz8lwfmyn8g.cloudfront.net/Assets/logo-henry-white-lg.png">
<p>

<h1 align='center'>
 <b>Proyecto de Análisis de Datos</b>
</h1>

# <h1 align="center">**`Seguridad Vial en CABA`**</h1>

Este proyecto tiene como objetivo general reducir la cantidad de víctimas fatales en siniestros viales en la Ciudad de Buenos Aires (CABA) mediante el análisis de datos.

<p align='center'>
<img src = 'https://static.lajornadaestadodemexico.com/wp-content/uploads/2022/08/Siniestros-viales.jpg' height = 500>
<p>

### 1. Comprensión del Negocio

- **Entendiendo el Contexto y Objetivos:**
  
  - Comprender la situación de la seguridad vial en CABA en los años 2016-2021.
  
  - Analizar la problemática de los siniestros viales en Buenos Aires, considerando factores como la densidad poblacional y cantidad siniestros.
  
  - Analizar la información sobre la tasa de homicidios en siniestros viales y la cantidad de accidentes mortales de motociclistas en CABA.
  
  - Identificar las causas principales de los siniestros y las consecuencias para los involucrados.
  
  - Representar los indicadores sobre la reduccion del 10% de la tasa de homicidios segun el semestre anterior y reduccion del 7% de la cantiada de accidentes fatales para Motocilistas y peatones.

### 2. Herramientas

- Microsoft Excel: para una visualización previa de los datos a ser utilizados, examinando el diccionario de datos.
- Python: mediante la plataforma de Jupyter Notebook, para el tratamiento de datos, ETL, EDA y su disponibilización, atravez de las librerias: Pandas, Matplotlib, SeaBorn y Sqlalchemy.
- MySQL: servidor utilizado para la disponibilización de datos estructurados para alimentar la plataforma de visualización.
- Workbench: para la creación de base de datos estructurados y el diagrama de relaciones.
- Power BI: presentación del proyecto junto con Dashboards dinámicos e indicadores.
- Mark Text: para la creación/modificación del archivo Readme.md en formato markdown.

### 3. Fuente de Datos

- Se utilizo el Dataset Homicidios proporcionado por https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales.
- Se Utilizo el Dataset sobre la población  proporcionado por la INDEC:
  - [Ciudad Autónoma de Buenos Aires - Censo Nacional de Población, Hogares y Viviendas](https://censo.gob.ar/index.php/datos_definitivos_caba/)
  - https://censo.gob.ar/wp-content/uploads/2023/11/c2022_caba_est_c2_1.xlsx

### 4. Repositorio:

- Carpeta 'Database': en este directorio se encuentra el archivo 'PI_DA_Diagram.mwb' el cual contiene el diagrama de relaciones de la tabla de la base de datos. el archivo 'Scripts_DB.sql' contiene el script realizado para la creación de la base de datos.

- Carpeta 'Datasets':
  
  - El archivo 'homicidios.xlsx', contiene datos sobre los siniestros y victimas registradas desde el 2016 al 2021
  - El archivo 'c2022_caba_est_c2_1.xlsx' contiene datos sobre la población por comuna en CABA.
  - Los archivos 'hechos.parquet', 'victimas.parquet' y 'victimasf.parquet', corresponden a los datos extraidos luego de la limpieza y estructuración del archivo 'homicidios.xlsx'.
  - Los archivos 'poblacion.parquet' y 'comunas.parquet', corresponden a los datos extraidos luego de la limpieza y estructuración del archivo 'c2022_caba_est_c2_1.xlsx'.

- Carpeta 'Dashboard', el archivo 'PI_DA.pbix' contiene la presentación y Dashboards iteractivos.

- Carpeta 'Notebooks':
  
  - El archivo 'ETL.ipynb', contiene los pasos realizados para la extracción y tratamiento de los datos.
  - El archivo 'EDA.ipynb', contiene el analisis exploratorio realizado a los datos.
  - El archivo 'Insert_Mysql.ipynb', contiene los pasos realizados para la carga de datos a MySQL.

- Carpeta 'src', contiene las imagenes presentadas en este documento.

- El archivo 'Contexto.md', contiene la problemática presentada junto con el contexto del proyecto desarrollado.

- El archivo 'LICENSE.txt', contiene el descargo de responsabilidad para la utlización del código del proyecto presentado.

- El archivo 'Readme.md', el presente documento.

### 4. Metodologias:

- Analisis Exploratorio: para identificar valores atipitos y tendencias utiles para el desarrollo del dashboard.
- Analisis Descriptivo: para las visualizaciones en los dashboards interactivos, ayudando a obtener el valor buscado en los datos.
- Analisis Predictivo: recomendaciones segun datos y valores observados en los dashboards.

### 5. Análisis Exploratorio de Datos (EDA)

<img title="" src="file:///C:/PI_DA-PT/src/DA1.PNG" alt="">

- Encontramos una ligera tendencia bajista año tras año, sin embargo en los ultimos 3 años de la cantidad de victimas el 100% son fatales.

<img title="" src="file:///C:/PI_DA-PT/src/DA2.PNG" alt="">

- En el tipo de calle AVENIDA se concentra la mayor cantidad de siniestros, punto  a tener encuenta para las recomendaciones viales.

<img title="" src="file:///C:/PI_DA-PT/src/DA3.PNG" alt="">

- El indicador propuesto de reducir el 10% la tasa de homicidios vemos que se cumplido respecto al ultimo semeste del año 2021 por lo que las medidas y policiticas de seguridad vial arrojaron un resultado positivo, se debe continuar con estas.

<img title="" src="file:///C:/PI_DA-PT/src/DA4.PNG" alt="">

- Para este indicador vemos que no se logro el objetivo de reducir un 7% la cantidad de accidentes fatales en las victimas de motocicletas por lo que se debe de reforzar el control de normas de seguridad como el uso de casco y chaleco reflectivo.

<img title="" src="file:///C:/PI_DA-PT/src/DA5.PNG" alt="">

- Para este indicador vemos que no esta cerca de lograrse el objetivo de reducir un 7% la cantidad de victimas fatales de peatones, por lo que se recomienda reforzar la educación vial tanto de peatones como de pasajeros.
