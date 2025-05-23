
  ___  ____  ____  ____  ____ ®
 /__    /   ____/   /   ____/      StataNow 18.5
___/   /   /___/   /   /___/       MP—Parallel Edition

 Statistics and Data Science       Copyright 1985-2023 StataCorp LLC
                                   StataCorp
                                   4905 Lakeway Drive
                                   College Station, Texas 77845 USA
                                   800-782-8272        https://www.stata.com
                                   979-696-4600        service@stata.com

Stata license: Unlimited-user 2-core network, expiring 15 Aug 2025
Serial number: 501809393750
  Licensed to: Pranish
               Gokhale Institute of Politics and economics

Notes:
      1. Unicode is supported; see help unicode_advice.
      2. More than 2 billion observations are allowed; see help obs_advice.
      3. Maximum number of variables is set to 5,000 but can be increased;
          see help set_maxvar.


. import delimited "C:\Users\Administrator\Downloa
> ds\data_income_consumption_gender.xlsx - Data Ta
> sk_Intern.csv"
(encoding automatically selected: UTF-8)
(3 vars, 961 obs)

. rename v1 income

. rename v2 consumption

. rename v3 gender

. reg income consumption gender

      Source |       SS           df       MS     
>  Number of obs   =       961
-------------+----------------------------------  
>  F(2, 958)       =    693.42
       Model |  1.9359e+13         2  9.6795e+12  
>  Prob > F        =    0.0000
    Residual |  1.3373e+13       958  1.3959e+10  
>  R-squared       =    0.5914
-------------+----------------------------------  
>  Adj R-squared   =    0.5906
       Total |  3.2732e+13       960  3.4096e+10  
>  Root MSE        =    1.2e+05

--------------------------------------------------
> ----------------------------
      income | Coefficient  Std. err.      t    P>
> |t|                                             
>         [95% con                                
>                 f. interval]
-------------+------------------------------------
> ----------------------------
 consumption |   .9959384   .0267697    37.20   0.
> 000                                             
>         .9434043                                
>                     1.048472
      gender |   249.4505   7643.095     0.03   0.
> 974                                             
>        -14749.69                                
>                     15248.59
       _cons |    18233.9   8366.133     2.18   0.
> 030                                             
>         1815.842                                
>                     34651.97
--------------------------------------------------
> ----------------------------

. reg consumption income

      Source |       SS           df       MS      Number of obs   =       961
-------------+----------------------------------   F(1, 959)       =   1388.29
       Model |  1.1542e+13         1  1.1542e+13   Prob > F        =    0.0000
    Residual |  7.9733e+12       959  8.3141e+09   R-squared       =    0.5914
-------------+----------------------------------   Adj R-squared   =    0.5910
       Total |  1.9516e+13       960  2.0329e+10   Root MSE        =     91182

------------------------------------------------------------------------------
 consumption | Coefficient  Std. err.      t    P>|t|     [95% conf. interval]
-------------+----------------------------------------------------------------
      income |   .5938327   .0159377    37.26   0.000      .562556    .6251094
       _cons |   87220.46   5049.883    17.27   0.000     77310.36    97130.55
------------------------------------------------------------------------------

. reg consumption income gender

      Source |       SS           df       MS      Number of obs   =       961
-------------+----------------------------------   F(2, 958)       =    694.27
       Model |  1.1548e+13         2  5.7741e+12   Prob > F        =    0.0000
    Residual |  7.9675e+12       958  8.3168e+09   R-squared       =    0.5917
-------------+----------------------------------   Adj R-squared   =    0.5909
       Total |  1.9516e+13       960  2.0329e+10   Root MSE        =     91196

------------------------------------------------------------------------------
 consumption | Coefficient  Std. err.      t    P>|t|     [95% conf. interval]
-------------+----------------------------------------------------------------
      income |   .5933809   .0159494    37.20   0.000     .5620811    .6246808
      gender |   4912.594    5897.43     0.83   0.405    -6660.778    16485.97
       _cons |   84734.81   5866.294    14.44   0.000     73222.54    96247.08
------------------------------------------------------------------------------

. estat hettest

Breusch–Pagan/Cook–Weisberg test for heteroskedasticity 
Assumption: Normal error terms
Variable: Fitted values of consumption

H0: Constant variance

    chi2(1) =   1.25
Prob > chi2 = 0.2641

. estate hottest
command estate is unrecognized
r(199);

. estat hottest
estat hottest not valid
r(321);

. 
. 
. estat hettest

Breusch–Pagan/Cook–Weisberg test for heteroskedasticity 
Assumption: Normal error terms
Variable: Fitted values of consumption

H0: Constant variance

    chi2(1) =   1.25
Prob > chi2 = 0.2641

. predict resid,resid

. New variable named resid
command New is unrecognized
r(199);

. ssc install swilk resid
varlist not allowed
r(101);

. ssc install swilk
ssc install: "swilk" not found at SSC, type search swilk
(To find all packages at SSC that start with s, type ssc describe s)
r(601);

. swilk resid

                   Shapiro–Wilk W test for normal data

    Variable |        Obs       W           V         z       Prob>z
-------------+------------------------------------------------------
       resid |        961    0.99776      1.365     0.769    0.22096

. estat ovtest

Ramsey RESET test for omitted variables
Omitted: Powers of fitted values of consumption

H0: Model has no omitted variables

F(3, 955) =   0.62
 Prob > F = 0.6042

 graph twoway (lfit consumption income) (scatter consumption income)
 
 reg income gender