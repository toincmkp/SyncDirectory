# -*- coding: sjis -*-

# ------------------------------------------------------------------------------------------
# SSSCreate(k, n, p, s)でvのリストを返す
# 作成できなかった場合リストの[0]に'-1'(文字列であることに注意)を入れたリストを返す
#
# SSSRestore(k, n, p, vrList)でvrListから得られた情報をもとにsを復元し、そのsを返す
# この時vrListの個数がk個足りない場合-1を返す、またk個を越える場合現状は後ろを削りk個にする
#
# vcList, vrListの書式：[Vi:V, …]
# ------------------------------------------------------------------------------------------

import sys
import random
import math


def qmod(a, b, p):
	flag = 0
	i = 1

	if b < 0:
		b = b * -1
		a = a * -1

	while flag != 1:
		if (b * i) % p == 1:
			flag = 1
			x = i

		i += 1

		if i == p:
			return -1

	ans = (a * x) % p

	return ans


def SSSCreate(k, n, p, s):

	vcList = []

	# ---初期値のチェック---
	# pは(n+1)より大きい素数
	if p < (n+1):
		print "error : p is not bigger than n!"
		vcList.append(str(-1))
		return vcList

	# s∈F_p
	if s >= p:
		print "error : s is not∈ F_p!"
		vcList.append(str(-1))
		return vcList

	# k < n
	if k > n:
		print "error : k is over n"
		vcList.append(str(-1))
		return vcList

	# 素数判定
	for i in range(2, int(math.ceil(math.sqrt(p)))):
		if (p % i) == 0:
			print "error : p is not prime number"
			print "%d * %d = %d" % (i, p/i, p)
			vcList.append(str(-1))
			return vcList


	# ---vの作成---
	v = []
	v.append(-1)

	keisu = []
	keisu.append(s)

	for i in range(k-1):
		keisu.append(random.randint(1, p-1))

	sum = 0
	for x in range(1, n+1):
		for j in range(k):
			sum = sum + keisu[j] * x**j

		v.append(sum % p)
		sum = 0

	for i in range(1, n+1):
		temp = []
		temp.append(str(i))
		temp.append(str(v[i]))
		temp = ":".join(temp)
		vcList.append(temp)

	return vcList


def SSSRestore(k, n, p, vrList):

	# vrListの個数がk個を満たしているかどうか
	if len(vrList) < k:
		print "vr List is not enough"
		return -1

	# vrListの個数がk個を越えている場合は、その中からk個にしぼる
	elif k < len(vrList):
		while len(vrList) != k:
			vrList.pop()

	temp = []

	for i in vrList:
		temp.append(i.split(":"))

	sum_s = 0
	for i in range(k):
		sum_temp = 1

		for j in temp:
			if temp[i][0] != j[0]:
				sum_temp *= qmod((-1 * int(j[0])), (int(temp[i][0]) - int(j[0])), p)

		sum_s += sum_temp * int(temp[i][1])

	s = sum_s % p

	return s


if __name__ == "__main__":

	# ---初期値の設定---
	k = 5		# 復元可能な人数
	n = 20		# 参加者の人数
	p = 9973	# (n+1)より大きい素数
	s = 13		# 秘密のデータ

	# vのリストの作成
	vcList = SSSCreate(k, n, p, s)

	# 集まったvのリストの作成からの復元
	vrList = []
	vrList.append(vcList[1])
	vrList.append(vcList[4])
	vrList.append(vcList[7])
	vrList.append(vcList[10])
	vrList.append(vcList[15])
	vrList.append(vcList[3])

	print "vcList =", vcList
	print ""
	print "vrList =", vrList

	sss = SSSRestore(k, n, p, vrList)

	print "sss =", sss
