class Solution:
    def canPartition(self, nums: List[int]) -> bool:
        s = sum(nums)
        if s%2 == 1: return False
        half = s//2
        dp = [True] + [False]*half
        for num in nums:
            for i in range(half, num-1,-1):
                dp[i] = dp[i] or dp[i-num]
            if dp[-1] :return True

        return False 
