class PhanSo
    attr_accessor :tu, :mau
    def initialize (tu,mau)
        @tu = tu
        @mau = mau
    end
    def UCLN(ts,ms)
        ts = ts.to_i.abs
        ms = ms.to_i.abs
        while ts != ms 
            if ts > ms 
                ts -= ms
            else
                ms -= ts
            end
        end
        ts
    end
    def rutGon()
        i = UCLN(@tu,@mau)
        @tu = @tu / i
        @mau = @mau / i
    end
    def + (other)
        ts = @tu * other.mau + other.tu * @mau
        ms = @mau * other.mau
        show(ts,ms)
    end
    def - (other)
        ts = @tu * other.mau - other.tu * @mau
        ms = @mau * other.mau
        show(ts,ms)
    end
    def * (other)
        ts = @tu * other.tu
        ms = @mau * other.mau
        show(ts,ms)
    end
    def / (other)
        ts = @tu * other.mau
        ms = @mau * other.tu
        show(ts,ms)
    end
    def show (ts,ms)
        ps = PhanSo.new(ts,ms)
        ps.rutGon
        ps.to_s
    end
    def to_s ()
        puts("#{@tu}/#{@mau}")
    end
end
p1 = PhanSo.new(1,2)
p2 = PhanSo.new(3,4)
p1 + p2
p1 - p2
p1 * p2
p1 / p2