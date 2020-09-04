Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 170FA25DA4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:47:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DA8F6675B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:47:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 30D5C66768; Fri,  4 Sep 2020 13:47:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D06B766773;
	Fri,  4 Sep 2020 13:36:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD09166744
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B043966752; Fri,  4 Sep 2020 13:35:15 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 28BD166746
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:03 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133502euoutp01086f86f9ba93ee0c7941789e0576270f~xmAfnbZWm0569905699euoutp01e
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133502euoutp01086f86f9ba93ee0c7941789e0576270f~xmAfnbZWm0569905699euoutp01e
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133501eucas1p29681af24cdf905bfac363202f9ab3415~xmAfPEI6l1447814478eucas1p2o;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B7.39.06318.582425F5; Fri,  4
 Sep 2020 14:35:01 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133501eucas1p27e474ceb366abd6c5070565abfc6ae21~xmAe3abe30593605936eucas1p2p;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133501eusmtrp26074756feaa5a81ed6778c01db1a8f4d~xmAe2r1et0977009770eusmtrp2K;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-a0-5f5242857798
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A5.A0.06017.582425F5; Fri,  4
 Sep 2020 14:35:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133501eusmtip15974690ea6539d6916dc94521461cfc8~xmAeVfoow1888418884eusmtip1T;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:54 +0200
Message-Id: <20200904131711.12950-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRj227nseFkcp+CXhYtZkkKamHDAy0z6cSqC8E8k5Fx5UMtN29TU
 iIY2LW+pBa4lOsqweb+b5h11lTQlrVZeymaSiql5oUK0bSfr3/M+F56Hj49A+A2YKxErS2Tk
 MkmcELdDW4d+jRxRhYaJjy4OBVB5hpccqkFdh1E7rYUINb6xjFO6qkEOpe0JoNbHZzhUo+kd
 Ro11lOBUzcAUl+pbmcWourKPeIgDXV1aDeiuTS1Kt21+xuhPOXoO3VR+k57YNiH0PWMFoJ9/
 UOJ0fnMloPXGNg691uh21j7cLjCKiYtNZuQ+wZF2MfPf7+MJffYpIz8fokqgs80GtgQkj8En
 wwWIBfPJpwCOT4dnAzszXgew4WsvYI81ADdajfhu4tZqCcYKFQBqfugwNm6O9PTILRgnfWH2
 UrY14EyqAHyR52AJIGQ/Bzar3qIWwYk8B6fUr6wmlDwEdzSzwIJ5ZDB8r5zD2DYBrKrvte6z
 NfMt6llrMyS7udBQpkVY0wl4p30aZbETXNA3c1m8H+60l3HYQAaAM4YaLnvkAjiWrgasKwBO
 Gn6bZxDmfZ6wrsOHpY9DXeeGlYbkHmhccrTQiBkWtRYjLM2DtzP5rNsDavS1/2r7Rt/8nUZD
 9bKay75WIYDrg+lIARBo/pdpAagELkySQhrNKPxkzDVvhUSqSJJFe1+KlzYC80ca3tZvPAPd
 Wxf7AUkAoQPPRhQm5mOSZEWqtB9AAhE680JfD0fweVGS1DRGHi+WJ8Uxin6wj0CFLjy/R/MX
 +GS0JJG5wjAJjHxX5RC2rkrQKfMZ0C1ObOXrTVKvB/6B56Nri0LDL6eUm+L2rmbVPA65MXJ1
 zTHyrkrQ0iUwVl2PiTjcPdXkmz63Ish1Fx3sNkYGaTz5xWeIU/rIQneHkx41hjTfA2hOZpQb
 LvqysOd0lrN/WcaKt5i/s6hTi2pnSycjvs1n5ufECur9bYJGhagiRuLrhcgVkj8GjqjHRAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7qtTkHxBgd+KFr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gt1s+/xebA
 47Fm3hpGj73fFrB4bP/2gNXjfvdxJo/NS+o9bv97zOwx+cZyRo/dNxvYPPq2rGL0OH5jO5PH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehkv301hKzjIXXH+x2yWBsaVnF2MnBwSAiYSLR/nsHYxcnEICSxllOjoOssIkZCRODmtgRXC
 Fpb4c62LDaLoE6PEiadzWUASbAKGEl1vIRIiAp2MEtO6P7KDOMwCJ5gk7u2dDzSKg0NYIFRi
 e7cBSAOLgKrE/1lPwDbwCthJXG94BrVBXmL1hgPMIDYnUHzrjCdgcSEBW4kPcxazTGDkW8DI
 sIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwQrYd+7llB2PXu+BDjAIcjEo8vAz2QfFCrIll
 xZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8YPTmlcQbmhqaW1ga
 mhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgZDkhUZElzsfLc9tWuKKd8dT92ax2
 Fm+/hBe6Xbb5/uRz6/EcMeN/f/6W1+QwN899kc7i1ZvEZe/2fnd139Uo07Ab21hqXm28+EQs
 dzJz59Inspu3FD0WDvyblVe/2KQnuzyUq/fi6zMnpwk4ziji7O/M4q7I+Zdx+/WxNXycjIFy
 KfNkJeWUWIozEg21mIuKEwF5FVkTpgIAAA==
