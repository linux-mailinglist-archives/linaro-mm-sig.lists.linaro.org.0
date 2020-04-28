Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEFD1BBF71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:26:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BF1A617C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:26:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4D756618E2; Tue, 28 Apr 2020 13:26:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6526619EA;
	Tue, 28 Apr 2020 13:21:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7B268618B9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6DEA86199D; Tue, 28 Apr 2020 13:20:35 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 84E25618E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:28 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027euoutp02d3c7259235fccd67be3e0365ae14d73b~J-l8KWZqz2982129821euoutp02g
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132027euoutp02d3c7259235fccd67be3e0365ae14d73b~J-l8KWZqz2982129821euoutp02g
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132027eucas1p2bf7351c216129d4c3844011054e35b5f~J-l73ukUC2653326533eucas1p2H;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 25.26.60698.B9D28AE5; Tue, 28
 Apr 2020 14:20:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132027eucas1p2fed88e94fecf1ef12b312ba80a78bc00~J-l7dZiru2650126501eucas1p2Y;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027eusmtrp13880f99fd34b732752a5b54a4f362c78~J-l7ctbMv1743317433eusmtrp1y;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
X-AuditID: cbfec7f5-e577d9c00001ed1a-84-5ea82d9bfd7c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1D.96.08375.A9D28AE5; Tue, 28
 Apr 2020 14:20:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132026eusmtip2b28d73f748142c681ff6e519c2ace1cb~J-l61pT0f0625706257eusmtip2I;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:56 +0200
Message-Id: <20200428132005.21424-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUwTYRD167a7S6GyVBLGepAU0aABNPXHJihBY8L6S6J/xERg1RWQQ9MC
 CsRYDhE5lCMRKB6VWLmlgKkCKkfAgk0qEYKoeECBUAnBpFQDAkpZ0H9v3rw3bzIZEpN2imRk
 dHwCp4xnY+W4WGh4Pf/Wt9y3KmzvnUGg8819AlrXkEbQjaUNIjq96w1O/zEUYvSgfRanq2t7
 BHR5QbOA1rYH0HODowK6yTIkogda7+J0ffdngu78MS6i33y2EUGuTN39OsS8/KkVMiNDL3Dm
 2c9vIuZrrlHAND+6xnxatmBM8XAlYto+qHHm1tMaxNiatoc4nxIfOMfFRidxSv/ACHFU+7CF
 uDTmdkWjNSE1SnPNQU4kUPvBtDgpzEFiUkpVIejptIj4Yg7BUoYO8YUNgf7JfWzdclP9bM1S
 iaCoZQr9s+QtlK2qcGof5Mzk4A7sTl1H0Jvv4hBhlAGD8cpuwtHYRAXD2O3qVZGQ8oa6lt/I
 gSXUQejIXCb4OE+o1XesDnWiAkE3NoHz/BAB1veePD4CC7ZpxONN8N34dM27FUzFeaurApWB
 YNRcT/BFHoKB9NI1RwCMmBdWppIr6/lAQ6s/Tx+CyQd2gYMGaiMMz7g5aGwFFhlKMJ6WQHaW
 lFfvBI3xyb/Yzv53a9diYLLhBsEfqBDBwscyVIA8Nf/DtAjVIA8uURUXyakU8dxlPxUbp0qM
 j/Q7ezGuCa08lmnZaH+OXi2e6UIUieQuEr1LVZhUxCapkuO6EJCY3F0yFvU4TCo5xyancMqL
 4crEWE7VhbaQQrmHRFFhPS2lItkELobjLnHK9a6AdJKpkdwvQt/i3m/356jG426awMN22bxR
 b7Wnqm197aHVtEwjPUb6bB5XFLd6heR6lVZc2Bk+kcpOx2Rh2o9BOr9y7+AN80mKWe8vImvf
 DrRNe68kxbkNBhOuZp7sFacshdYMndg4+rDkuZfFPLt4vrpj6mhwdKFC1rtHnr3rlwsrF6qi
 2H27MaWK/QsHrceJVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qzdFfEGdxotLToPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZ+288Zi94JFgxa8FpxgbGRv4uRk4OCQETic6G7SxdjFwcQgJL
 GSUOr5vNDJGQkTg5rYEVwhaW+HOtiw2i6BOjxIrO8ywgCTYBQ4mutxAJEYFORolp3R/ZQRxm
 gQPMEt3nTzKBVAkLuEs86l/JBmKzCKhKrNn5mxHE5hWwlTjQ8o8dYoW8xOoNB8BWcwrYSSx9
 9BSongNona3E5ZbcCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTGz7ZjPzfvYLy0
 MfgQowAHoxIP7waeFXFCrIllxZW5hxglOJiVRHgfZSyLE+JNSaysSi3Kjy8qzUktPsRoCnTT
 RGYp0eR8YGznlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpglI+3
 Zz7etdi54PMp+41hRf+euGt4z9ZJzfj2jNeGv9JUyCtltsNGgaWdQut93358Pf2hHgf/4SAh
 z5Cfz/jVXZ6zJFhrslzhdClcvGVON1thRanohyt2Iv/8omv/TQsSOZIorCM3OVNXvFWXMe23
 88e27xV3T2Rc3hrNtCbhZNFq/qKLAb1KLMUZiYZazEXFiQDsidxMtQIAAA==
