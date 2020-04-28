Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 480D41BBF76
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:27:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A5866198D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:27:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5BA186199D; Tue, 28 Apr 2020 13:27:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B36262BBE;
	Tue, 28 Apr 2020 13:21:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BB971618E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6015618F1; Tue, 28 Apr 2020 13:20:35 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 37ECA618F1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:29 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132028euoutp012268f6db8dee6f9c77855f83e2bd805b~J-l80Gvps1886118861euoutp01-
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132028euoutp012268f6db8dee6f9c77855f83e2bd805b~J-l80Gvps1886118861euoutp01-
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eucas1p1dee8e65442d128c6217e586827484277~J-l8hUjaz3055730557eucas1p1Y;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 95.C1.60679.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7~J-l8BOAzr3057830578eucas1p1Q;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027eusmtrp1b8816ccb4cde4d447caa4a031d06fa5b~J-l8AjGCn1743317433eusmtrp1z;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-9a-5ea82d9c9b9d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7E.96.08375.B9D28AE5; Tue, 28
 Apr 2020 14:20:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132026eusmtip2dabf1824e2aabc8f7023ced4cd9531a2~J-l7ZkcxN1116911169eusmtip2W;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:57 +0200
Message-Id: <20200428132005.21424-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURiGO3PnLjM6dhslDyYZAwoFbil0yRKTgvvDIvwVQdakN8d0RplR
 U6NyydJxHcUFc0M0x91cJnEpNcstzFKGEfc1Ms1IUxSXZrya/973/Z7ve+FwCETYjloQfrJg
 Ri4TB4gwPlfzafOLba6t2suhLAalkgZ6OVRJTRROvcmuQanozj6M2tOoEGr47wpGlVV85FCv
 Uus5VOF7F2pteJpD1c1qUWqoORejqrrGcarj9xxK9Y2v4m7H6cr8SkC3rRdy6TFtK0a/XZ9C
 6cmEbg5dX/yMHt2dReh0XSmgW0YiMTq5oRzQq3Wnbxrd5l/yYQL8Qhm5ves9viSzdx4EqU3C
 vi5s4JFgz0gJeAQkneHieBSiBHxCSKoBjNqe5LBmDcCMguQDswpgQtQA53ClcWsaZQelAC53
 rR+tjDb2cA0URjpC5bISM2gzMhbAniRjA4SQGgTOlXbhhoEp6QH/ZKbsay5pDRvzpvYXBKQr
 3JnRcdk6K1hR244YNE+fl8zMY4ZDkNTicGSyWm8IvbkKNTNyljeFi90NOKstYX96IpflYwCc
 HqjCWZMI4FB0NmApFzg2sLV/CCHPwppmeza+AjPylgB73wTqlk8YYkQv0zRZCBsLYNwLIUvb
 wJzu6v+1HYPfDhAaTrfeYN9HBeBEQR6aCqxyjroKASgH5kyIQurLKM7LmEd2CrFUESLztfMO
 lNYB/b/q3+1eawLN2/c7AUkAkbGg1ljtJUTFoYpwaSeABCIyE8xIXnsJBT7i8AhGHnhXHhLA
 KDrBKYIrMhc4Ff24IyR9xcGMP8MEMfLDKYfgWUSC0iVt/Zr1rV91J9MdzLKafFY9mmSh3+Mu
 VlekTBAC/89TEsyhqMKm0HRe/cHpulJs9GQnbbQFz47oi7d0K3Z/Hqudr35X7v3YXrrZ5q96
 +cM1RSpxc1dJHvQEXru88nBQu3FmOTYFOsc3e+b/tNV1eK7w+p2PrSyAIezC0zLvMBFXIRE7
 nkPkCvE/gk01dlMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qzdVfEGUx7rGDRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQypp18yliwgq/i4rPv7A2M/7m7GDk5JARMJLb+esjaxcjFISSw
 lFFi++v3TBAJGYmT0xpYIWxhiT/Xutggij4xSsx9v4sFJMEmYCjR9RYiISLQySgxrfsjO4jD
 LHCAWaL7/EmwUcICPhKfpvWzg9gsAqoSW+c+YAOxeQXsJP4+usECsUJeYvWGA8wgNidQfOmj
 p0A1HEDrbCUut+ROYORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzB+th37uXkH46WN
 wYcYBTgYlXh4N/CsiBNiTSwrrsw9xCjBwawkwvsoY1mcEG9KYmVValF+fFFpTmrxIUZToJsm
 MkuJJucDYzuvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjmO+h
 vMNHf57kjn+/XGGxnQpbEr+mvF31zfqj08TfLP+ka3fAz139+Kxl++dyXv3zIS/ngkNi6u/z
 E5UuM+gdPF+7eNaE7jPP5u6zOWw7izVLyl7nQZhcf+ANq5RTcm8iYrfJ+UsXapvrfXSbdldV
 sGs+0/NjKn56S9bKTZiyL+HCtiJxwcN3lViKMxINtZiLihMBY2oseLUCAAA=
X-CMS-MailID: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
X-Msg-Generator: CA
X-RootMTR: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 09/17] drm: panfrost: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3Qv
cGFuZnJvc3RfZ2VtLmMgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0
X21tdS5jIHwgNCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rf
Z2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKaW5kZXggMTdi
NjU0ZS4uMjJmZWM3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZy
b3N0X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYwpA
QCAtNDIsNyArNDIsOCBAQCBzdGF0aWMgdm9pZCBwYW5mcm9zdF9nZW1fZnJlZV9vYmplY3Qoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCWZvciAoaSA9IDA7IGkgPCBuX3NndDsgaSsrKSB7
CiAJCQlpZiAoYm8tPnNndHNbaV0uc2dsKSB7CiAJCQkJZG1hX3VubWFwX3NnKHBmZGV2LT5kZXYs
IGJvLT5zZ3RzW2ldLnNnbCwKLQkJCQkJICAgICBiby0+c2d0c1tpXS5uZW50cywgRE1BX0JJRElS
RUNUSU9OQUwpOworCQkJCQkgICAgIGJvLT5zZ3RzW2ldLm9yaWdfbmVudHMsCisJCQkJCSAgICAg
RE1BX0JJRElSRUNUSU9OQUwpOwogCQkJCXNnX2ZyZWVfdGFibGUoJmJvLT5zZ3RzW2ldKTsKIAkJ
CX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21t
dS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCmluZGV4IGVkMjhh
ZWIuLjJkOWIxZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9z
dF9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMKQEAg
LTUxNyw3ICs1MTcsOSBAQCBzdGF0aWMgaW50IHBhbmZyb3N0X21tdV9tYXBfZmF1bHRfYWRkcihz
dHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldiwgaW50IGFzLAogCWlmIChyZXQpCiAJCWdvdG8g
ZXJyX3BhZ2VzOwogCi0JaWYgKCFkbWFfbWFwX3NnKHBmZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3Qt
Pm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCkpIHsKKwlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZyhw
ZmRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAorCQkJCURNQV9CSURJUkVDVElP
TkFMKTsKKwlpZiAoIXNndC0+bmVudHMpIHsKIAkJcmV0ID0gLUVJTlZBTDsKIAkJZ290byBlcnJf
bWFwOwogCX0KLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
