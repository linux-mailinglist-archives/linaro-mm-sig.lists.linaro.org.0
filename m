Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A451BBF46
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:25:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A13C461951
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:25:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 942606199D; Tue, 28 Apr 2020 13:25:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E23B6619D5;
	Tue, 28 Apr 2020 13:21:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 947BE6181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 55F4061994; Tue, 28 Apr 2020 13:20:31 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 754C66181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132024euoutp016197e06ea97e5e03b15ba3618460f540~J-l5P1Ppg1886418864euoutp013
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132024euoutp016197e06ea97e5e03b15ba3618460f540~J-l5P1Ppg1886418864euoutp013
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132024eucas1p15062f4f48b3c3f63ba9f9384f7f36ae5~J-l46X3sQ3055730557eucas1p1U;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 41.C1.60679.89D28AE5; Tue, 28
 Apr 2020 14:20:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1~J-l4oC-4L3064530645eucas1p1J;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132023eusmtrp22df37bbd0b0862da59bf0f32ef70decb~J-l4nVy1g2140221402eusmtrp2E;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-8b-5ea82d98a24e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6A.D3.07950.79D28AE5; Tue, 28
 Apr 2020 14:20:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eusmtip25f9c33cb573d33ee412417a1847bd9a2~J-l3-P9IZ1062310623eusmtip2j;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:51 +0200
Message-Id: <20200428132005.21424-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeyyVYRzH95z3vBdy9HYoz1C207LUELK9jUwqe1f+KJva2sjBG+a686Lw
 R9LVcZnLzEnlUuSeO+WyjtNB2GguxyXKddJGmpOWjLxe9N/n930+v32fPXsIRKxEjYnA0AhG
 FioNlmC6woaOP32WCstir1PaTX0qubdLQBVW3sOpakUlSsWrujFqsyENoQZ//cCokrJ2AfUs
 tVZA5b13oLSDUwKqZkaDUgNNzzGqQj2BU23LsyjVPbGCO++ny3PKAd26miekxzUtGN24OonS
 XxM7BXRtwV3688YMQmeMFAG6eTQOo1PqSgG9UnPkyr4buo5+THBgFCOzdvLWDVBoqvHwDvKO
 IncUjwN9IjnQISB5GvaN9yFyoEuIyWIAu0rzUX7QAjiq7hFylphcAbC0x3t3I2+wH/BSEYCp
 8QXY3kZPfgbgLIy0gfJFOcaxIfkQwI/JepyEkA0InC1S43JAEAbkJVj/4RrnCMljsLWxdrtN
 RJ6FJQlDKN9mBsuqlAjHOqQTLJye2y6DpAaHWcMDO9IFOPt0Y4cN4PfOOpxnU7j5LlfAL9wH
 cKq3AueHJAAH4hWAtxzgeO8axt0IIS1gZZM1H5+DU9NKARdDUh+OLB7gYmQL0xuyED4WwSeP
 xLxtDrM73+zVtn3qR3im4cKLbCH/QGkADvcmYqnALPt/WR4ApcCIiWRD/BnWNpS5bcVKQ9jI
 UH8r37CQGrD1r3o2OrVvQdO6jwqQBJDoiar0ir3EqDSKjQ5RAUggEkPRdMBrL7HITxodw8jC
 bsoigxlWBUwIocRIZPdywVNM+ksjmCCGCWdku6cCQsc4DlS0z5c5xpmWszEWWlm676HglBzn
 pUzXuTXzseT6GbeSk4vuCjQh44t9/VKNabKLm+v5Zu+Ckgc+6ZWPTSwvz2vdf1pPZoZ9E71S
 mXgOBKT0XzSyfGrbkuS4/LdJbT5xy3tsSfO71u5w1+pVVfGZ9OMuQbEeR68PHVwXVyg9Yu3D
 1RIhGyC1OYHIWOk/+8puuVMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rTdVfEGVyYaGrRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyZlzbyF5wTKBixvyb7A2M53m7GDk5JARMJBZcucTYxcjFISSw
 lFFi6tmtbBAJGYmT0xpYIWxhiT/Xutggij4xSrQfbAUrYhMwlOh6C5EQEehklJjW/ZEdxGEW
 OMAs0X3+JFMXIweHsICXxNbDYSANLAKqEnu3b2YBsXkFbCVWdl6F2iAvsXrDAWYQm1PATmLp
 o6dsIK1CQDWXW3InMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERg924793LKDsetd
 8CFGAQ5GJR7eDTwr4oRYE8uKK3MPMUpwMCuJ8D7KWBYnxJuSWFmVWpQfX1Sak1p8iNEU6KaJ
 zFKiyfnAyM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cAY8rPw
 /4FVz0/nKckpOrm73znoVymZWXtxo9u+B4LbmfmZ7Xm7XXc5f0h8Hh+X9P6LhWGvgifjic4j
 vsmR3XpiJmlbAjtfKIbujZ/8ok7f5ePerCe+h/7kPzEq/SsbWCJ5MO+rq3KR16/dV2Vib3MX
 zqpszdW55KZ0cPui1qeT+LW5UxkOFCixFGckGmoxFxUnAgB/3dKrtAIAAA==
