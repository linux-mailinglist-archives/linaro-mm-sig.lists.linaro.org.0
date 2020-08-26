Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C7252786
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:40:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99050665AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:40:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8A650665CB; Wed, 26 Aug 2020 06:40:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 692EF665E9;
	Wed, 26 Aug 2020 06:36:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 31C0360749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 235FB6186A; Wed, 26 Aug 2020 06:35:36 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 20E9B617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:31 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063530euoutp02d198c360aba96beaaab5650545894a32~uven5kKEe1443214432euoutp02p
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063530euoutp02d198c360aba96beaaab5650545894a32~uven5kKEe1443214432euoutp02p
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063530eucas1p151753ef591c0baf0d38df8c6e74b012d~uvenoXLKX1803218032eucas1p1-;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 91.AD.05997.1B2064F5; Wed, 26
 Aug 2020 07:35:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61~uvenQGe6O0403504035eucas1p2l;
 Wed, 26 Aug 2020 06:35:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063529eusmtrp163a34829564d463bac5d5866e10a4d2f~uvenPT1lQ1091110911eusmtrp1G;
 Wed, 26 Aug 2020 06:35:29 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-b9-5f4602b13cfd
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 13.C0.06314.1B2064F5; Wed, 26
 Aug 2020 07:35:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063529eusmtip2d947f557f7d2c641d8e5eeab19bf2992~uvemtKYcw0302303023eusmtip2u;
 Wed, 26 Aug 2020 06:35:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:48 +0200
Message-Id: <20200826063316.23486-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7djPc7qbmNziDU42Mln0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszg0dS+jxdojd9ktDn54wurA
 47Fm3hpGj8vXLjJ77P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRXDYpqTmZZalF+nYJXBnfJ01gLzgvXnFn5jzmBsY9wl2MnBwSAiYSvzYtY+9i5OIQ
 EljBKHFqyXpGCOcLo0T/753MEM5nRom+bbfZYFr2LWtkg0gsZ5S4NvkcQsvE1bsYQarYBAwl
 ut52gXWICLQySpzo5QEpYhY4wCTR9u41E0hCWCBIYnn3O1YQm0VAVeLQ9W9gzbwCthIHJ01j
 hFgnL7F6wwFmEJtTwE7ieHc/2GoJgX3sEsem3WGBKHKRmP7/NVSDsMSr41vYIWwZidOTe1gg
 GpoZJR6eW8sO4fQwSlxumgHVYS1x59wvoLEcQPdpSqzfpQ8RdpS48/YMM0hYQoBP4sZbQZAw
 M5A5adt0qDCvREebEES1msSs4+vg1h68cIkZwvaQ2PuhGRrCExklln7YwDSBUX4WwrIFjIyr
 GMVTS4tz01OLjfJSy/WKE3OLS/PS9ZLzczcxApPS6X/Hv+xg3PUn6RCjAAejEg/vAjbXeCHW
 xLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1OzW1
 ILUIJsvEwSnVwNi46kBO9wTtsszAkBsfF7Qr81tebJ9d1t6wsTz8E3PoYw9tc8dntw0XlNw6
 8V5P4qW+XdO7VC8OkYjtvZufH7vqvG0X39+l2pPfRyoVH8zN2uph/7Jl4zzWNNOplWFTAk1s
 LmYu5ehcuOjpvD9z+eczV4Wss55m98poRXmjRZ3aZAET3kd9U5VYijMSDbWYi4oTAUd6ymhG
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7obmdziDeY/UrXoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DK+T5rAXnBevOLOzHnMDYx7hLsYOTkkBEwk9i1rZOti5OIQEljKKLF4/3JmiISMxMlpDawQ
 trDEn2tdUEWfGCWuvbzDCJJgEzCU6HoLkRAR6GSUmNb9kR3EYRY4xiSx8NdHFpAqYYEAia9f
 ZoCNYhFQlTh0/RtYN6+ArcTBSdMYIVbIS6zecABsNaeAncTx7n42EFsIqOb02hnMExj5FjAy
 rGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMkW3Hfm7ewXhpY/AhRgEORiUe3gVsrvFCrIll
 xZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8YPzmlcQbmhqaW1ga
 mhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpg5FjSVRipvniGslts4xw7uS6XS5+u
 vlub4f3z4fTWC8UeP7u+Wjx5eF/JfO+rBcpKtjEP9Wd2SnirdLlNYeNap/h5le5EpgnL57DI
 yrRv/GAg0fny2u0V75TtTGq0PTfFlf8xm7O+cO7lwAO1zlNnJ9pPMGKeaOl5T3L2PgvfXXsc
 W1n/rY0yUmIpzkg01GIuKk4EACbJ+oKnAgAA
