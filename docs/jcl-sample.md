# Referencia JCL

Ejemplo orientativo de como podria representarse el proceso en un entorno mainframe. La version local del proyecto se ejecuta con GnuCOBOL.

```jcl
//SALEJOB  JOB (ACCT),'SALES BATCH',CLASS=A,MSGCLASS=X
//STEP01   EXEC PGM=SALESBCH
//STEPLIB  DD DSN=COMPANY.COBOL.LOADLIB,DISP=SHR
//SALESIN  DD DSN=COMPANY.SALES.DAILY,DISP=SHR
//PRODIN   DD DSN=COMPANY.PRODUCT.MASTER,DISP=SHR
//CLEANOUT DD DSN=COMPANY.SALES.CLEAN,DISP=(NEW,CATLG,DELETE)
//ERROUT   DD DSN=COMPANY.SALES.ERRORS,DISP=(NEW,CATLG,DELETE)
//REPORT   DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
```

Pasos funcionales:

1. Carga del maestro de productos.
2. Lectura de ventas diarias.
3. Validacion de producto, cantidad, canal y fecha.
4. Escritura de ventas aceptadas, ventas rechazadas e informe de control.
