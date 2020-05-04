Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0558B1C3AE4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:06:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27AAC6606F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:06:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19D11661C5; Mon,  4 May 2020 13:06:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F251466052;
	Mon,  4 May 2020 12:55:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5128860B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4449766056; Mon,  4 May 2020 12:55:30 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 30DC560B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:21 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125420euoutp02b24704276c5160197238edc4c4f5aa22~L1G2EXtVG1833318333euoutp028
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125420euoutp02b24704276c5160197238edc4c4f5aa22~L1G2EXtVG1833318333euoutp028
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eucas1p259d8e02645d32e31dd06502636b01373~L1G1xK19p2427724277eucas1p22;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F9.12.60698.B7010BE5; Mon,  4
 May 2020 13:54:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125419eucas1p2de6a2146cc694e4fa8e9c11024447cc6~L1G1UKToi2250922509eucas1p28;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125419eusmtrp2239857300b7c46b27106b5e68e931f14~L1G1TcJ1N2826928269eusmtrp2W;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-58-5eb0107bf329
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6B.69.08375.B7010BE5; Mon,  4
 May 2020 13:54:19 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eusmtip23875c85a2a18c6a8af6c482be9c87e21~L1G0pFKZs0350403504eusmtip27;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:52 +0200
Message-Id: <20200504125359.5678-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUUQDGezO7s+OxNa2CL62EpZSkPDBqQpPUiIHClIjEyNp0UNNdt13P
 TDLNKHUrE/NIdEvN8tbWu/XWVSvTFFMyPCmMTPOs8Gin0frv977jffB4OCpQcY1xP0kQLZOI
 AoSYLqey/de7AxFEqaf127v2pKK7EyHLUku45HplIkr2L85g5IuCNoRUNtiRC/1jCFk+McAl
 v7W2A7KvNgMji1o/8cim2UkuOd/Vjh3jU4WZhYBSLyk5VNXSKJcaidcg1MucG9THtQmUShrM
 A1TdUBRG3VPlA2q+fDf1PWsac9Xz0LX3pgP8QmiZlcMlXd/Zz4mIdI0fllBRzo0C43pxQAeH
 xEG43DuAMiwgngMY/0YSB3S1vADgck8uhzXmARxqcd0spKc1oWwoD8AGzaONkLaxEHuaYYyw
 gXHTcRjDhkQsgB0KfaaAEmsITFpNRxjDgHCDU8vZPIY5xF7YeLPnr84njsLk2QLArpnCgtJG
 7RqO62j1NIU5cw8kuniw6fEUxmaOw9GMUg7LBvCrRsVjeSdcr8lC2EIMgGPdRTz2kABgX3Tq
 xoIdHO7+jTELKLEPltRasbIjTIxWAUaGxFY4OL2dkVEtPqxMQVmZD+/cFrBpM5iuKf4329Tz
 HmWZgon1kzz2sVoAVKx2ch4A0/T/Y0oA8oERHSwX+9ByWwkdaikXieXBEh9Lr0BxOdD+pddr
 msVqUL9yuRkQOBDq893nSzwFXFGIPFzcDCCOCg351be0Et9bFH6NlgVelAUH0PJmYIJzhEZ8
 26dTFwSEjyiI9qdpKS3bdBFcxzgKPClzj9w27B3Tle2tcCbGHaf1pSk+8da1BveDk9fVTmcM
 doT694Y4mG3JMN3VeM5izzOXn+5h7aHnvxwpLoowd1nJNHQ9oZyRjvzIzc9Rjjuoa/aPHToZ
 7hw1eiVjqcOlziS73qzCY3Fu8pSXa2RV24fDTm1WdtKYuVfqqxI39fWzdUKO3FdkY4HK5KI/
 ovJ1VkcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7rVAhviDDbcVbLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC3eHDnGaHF51xw2i7VH7rJbHPzwhNXi
 86ljbA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkPN7Nf8sWwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/Hh2USmgn+8FT1bN7E2MD7i7mLk5JAQMJGYNfMgcxcjF4eQwFJGiev79rNDJGQk
 Tk5rYIWwhSX+XOtigyj6xCjRdOUEI0iCTcBQoustREJEoJNRYlr3R3YQh1mghVli75t/bCBV
 wgL+Ej8/TmUBsVkEVCUONF5gArF5BWwlpn5YzQixQl5i9YYDQHdwcHACxWf2qoOEhQTyJe4+
 /ccygZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMBY2Xbs5+YdjJc2Bh9iFOBgVOLh
 jfi8Pk6INbGsuDL3EKMEB7OSCO+OFqAQb0piZVVqUX58UWlOavEhRlOgmyYyS4km5wPjOK8k
 3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6PU3alm7+OCHZfwsMTs
 a5rNtGdu7oR204pqu1ajR68naMctcQrbu3+78S891+s3rz9af2iKc6ho+JWcyd/Nz8w5sbDx
 xQJ5loVxnM425Vs4tt6ZHlDYZvd0e8n+kxFsG3Y81PF3/yd8+sjrV6EXMtkfVe5i2rjmrZzK
 tA9HLKJs37k9cTR54+ysxFKckWioxVxUnAgAVtyVu6sCAAA=