X-CMS-MailID: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
X-Msg-Generator: CA
X-RootMTR: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132023eucas1p1a894986ab95ac3208c19878c6a04c0e1@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 03/17] drm: armada: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2Fy
bWFkYV9nZW0uYyB8IDE0ICsrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm1h
ZGEvYXJtYWRhX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMKaW5k
ZXggOTc2Njg1Zi4uNzQ5NjQ3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9h
cm1hZGFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMKQEAg
LTQwNyw4ICs0MDcsMTAgQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQlzZ19zZXRfcGFnZShzZywgcGFnZSwgUEFHRV9T
SVpFLCAwKTsKIAkJfQogCi0JCWlmIChkbWFfbWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwg
c2d0LT5uZW50cywgZGlyKSA9PSAwKSB7Ci0JCQludW0gPSBzZ3QtPm5lbnRzOworCQlzZ3QtPm5l
bnRzID0gZG1hX21hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywK
KwkJCQkJZGlyKTsKKwkJaWYgKHNndC0+bmVudHMgPT0gMCkgeworCQkJbnVtID0gc2d0LT5vcmln
X25lbnRzOwogCQkJZ290byByZWxlYXNlOwogCQl9CiAJfSBlbHNlIGlmIChkb2JqLT5wYWdlKSB7
CkBAIC00MTgsNyArNDIwLDkgQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lvY3RsKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAKIAkJc2dfc2V0X3BhZ2Uoc2d0LT5zZ2wsIGRv
YmotPnBhZ2UsIGRvYmotPm9iai5zaXplLCAwKTsKIAotCQlpZiAoZG1hX21hcF9zZyhhdHRhY2gt
PmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcikgPT0gMCkKKwkJc2d0LT5uZW50cyA9IGRt
YV9tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJCQkJCWRp
cik7CisJCWlmIChzZ3QtPm5lbnRzID09IDApCiAJCQlnb3RvIGZyZWVfdGFibGU7CiAJfSBlbHNl
IGlmIChkb2JqLT5saW5lYXIpIHsKIAkJLyogU2luZ2xlIGNvbnRpZ3VvdXMgcGh5c2ljYWwgcmVn
aW9uIC0gbm8gc3RydWN0IHBhZ2UgKi8KQEAgLTQ0OSwxMSArNDUzLDExIEBAIHN0YXRpYyB2b2lk
IGFybWFkYV9nZW1fcHJpbWVfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2gsCiAJaW50IGk7CiAKIAlpZiAoIWRvYmotPmxpbmVhcikKLQkJZG1hX3VubWFwX3Nn
KGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyKTsKKwkJZG1hX3VubWFwX3Nn
KGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLCBkaXIpOwogCiAJaWYgKGRv
YmotPm9iai5maWxwKSB7CiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Ci0JCWZvcl9lYWNoX3Nn
KHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywgaSkKKwkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNn
LCBzZ3QtPm9yaWdfbmVudHMsIGkpCiAJCQlwdXRfcGFnZShzZ19wYWdlKHNnKSk7CiAJfQogCi0t
IAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