X-CMS-MailID: 20200428132027eucas1p2fed88e94fecf1ef12b312ba80a78bc00
X-Msg-Generator: CA
X-RootMTR: 20200428132027eucas1p2fed88e94fecf1ef12b312ba80a78bc00
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132027eucas1p2fed88e94fecf1ef12b312ba80a78bc00
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132027eucas1p2fed88e94fecf1ef12b312ba80a78bc00@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 08/17] drm: msm: fix sg_table nents vs.
	orig_nents misuse
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uYyAgIHwgOCArKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYyB8IDMg
KystCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dlbS5jCmluZGV4IDVhNmE3OWYuLjU0YzNiYmIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dl
bS5jCkBAIC01NCwxMCArNTQsMTAgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfZGV2aWNlKHN0cnVj
dCBtc21fZ2VtX29iamVjdCAqbXNtX29iaikKIAogCWlmIChnZXRfZG1hX29wcyhkZXYpICYmIElT
X0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewogCQlkbWFfc3luY19zZ19mb3JfZGV2aWNlKGRldiwg
bXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJ
T05BTCk7CisJCQltc21fb2JqLT5zZ3QtPm9yaWdfbmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsK
IAl9IGVsc2UgewogCQlkbWFfbWFwX3NnKGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21f
b2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQltc21fb2JqLT5zZ3QtPm9y
aWdfbmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKIAl9CiB9CiAKQEAgLTY3LDEwICs2NywxMCBA
QCBzdGF0aWMgdm9pZCBzeW5jX2Zvcl9jcHUoc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2Jq
KQogCiAJaWYgKGdldF9kbWFfb3BzKGRldikgJiYgSVNfRU5BQkxFRChDT05GSUdfQVJNNjQpKSB7
CiAJCWRtYV9zeW5jX3NnX2Zvcl9jcHUoZGV2LCBtc21fb2JqLT5zZ3QtPnNnbCwKLQkJCW1zbV9v
YmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJCW1zbV9vYmotPnNndC0+b3Jp
Z19uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOwogCX0gZWxzZSB7CiAJCWRtYV91bm1hcF9zZyhk
ZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElS
RUNUSU9OQUwpOworCQkJbXNtX29iai0+c2d0LT5vcmlnX25lbnRzLCBETUFfQklESVJFQ1RJT05B
TCk7CiAJfQogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5j
IGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYwppbmRleCBhZDU4Y2ZlLi5iMGNhMDg0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKQEAgLTQzLDcgKzQzLDggQEAgc3RhdGljIGludCBt
c21faW9tbXVfbWFwKHN0cnVjdCBtc21fbW11ICptbXUsIHVpbnQ2NF90IGlvdmEsCiAJc3RydWN0
IG1zbV9pb21tdSAqaW9tbXUgPSB0b19tc21faW9tbXUobW11KTsKIAlzaXplX3QgcmV0OwogCi0J
cmV0ID0gaW9tbXVfbWFwX3NnKGlvbW11LT5kb21haW4sIGlvdmEsIHNndC0+c2dsLCBzZ3QtPm5l
bnRzLCBwcm90KTsKKwlyZXQgPSBpb21tdV9tYXBfc2coaW9tbXUtPmRvbWFpbiwgaW92YSwgc2d0
LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCSAgIHByb3QpOwogCVdBUk5fT04oIXJldCk7CiAK
IAlyZXR1cm4gKHJldCA9PSBsZW4pID8gMCA6IC1FSU5WQUw7Ci0tIAoxLjkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
