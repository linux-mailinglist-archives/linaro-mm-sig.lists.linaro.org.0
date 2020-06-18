Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C58631FF813
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:52:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB7F866588
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:52:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DE73E66591; Thu, 18 Jun 2020 15:52:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72199665F7;
	Thu, 18 Jun 2020 15:41:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D027F6659B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C339E665AB; Thu, 18 Jun 2020 15:40:35 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5DAE96659D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024euoutp01e1e83c66c701aae22dd03264bd961635~ZrZsKEtnx1844818448euoutp015
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154024euoutp01e1e83c66c701aae22dd03264bd961635~ZrZsKEtnx1844818448euoutp015
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eucas1p27ac6880c80f767a4c13a753f5d3f6a03~ZrZrfKlwE2977729777eucas1p2I;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 04.1F.61286.7EA8BEE5; Thu, 18
 Jun 2020 16:40:23 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154023eucas1p15053efd9e4d2732b047d2a1cdda7eddb~ZrZrQOSGq1755717557eucas1p1J;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eusmtrp28e8199d49750ba15e98982b1a9adced8~ZrZrPp1Ou0370403704eusmtrp2i;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ce-5eeb8ae730ef
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7B.EE.08375.7EA8BEE5; Thu, 18
 Jun 2020 16:40:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154022eusmtip128b838702370ae92df6b090ae136508d~ZrZqngWRk0709107091eusmtip1t;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:35 +0200
Message-Id: <20200618153956.29558-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUgUYRjmm9mZnVW3ptXw0yRhQbEkzQob8MCiYDAoo4sirTWHVfJq1xsi
 STxa88pM0zyJzKu1ddPStFzUNRbNu/VCRTPMq/LINLRdR+3f8z4Hz/PjJVCBAjMn/AJDGEmg
 yF+IG3CqW/58PvRNNu11uKLTkUpq/4RQr7PkGLVRnYZSPUvzOFVS1oxQBR+cqMWeMYRSjPdh
 VHftM5yqaBrmUo0/JjBKnj+AuxnR5XnlgK5fLuDQNcujGD2SqEboquf36MH1cZRO1xYDuq4/
 GqeTlaWAVmtrEHpBsd/D8JqBsw/j7xfGSOxdbxr49uZm4MFZhhFzUyVoNIjlyQCPgOQxWFnf
 gciAASEgXwL4YuQnhz0WAZwoisPYYwHAlLY57nZkIiMGZ4ViAAemFfhOJH6wYdOFkw5QNivD
 9diEjAWwNclIb0JJFQKVsb0cvWBMXobJk4mYHnNIK9isXdkM8ElXmFPcwGHrLGFZ5UdUj3k6
 XqOO3dwEyQYuHFN+xVjTKVia3LcVMIbf1cqtrRZw410+wgZiABxrr+Cyx0MAu+9nAdblBIfa
 V3XVhG7fASivtWfpE/DxzDympyG5C2pn9+hpVAcfVWeiLM2HCXEC1m0Ns9WvdmobO7pQFtMw
 MbdmEwvINADTqn1SgWX2/64CAEqBKRMqDRAzUodAJtxOKgqQhgaK7W4FBSiA7pM06+pfb8FS
 l7cKkAQQGvHdrkx7CTBRmDQyQAUggQpN+CfbNF4Cvo8oMoqRBN2QhPozUhXYR3CEpvyjRVOe
 AlIsCmFuM0wwI9lWEYJnHg1yIqZD3/i5l66ehcr+/qi61NMXuNoZ0No9kmJXuLfT2hy1Whu0
 eF/o57r7iM2XqsrJv5mXele81+78Ho4ekh8fPjOa1dSSnr1q6yzim53XlFt2iQvkQ9fnrsa7
 e4nFXU/nS1wgMuHfUuiZ0Hf3iZnKlndxJtwxT2Ndcc7F4wFjI+RIfUUOB1GJVPQPY62EaUUD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7rPu17HGcz5pmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GVcnTuVrWAGd8W7lyuZGxhbObsYOTkkBEwknkxtZuti5OIQEljKKHGk9RgrREJG4uS0Bihb
 WOLPtS6ook+MEsfu9TODJNgEDCW63kIkRAQ6GSWmdX9kB3GYBU4wSdzbO58RpEpYIERi/q4m
 FhCbRUBV4uiNH2wgNq+AncTs5ftYIFbIS6zecABsKidQ/PTxVrDVQgK2Es8/tLFNYORbwMiw
 ilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzBGth37uXkH46WNwYcYBTgYlXh4X4S8jhNiTSwr
 rsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD4zevJN7Q1NDcwtLQ
 3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjXmy4grMT19/DZ1bcy2m0k3ugvebO
 3jyZd5u1JrPcdt4s3avfuFLpydH35auMFgckLYkx+rHowLMHahKibhPTmXYIu4grJZdEViee
 2WIqljTl5cGkiHbZCY4VqvkRSq8mJ/bp3lBc9mhlmd1O4TthBav+NmpnTy0+NGF1cfF6JcfY
 kMclkuxKLMUZiYZazEXFiQDejUClpwIAAA==
X-CMS-MailID: 20200618154023eucas1p15053efd9e4d2732b047d2a1cdda7eddb
X-Msg-Generator: CA
X-RootMTR: 20200618154023eucas1p15053efd9e4d2732b047d2a1cdda7eddb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154023eucas1p15053efd9e4d2732b047d2a1cdda7eddb
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154023eucas1p15053efd9e4d2732b047d2a1cdda7eddb@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 14/36] drm: omapdrm: use common helper
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
