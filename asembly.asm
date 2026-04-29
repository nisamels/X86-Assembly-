section .data
    cm: dd 10                
    inch: dd 0               
    msg_cm: db 'Centimeter: ', 0    
    msg_inch: db 'Inchi: ', 0       
    dot: db '.', 0          
    newline: db 0xA, 0      

section .text
    MOV EAX, msg_cm         
    INT 2                  
    MOV EAX, [cm]           
    INT 1                   
    MOV EAX, newline       
    INT 2                  

    MOV EAX, [cm]          
    MOV EBX, 3937           
    IMUL EBX               
    MOV EBX, 10000          
    IDIV EBX                

    MOV [inch], EAX        

    MOV EAX, msg_inch      
    INT 2                  

    MOV EAX, [inch]         
    INT 1                   

    MOV EAX, dot           
    INT 2                   

    MOV EAX, EDX            
    MOV EBX, 10            
    IMUL EBX                
    MOV EBX, 10000          
    IDIV EBX                 
    INT 1                  

    MOV EAX, newline        
    INT 2                  
    HLT                    