X-CMS-MailID: 20200904133501eucas1p27e474ceb366abd6c5070565abfc6ae21
X-Msg-Generator: CA
X-RootMTR: 20200904133501eucas1p27e474ceb366abd6c5070565abfc6ae21
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133501eucas1p27e474ceb366abd6c5070565abfc6ae21
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133501eucas1p27e474ceb366abd6c5070565abfc6ae21@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 13/30] drm: omapdrm: use common helper
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
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogUm9iaW4gTXVycGh5IDxy
b2Jpbi5tdXJwaHlAYXJtLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dl
bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29t
YXBfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jCmluZGV4IGQwZDEy
ZDVkZDc2Yy4uZjY3ZjIyM2M2NDc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vb21hcGRy
bS9vbWFwX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKQEAg
LTEyOTcsMTAgKzEyOTcsOSBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19k
bWFidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc2l6ZV90IHNpemUsCiAJCW9tYXBfb2JqLT5k
bWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKIAl9IGVsc2UgewogCQkvKiBDcmVh
dGUgcGFnZXMgbGlzdCBmcm9tIHNndCAqLwotCQlzdHJ1Y3Qgc2dfcGFnZV9pdGVyIGl0ZXI7CiAJ
CXN0cnVjdCBwYWdlICoqcGFnZXM7CiAJCXVuc2lnbmVkIGludCBucGFnZXM7Ci0JCXVuc2lnbmVk
IGludCBpID0gMDsKKwkJdW5zaWduZWQgaW50IHJldDsKIAogCQlucGFnZXMgPSBESVZfUk9VTkRf
VVAoc2l6ZSwgUEFHRV9TSVpFKTsKIAkJcGFnZXMgPSBrY2FsbG9jKG5wYWdlcywgc2l6ZW9mKCpw
YWdlcyksIEdGUF9LRVJORUwpOwpAQCAtMTMxMSwxNCArMTMxMCw5IEBAIHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb21hcF9nZW1fbmV3X2RtYWJ1ZihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzaXpl
X3Qgc2l6ZSwKIAkJfQogCiAJCW9tYXBfb2JqLT5wYWdlcyA9IHBhZ2VzOwotCi0JCWZvcl9lYWNo
X3NnX3BhZ2Uoc2d0LT5zZ2wsICZpdGVyLCBzZ3QtPm9yaWdfbmVudHMsIDApIHsKLQkJCXBhZ2Vz
W2krK10gPSBzZ19wYWdlX2l0ZXJfcGFnZSgmaXRlcik7Ci0JCQlpZiAoaSA+IG5wYWdlcykKLQkJ
CQlicmVhazsKLQkJfQotCi0JCWlmIChXQVJOX09OKGkgIT0gbnBhZ2VzKSkgeworCQlyZXQgPSBk
cm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyhzZ3QsIHBhZ2VzLCBOVUxMLAorCQkJCQkJ
ICAgICAgIG5wYWdlcyk7CisJCWlmIChyZXQpIHsKIAkJCW9tYXBfZ2VtX2ZyZWVfb2JqZWN0KG9i
aik7CiAJCQlvYmogPSBFUlJfUFRSKC1FTk9NRU0pOwogCQkJZ290byBkb25lOwotLSAKMi4xNy4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
