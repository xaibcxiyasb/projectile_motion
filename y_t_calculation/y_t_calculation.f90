program y_t_calculation
    implicit none
    
    real(8) Vy, k1, k2, k3, k4, t_, y
    real t
    real, parameter:: h=0.00001    !定义迭代步长
    real, parameter:: eps=1.0E-3    !定义迭代的精度
    
    t_=0; Vy=2; y=0   !设定初值
    do t=0, 0.41, 0.001    !迭代
        do while(abs(t-t_)>=eps)
            k1=h*f(t_, Vy)
            k2=h*f(t_+h/2.0, Vy+k1/2.0)
            k3=h*f(t_+h/2.0, Vy+k2/2.0)
            k4=h*f(t_+h, Vy+k3)
            Vy=Vy+(k1+2.0*k2+2.0*k3+k4)/6.0
            t_=t_+h
            y=y+h*Vy
        end do
 
        !输出结果
        open(unit=1, file='solution.txt')
        write(1, *) t, Vy, y
        open(unit=2, file='t.txt')
        write(2, '(F5.3)') t
        open(unit=3, file='y.txt')
        write(3, *) y
    end do
    
contains
    function f(x, y)    !定义导函数
        real(8) f
        real(8) x, y
        f=-10-5*x**2
    end function

end program y_t_calculation

