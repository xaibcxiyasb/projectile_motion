program x_t_calculation
    implicit none
    
    real t
    real(8) x
    
    do t=0, 0.41, 0.001
        x=10*log((t+10)/10)
        open(unit=1, file='x.txt')
        write(1, *) x
    end do
end program x_t_calculation

