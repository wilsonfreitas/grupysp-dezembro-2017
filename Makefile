
OUTPUT_DIR=/Users/wilson/dev/aw/gh-site/wilsonfreitas.github.io/content/slides/pydata-fevereiro-2017

Modelagem_de_Series_Temporais_com_Python.slides.html: Modelagem_de_Series_Temporais_com_Python.ipynb
	jupyter-nbconvert --to slides Modelagem_de_Series_Temporais_com_Python.ipynb --reveal-prefix=libs/reveal.js-3.6.0

deploy: Modelagem_de_Series_Temporais_com_Python.slides.html
	cp Modelagem_de_Series_Temporais_com_Python.slides.html $(OUTPUT_DIR)/index.html
	cp -r libs $(OUTPUT_DIR)

clean:
	rm Modelagem_de_Series_Temporais_com_Python.slides.html
