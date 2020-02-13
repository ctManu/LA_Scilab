clc;clear;
A=[0 0 0;0 0 0 ; 0 0 0]
b=[0;0;0]
A(1,1)=input("Enter a11:")    
A(1,2)=input("Enter a12:")
A(1,3)=input("Enter a13:")
A(2,1)=input("Enter a21:")
A(2,2)=input("Enter a22:")
A(2,3)=input("Enter a23:")
A(3,1)=input("Enter a31:")
A(3,2)=input("Enter a32:")
A(3,3)=input("Enter a33:")
b(1,1)=input("Enter b11:")
b(2,1)=input("Enter b21:")
b(3,1)=input("Enter b31:")

function[x]=Guassian(A,b)
    A_aug=[A b]
    a=A_aug
    n=3;
    for i=2:n
        for j=2: n+1
            a(i,j)=a(i,j)-a(1,j)*a(i,1)/a(1,1);
    end
    a (i,1)=0;
    end
    for i=3:n
        for j=3:n+1
            a(i, j)=a(i,j)-a(2,j) *a(i,2)/a (2,2);
        end
        a(i,2)=0;
    end
    x (n) =a (n, n+1)/a (n,n);for i=n-1:-1:1
        sumk=0;
          for k=i+1:n
            sumk=sumk+a (i, k) *x (k);
          end
     x(i)=(a(i,n+1)-sumk)/a(i,i);
    end
    
    
    disp (x,' The values of x,y,z are');
    
endfunction


