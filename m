Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F020073B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:48:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C85AD665B0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:48:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BADD2665EE; Fri, 19 Jun 2020 10:48:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93952666C2;
	Fri, 19 Jun 2020 10:38:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AF596659C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7C50C665CF; Fri, 19 Jun 2020 10:37:14 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1689C665B6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703euoutp0105acaababfa2e7e2239e5eb812ae05f2~Z66HJmmVD1761017610euoutp01_
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103703euoutp0105acaababfa2e7e2239e5eb812ae05f2~Z66HJmmVD1761017610euoutp01_
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103702eucas1p2a4ea2cb07ee15416ef222bfbaf908415~Z66Gzqkzj1691016910eucas1p26;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C0.9C.06318.E459CEE5; Fri, 19
 Jun 2020 11:37:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965~Z66Gc0eoE2893928939eucas1p2Z;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103702eusmtrp16ab3ac15f7f96ffb9888f4c260be442f~Z66GcK19X0949709497eusmtrp1O;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-64-5eec954efd1a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1A.0B.06017.E459CEE5; Fri, 19
 Jun 2020 11:37:02 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103701eusmtip21cb30ea2d98fdfe12fd39a725f93e2fc~Z66F3gjN70302603026eusmtip2O;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:14 +0200
Message-Id: <20200619103636.11974-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7p+U9/EGdzptbToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArijuGxSUnMyy1KL9O0SuDKuzp3KVjCDu+Ldy5XMDYytnF2MnBwSAiYSrb3r2LoYuTiE
 BFYwSqxZ0c4I4XxhlJj79RkLhPOZUeLVnhWMMC1P1p1khkgsZ5RY23QboeXu5TVMIFVsAoYS
 XW+72EBsEYFWRokTvTwgRcwCh5gktrReZQFJCAuESUy/08wKYrMIqEo09WxgB7F5Bewkvv5f
 xAKxTl5i9YYDzCA2J1D8dctBVpBBEgL72CWetvwG2sYB5LhIbFxuDlEvLPHq+BZ2CFtG4vTk
 HhaI+mZGiYfn1rJDOD2MEpebZkA9ZC1x59wvNpBBzAKaEut36UOEHSV+L/zPCDGfT+LGW0GQ
 MDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwiRnC9pBY9KYDGowTgQG05RL7BEb5WQjLFjAy
 rmIUTy0tzk1PLTbOSy3XK07MLS7NS9dLzs/dxAhMSaf/Hf+6g3Hfn6RDjAIcjEo8vC9CXscJ
 sSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjNAeLkjiv8aKXsUIC6Yklqdmp
 qQWpRTBZJg5OqQbGtNZfORMm8S+PeaDmLzKLOWRTsW1iV73hxm8yrxcnPWSTbBcy7PH/H37A
 K3JmzofMPxyTCq5xNm3Nvjftvl8l79FFMhHnv3F7BT78cNvxo1/7kunSetd6ghZdfpyx8BaH
 ztedLbVnO+J2pm3aEj2l4uXSzprWDyUPfq76fipmrVHSRb+JNgFiSizFGYmGWsxFxYkAb7kS
 2EUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7p+U9/EGXxfoGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GVcnTuVrWAGd8W7lyuZGxhbObsYOTkkBEwknqw7ydzFyMUhJLCUUeJHx1xmiISMxMlpDawQ
 trDEn2tdbBBFnxgl+uYuZQJJsAkYSnS9hUiICHQySkzr/sgO4jALnGCSuLd3PiNIlbBAiMSW
 x4vBRrEIqEo09WxgB7F5Bewkvv5fxAKxQl5i9YYDYKs5geKvWw6C1QsJ2EosX/CeeQIj3wJG
 hlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBMbLt2M8tOxi73gUfYhTgYFTi4X0R8jpOiDWx
 rLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zfvJJ4Q1NDcwtL
 Q3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjPMFr3nf633xf+79NT9kAvh1Dl2c
 73r5z5+vbl231liuvlxcMXvBdCunD7FLetPU+FdLTJ9RqLnHtuoYjwDL5G67PPFL/sdWqCb/
 XZY4NdhR6jJfhDN7bnmLsHkmj+O2ssdR7GIPRUXWarJcV9gpqFrpmTCRYdeivqLnwVKvpU61
 dP1eqn/tthJLcUaioRZzUXEiAJKyk3enAgAA
X-CMS-MailID: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
X-Msg-Generator: CA
X-RootMTR: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103702eucas1p207b9cacc7460a334a0eda58c2b60a965@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 14/36] drm: omapdrm: use common helper
 for extracting pages array
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNvbnZlcnRpbmcgYSBzZ190YWJsZSBvYmplY3QgaW50byBz
dHJ1Y3QKcGFnZSBwb2ludGVyIGFycmF5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3Nr
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJt
L29tYXBfZ2VtLmMgfCAxNCArKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29t
YXBkcm0vb21hcF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKaW5k
ZXggZDBkMTJkNWRkNzZjLi5mZjBjNGIwYzNmZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9vbWFwZHJtL29tYXBfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9n
ZW0uYwpAQCAtMTI5NywxMCArMTI5Nyw5IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb21hcF9n
ZW1fbmV3X2RtYWJ1ZihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwKIAkJb21h
cF9vYmotPmRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwogCX0gZWxzZSB7CiAJ
CS8qIENyZWF0ZSBwYWdlcyBsaXN0IGZyb20gc2d0ICovCi0JCXN0cnVjdCBzZ19wYWdlX2l0ZXIg
aXRlcjsKIAkJc3RydWN0IHBhZ2UgKipwYWdlczsKIAkJdW5zaWduZWQgaW50IG5wYWdlczsKLQkJ
dW5zaWduZWQgaW50IGkgPSAwOworCQl1bnNpZ25lZCBpbnQgcmV0OwogCiAJCW5wYWdlcyA9IERJ
Vl9ST1VORF9VUChzaXplLCBQQUdFX1NJWkUpOwogCQlwYWdlcyA9IGtjYWxsb2MobnBhZ2VzLCBz
aXplb2YoKnBhZ2VzKSwgR0ZQX0tFUk5FTCk7CkBAIC0xMzExLDE0ICsxMzEwLDkgQEAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHNpemVfdCBzaXplLAogCQl9CiAKIAkJb21hcF9vYmotPnBhZ2VzID0gcGFnZXM7Ci0KLQkJ
Zm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJml0ZXIsIHNndC0+b3JpZ19uZW50cywgMCkgewot
CQkJcGFnZXNbaSsrXSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZpdGVyKTsKLQkJCWlmIChpID4gbnBh
Z2VzKQotCQkJCWJyZWFrOwotCQl9Ci0KLQkJaWYgKFdBUk5fT04oaSAhPSBucGFnZXMpKSB7CisJ
CXJldCA9IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHNndCwgcGFnZXMsIE5VTEws
CisJCQkJCQkgICAgICAgbnBhZ2VzKTsKKwkJaWYgKFdBUk5fT04ocmV0KSkgewogCQkJb21hcF9n
ZW1fZnJlZV9vYmplY3Qob2JqKTsKIAkJCW9iaiA9IEVSUl9QVFIoLUVOT01FTSk7CiAJCQlnb3Rv
IGRvbmU7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