X-CMS-MailID: 20200504125419eucas1p2de6a2146cc694e4fa8e9c11024447cc6
X-Msg-Generator: CA
X-RootMTR: 20200504125419eucas1p2de6a2146cc694e4fa8e9c11024447cc6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125419eucas1p2de6a2146cc694e4fa8e9c11024447cc6
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125419eucas1p2de6a2146cc694e4fa8e9c11024447cc6@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 14/21] drm: vmwgfx: fix sg_table nents
 vs. orig_nents misuse
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jIHwgNiArKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jCmluZGV4IGJmMGJjNDYuLmE1
ZmQxMjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZm
ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKQEAg
LTM2Miw3ICszNjIsNyBAQCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVj
dCB2bXdfdHRtX3R0ICp2bXdfdHQpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5k
ZXZfcHJpdi0+ZGV2LT5kZXY7CiAKLQlkbWFfdW5tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2ws
IHZtd190dC0+c2d0Lm5lbnRzLAorCWRtYV91bm1hcF9zZyhkZXYsIHZtd190dC0+c2d0LnNnbCwg
dm13X3R0LT5zZ3Qub3JpZ19uZW50cywKIAkJRE1BX0JJRElSRUNUSU9OQUwpOwogCXZtd190dC0+
c2d0Lm5lbnRzID0gdm13X3R0LT5zZ3Qub3JpZ19uZW50czsKIH0KQEAgLTQ0OSwxMCArNDQ5LDEw
IEBAIHN0YXRpYyBpbnQgdm13X3R0bV9tYXBfZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2bXdfdHQp
CiAJCWlmICh1bmxpa2VseShyZXQgIT0gMCkpCiAJCQlnb3RvIG91dF9zZ19hbGxvY19mYWlsOwog
Ci0JCWlmICh2c2d0LT5udW1fcGFnZXMgPiB2bXdfdHQtPnNndC5uZW50cykgeworCQlpZiAodnNn
dC0+bnVtX3BhZ2VzID4gdm13X3R0LT5zZ3Qub3JpZ19uZW50cykgewogCQkJdWludDY0X3Qgb3Zl
cl9hbGxvYyA9CiAJCQkJc2dsX3NpemUgKiAodnNndC0+bnVtX3BhZ2VzIC0KLQkJCQkJICAgIHZt
d190dC0+c2d0Lm5lbnRzKTsKKwkJCQkJICAgIHZtd190dC0+c2d0Lm9yaWdfbmVudHMpOwogCiAJ
CQl0dG1fbWVtX2dsb2JhbF9mcmVlKGdsb2IsIG92ZXJfYWxsb2MpOwogCQkJdm13X3R0LT5zZ19h
bGxvY19zaXplIC09IG92ZXJfYWxsb2M7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
