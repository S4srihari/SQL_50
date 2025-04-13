class Solution:
    def countGoodNumbers(self, n: int) -> int:
        mod = (10**(9)) + 7
        res = 1
        even = (n+1)//2
        odd = n//2

        def quickmul(x: int, y: int) -> int:
            ret, mul = 1, x
            while y > 0:
                if y % 2 == 1:
                    ret = ret * mul % mod
                mul = mul * mul % mod
                y //= 2
            return ret

        return quickmul(5, even) * quickmul(4, odd) % mod