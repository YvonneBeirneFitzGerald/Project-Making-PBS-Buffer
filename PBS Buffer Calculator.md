<style>
.title {
    color: #ff0000;
    background: #ffffff;
    font-weight:bold;
    position: fixed;
    top: 1%;
    text-align:left;
    width:100%;
}
</style>


PBS Buffer Calculator
========================================================
transition: rotate
author: Yvonne Beirne FitzGerald
date: April 26, 2015




========================================================
transition: rotate
left: 40%


# <div class="title"style="margin-top:-50px;"> Use: Who & Why </div>

Who: 

Scientist working in laboratories 

***
# <div class="title"style="margin-top:-50px;">  </div>   
Why: 

- Need to make buffers at various stock concentrations and volumes

- Standardizes and makes dynamic the buffer receipe cookbook


========================================================
transition: rotate

# <div class="title"style="margin-top:-50px;"> How </div>


All inputs are on the left side panel.   
Getting your custom recipe is simple as 1, 2, 3....   

1. Select the stock concentration (X) need from the list
2. Select the volume (mL) of buffer needed
3. Click the submit button


========================================================
transition: rotate

# <div class="title"style="margin-top:-50px;"> Example Code </div>

 
- 8 gram of Sodium Cloride (NaCL) is the needed to make 1000 mL 1X Stock Buffer

- The calcualation right calculates how many grams of Sodium Chloride (NaCl) is needed to make 100 ml (Volume) of a 10 X Stock (Concentration)

- 8 / 1000 = the requirement of NaCl in the base receipe

***
# <div class="title"style="margin-top:-50px;">  </div>


```r
Conc= 10
mL = 100
concNaCl <- Conc*mL*8/1000
concNaCl
```

```
[1] 8
```



========================================================
transition: rotate
# <div class="title"style="margin-top:-50px;">Next Steps
</div>

- Create a dynamic receipe for each buffer in the lab
- Create an index page to link all the buffers to one URL


