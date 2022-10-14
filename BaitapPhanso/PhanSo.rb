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
def plus(phanso1,phanso2)
    ts = phanso1.tu * phanso2.mau + phanso2.tu * phanso1.mau
    ms = phanso1.mau * phanso2.mau
    PhanSo.new(ts,ms)
end
def sub(phanso1,phanso2)
    ts = phanso1.tu * phanso2.mau - phanso2.tu * phanso1.mau
    ms = phanso1.mau * phanso2.mau
    PhanSo.new(ts,ms)
end
def mul(phanso1,phanso2)
    ts = phanso1.tu * phanso2.tu
    ms = phanso1.mau * phanso2.mau
    PhanSo.new(ts,ms)
end
def div(phanso1,phanso2)
    ts = phanso1.tu * phanso2.mau
    ms = phanso1.mau * phanso2.tu
    PhanSo.new(ts,ms)
end
## Method
pp = plus(p1,p2)
pp.to_s
pp = sub(p1,p2)
pp.to_s
pp = mul(p1,p2)
pp.to_s
pp = div(p1,p2)
pp.to_s
## Overloading
p1 = PhanSo.new(1,2)
p2 = PhanSo.new(3,4)
p1 + p2
p1 - p2
p1 * p2
p1 / p2