X-CMS-MailID: 20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61
X-Msg-Generator: CA
X-RootMTR: 20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 04/32] drm: armada: fix common struct
 sg_table related issues
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2Fy
bWFkYV9nZW0uYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRh
L2FybWFkYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCmluZGV4
IDgwMDU2MTRkMmU2Yi4uYmVkZDg5MzdkOGExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YXJtYWRhL2FybWFkYV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9n
ZW0uYwpAQCAtMzk1LDcgKzM5NSw3IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCiAJCW1hcHBpbmcgPSBkb2JqLT5vYmou
ZmlscC0+Zl9tYXBwaW5nOwogCi0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgY291bnQsIGkp
IHsKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKSB7CiAJCQlzdHJ1Y3QgcGFnZSAq
cGFnZTsKIAogCQkJcGFnZSA9IHNobWVtX3JlYWRfbWFwcGluZ19wYWdlKG1hcHBpbmcsIGkpOwpA
QCAtNDA3LDggKzQwNyw4IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCQkJc2dfc2V0X3BhZ2Uoc2csIHBhZ2UsIFBBR0Vf
U0laRSwgMCk7CiAJCX0KIAotCQlpZiAoZG1hX21hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2ws
IHNndC0+bmVudHMsIGRpcikgPT0gMCkgewotCQkJbnVtID0gc2d0LT5uZW50czsKKwkJaWYgKGRt
YV9tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApKSB7CisJCQludW0gPSBjb3Vu
dDsKIAkJCWdvdG8gcmVsZWFzZTsKIAkJfQogCX0gZWxzZSBpZiAoZG9iai0+cGFnZSkgewpAQCAt
NDE4LDcgKzQxOCw3IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLAogCiAJCXNnX3NldF9wYWdlKHNndC0+c2dsLCBkb2JqLT5w
YWdlLCBkb2JqLT5vYmouc2l6ZSwgMCk7CiAKLQkJaWYgKGRtYV9tYXBfc2coYXR0YWNoLT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDApCisJCWlmIChkbWFfbWFwX3NndGFibGUo
YXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKIAkJCWdvdG8gZnJlZV90YWJsZTsKIAl9IGVsc2Ug
aWYgKGRvYmotPmxpbmVhcikgewogCQkvKiBTaW5nbGUgY29udGlndW91cyBwaHlzaWNhbCByZWdp
b24gLSBubyBzdHJ1Y3QgcGFnZSAqLwpAQCAtNDQ5LDExICs0NDksMTEgQEAgc3RhdGljIHZvaWQg
YXJtYWRhX2dlbV9wcmltZV91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCwKIAlpbnQgaTsKIAogCWlmICghZG9iai0+bGluZWFyKQotCQlkbWFfdW5tYXBfc2co
YXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOworCQlkbWFfdW5tYXBfc2d0
YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApOwogCiAJaWYgKGRvYmotPm9iai5maWxwKSB7
CiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Ci0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywg
c2d0LT5uZW50cywgaSkKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKQogCQkJcHV0
X3BhZ2Uoc2dfcGFnZShzZykpOwogCX0KIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
