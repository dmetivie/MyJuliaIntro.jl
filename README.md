# MyJuliaIntro

## Installation

[Juliaup](https://github.com/JuliaLang/juliaup)

## Tuto (non testé)

- [Cette vidéo de 100 second](https://www.youtube.com/watch?v%3DJYs_94znYy0)

- [Une liste "officiel"](https://julialang.org/learning/tutorials/)
- Livre [**Statistics with Julia:**](https://github.com/dmetivie/2022_Projet_M1_SSD_B/blob/main/Julia/StatisticsWithJuliaDRAFT.pdf). Introduction aux stats avec Julia. Plein d'example de codes (voir leur site aussi) dans les référence.

- Internet.

## FAQ

- Taper sur internet (en anglais) "Julia how to ....".
En général les questions ont déjà été posé. Les deux forum les plus utilisé sont [Julia discourse](https://discourse.julialang.org/) et [stackoverflow](https://stackoverflow.com/) (ce dernier est en général utilisé par les gens qui ne savent pas qu'il vaut mieux utiliser le [Julia discourse](https://discourse.julialang.org/) mais on y trouve parfois des réponses).
Attention les réponses sont parfois un peu vielle. Le language a pas mal changé depuis le début.
Il y a une grosse différence entre les version `1.v` et les `0.v`. (On est actuellement à la version `1.8`).

- Vous pouvez me poser vos questions

## Éléments pour bien commencer

### Conseils généraux

Apprenez à utilisre VSCode et ses raccourci.

Dévlopper/tester avec script dans VSCode (avec l'e'xtansion Julia). Puis mettez vos résultats (choses qui marchent) au fur et à mesure dans un notebook (avec les figures).
Avoir les deux vous sera utile.

### Jargon

- **`REPL`** (console Julia). On la lance soit avec le bouton ou raccourci dédié. Dans une console (si le `PATH` est bien réglé) avec `julia`.
Dans VSCode avec `Julia: start`REPL`` ou avec le racourci dédié (moi c'est `Alt+J, Alt+O`).
Même si on ne l'utilise pas pour dévlopper ou écrire du code, le `REPL` est très pratique pour tester des petites chose ou encore gérer les package et pas mal d'autres choses (shell, R, aide,).
**Je vous conseil de vous faire la main dessus avec un script et le `REPL` dans VSCode** plutôt qu'un notebook au début.

- **"in place functions"** Par **convention** les fonction finnissant avec un point d'exclamation `!` modifie leur argument. (Notez bien que c'est une convention, si vous voulez pas une feature du language)

For example

```julia
x = [1, 2, 3]
function f!(x)
  for i in eachindex(x)
    x[i] = x[i] + 1
  end
end
f!(x)
x # = [2,3,4]
```

Ici `f!` modifie `x` "in place"

Même pour les plots, pour ajouter des points on uitilise cette convention.

```julia
p = plot(rand(10)) 
scatter!(p, rand(100), rand(100))
# pour les plots on peut retirer le `p` l'ajout des nouveaux point se fera sur la dernière figure.
```

- Broadcasting (ou dot vecotrization). Pour appliquer une fonction à chaque élément d'un `array` en Julia on doit le déclarer explicitement (au contraire de Python ou c'est parfois implicite).


Pour appliquer l'addition à chaque élément du vecteur on le note explicitement avec un point `.+` (ça "alourdit" les notations mais ça clarifie le code)


Pareil pour n'importe quelle user define function.


### Packages

Il y a un package mode qui peut être activé dans le `REPL` grâce à `]`.


faite `Entrer` ou `y` pour l'installer. Cette dernière fonction ne marche que dans le `REPL` (ça `add` et `using`).

Dans Jupyter ou on ne peut pas utiliser le mode package on peut installer des package avec dasn une cellule,

```julia
import Pkg
Pkg.add("UnPackage")
```

puis pour l'utiliser

```julia
using UnPackage
```

### Aide

Dans VScode grâce à l'extansion Julia vous pouvez paasser le curseur sur une fonction pour avoir des infos dessus.
Dans le `REPL` vous pouvez taper `?` et le nom de la fonction (ou autre objet) pour avoir les infos des docs dessus.


Sinon les docs des gros packages sont très bien faites. Vous tapez le nom du package et soit vous tombez sur le GitHub du package soit sur la doc.
Depuis le GitHub vous pouvez trouvez lorsqu'il existe le lien pour la doc en bleu vers le haut du `Readme.md`

Sinon la [FAQ](https://github.com/dmetivie/2022_Projet_M1_SSD_B/blob/main/Julia/README.md#L112##FAQ)

## Package you'll need

Je vous laisse rajouter les liens des github ou doc pour chaque packages (à faire une fois ça vous servira d'avoir une page avec tous les liens plutot que de rechercher à chaque fois + c'est plus écolo d'éviter des recherches google).

- `CSV.jl` pour lire/save les fichier de données.
- `DataFrames.jl` pour lire manipuler les tableaux de données (comme `panda` en Python).
- `Plots.jl` pour faire des plots. Pour tracer des cartes on pourra en parler mais je suis obligé de passer par un package Python.
- `StatsBase.jl` et `Statististics.jl` pour les opérations standards de stats.

## Why is Julia so great?

Ici je compile quelques liens/messages/présentation mettant en avant le language Julia.

- From [this post](https://discourse.julialang.org/t/why-is-julia-so-great/94718/4?u=dmetivie):

```quote
There are many things that can may be more or less important depending on the personal experience of each one. So for a general audience I tend to show things like:

- achievable performance, of course
- package management
- integration with documentation (help entries and Documenter.jl)
- simplicity of creating, distributing and registering packages
- syntax
- REPL and its features (Pkg and Shell integration), and notebooks
- domain-specific ecosystem: differential equations, non-linear programming, SciML
- plottting etc within the same environment

Each of these things may be available in other languages, but I don’t see any other combining all these features so well.

Then you can go for more language-specific features (multiple dispatch, composability, etc) but IMHO this is harder to understand from a utilitarian viewpoint from start.
```

- [How to solve the same numerical problem in 7 different programming languages](https://medium.com/%40andreaskuhn92/how-to-solve-the-same-numerical-problem-in-7-different-programming-languages-a64daac3ed64)

- [Why Julia](https://github.com/johnfgibson/whyjulia)

- [Seven lines of code in Julia](https://discourse.julialang.org/t/seven-lines-of-julia-examples-sought/50416?filter%3Dsummary)