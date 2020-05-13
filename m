Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB631D1674
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:50:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF63565F88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:50:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AFE4465FCD; Wed, 13 May 2020 13:50:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBAD366227;
	Wed, 13 May 2020 13:34:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 243A165F91
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 130FA65F92; Wed, 13 May 2020 13:34:32 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 550CB65F94
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:10 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133309euoutp0279758421e20d395f2b380521ff4abe77~OmcTusAJa3110131101euoutp02j
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133309euoutp0279758421e20d395f2b380521ff4abe77~OmcTusAJa3110131101euoutp02j
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133309eucas1p27c87b06c0c27ce4b8596ba1ae5b38578~OmcTYruNb2972029720eucas1p2y;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5B.C5.61286.517FBBE5; Wed, 13
 May 2020 14:33:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133308eucas1p248892466634483dfa3b23f11e4da0e68~OmcTGQsgp0359403594eucas1p2b;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133308eusmtrp1be8d0aac5e2020d489ea5187deff7e5a~OmcTFkiAE1049110491eusmtrp1R;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-53-5ebbf71590b3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1D.37.07950.417FBBE5; Wed, 13
 May 2020 14:33:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133308eusmtip17de24666b15bff0680978334a3b7af82~OmcSb531w0131701317eusmtip1D;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:24 +0200
Message-Id: <20200513133245.6408-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7djP87qi33fHGfxZy2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGV8PJVdcJWn4sxK1wbGNVxdjJwcEgImElc2b2XpYuTiEBJY
 wSix99kCJgjnC6PEjvU/mSGcz4wSB08fZeti5ABraWpkBekWEljOKPGhRwiu4ez2HywgCTYB
 Q4mut11sILaIQCujxIleHpAiZoFDTBJbWq+CFQkLhEkcnL0RrIhFQFXi0J+7TCA2r4CtxK17
 b9gh7pOXWL3hADOIzQkUf3VnPwtEfB+7xK5DChC2i8Tx3XtZIWxhiVfHt0D1ykicntwD9puE
 QDOjxMNza9khnB5GictNMxghqqwl7pz7BfYas4CmxPpd+hBhR4n5f6ayQHzMJ3HjrSBImBnI
 nLRtOjNEmFeio00IolpNYtbxdXBrD164xAxhe0j0nOmBBu9hYCD+2sI+gVF+FsKyBYyMqxjF
 U0uLc9NTiw3zUsv1ihNzi0vz0vWS83M3MQJT0el/xz/tYPx6KekQowAHoxIPr8Wt3XFCrIll
 xZW5hxglOJiVRHj91gOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xovehkrJJCeWJKanZpakFoE
 k2Xi4JRqYGSyjto0/+O66oDJpxg0mL8nzaw/0OyruvjvRm/LEyt+tBwUM+2IvLSocmfwh6tN
 IkekZhyUNN71pP2jmAGDjKD15qhF0pILHp4rNWLKMdfIu1uU7rKjN1lhB2fWrKLJx9LTfc7e
 YDgrqLq/X7H3xvUpH98wLLJfbSGjeeDlve1OuS437/w2ClJiKc5INNRiLipOBACZ16MhQQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIIsWRmVeSWpSXmKPExsVy+t/xu7oi33fHGXz+YmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8PJVdcJWn4sxK1wbGNVxdjBwcEgImEk2NrF2MXBxCAksZJVZ/7wByOIHiMhInpzVA2cIS
 f651sUEUfWKUmNy5kgkkwSZgKNH1FiIhItDJKDGt+yM7iMMscIJJ4t7e+YwgVcICIRLL185j
 B7FZBFQlDv25C9bNK2ArceveG3aIFfISqzccYAaxOYHir+7sZwGxhQTyJfYu3sc2gZFvASPD
 KkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMDo2Hbs55YdjF3vgg8xCnAwKvHwWtzaHSfEmlhW
 XJl7iFGCg1lJhNdvPVCINyWxsiq1KD++qDQntfgQoynQUROZpUST84GRm1cSb2hqaG5haWhu
 bG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgTFEfVVGiUJNudmZT/Z/hQujxe10Pz5K
 CFly9YPDpFX/+zYXRZj+c1j82eXgkZevcr0YlFw/Jl532q1p6/tj+Yfa5VLPK3MfLFimmiDI
 m9qu19K4renHuzRH4duz2OJWf72T7pV/f8KH4++4Pz/gWyJ+q39vVNmek89jXRIUX8z4eOvk
 hM9zXtcosRRnJBpqMRcVJwIA+OxVUqQCAAA=
X-CMS-MailID: 20200513133308eucas1p248892466634483dfa3b23f11e4da0e68
X-Msg-Generator: CA
X-RootMTR: 20200513133308eucas1p248892466634483dfa3b23f11e4da0e68
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133308eucas1p248892466634483dfa3b23f11e4da0e68
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133308eucas1p248892466634483dfa3b23f11e4da0e68@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 17/38] drm: omapdrm: use common helper
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
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNl
ZSAnW1BBVENIIHY1IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9y
aWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlv
bW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jIHwgMTQgKysrKy0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vb21hcGRybS9vbWFwX2dlbS5jCmluZGV4IGQwOGFlOTUuLmMyNTk0MTEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L29tYXBkcm0vb21hcF9nZW0uYwpAQCAtMTI5NywxMCArMTI5Nyw5IEBAIHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb21hcF9nZW1fbmV3X2RtYWJ1ZihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzaXpl
X3Qgc2l6ZSwKIAkJb21hcF9vYmotPmRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wp
OwogCX0gZWxzZSB7CiAJCS8qIENyZWF0ZSBwYWdlcyBsaXN0IGZyb20gc2d0ICovCi0JCXN0cnVj
dCBzZ19wYWdlX2l0ZXIgaXRlcjsKIAkJc3RydWN0IHBhZ2UgKipwYWdlczsKIAkJdW5zaWduZWQg
aW50IG5wYWdlczsKLQkJdW5zaWduZWQgaW50IGkgPSAwOworCQl1bnNpZ25lZCBpbnQgcmV0Owog
CiAJCW5wYWdlcyA9IERJVl9ST1VORF9VUChzaXplLCBQQUdFX1NJWkUpOwogCQlwYWdlcyA9IGtj
YWxsb2MobnBhZ2VzLCBzaXplb2YoKnBhZ2VzKSwgR0ZQX0tFUk5FTCk7CkBAIC0xMzExLDE0ICsx
MzEwLDkgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLAogCQl9CiAKIAkJb21hcF9vYmotPnBhZ2Vz
ID0gcGFnZXM7Ci0KLQkJZm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJml0ZXIsIHNndC0+b3Jp
Z19uZW50cywgMCkgewotCQkJcGFnZXNbaSsrXSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZpdGVyKTsK
LQkJCWlmIChpID4gbnBhZ2VzKQotCQkJCWJyZWFrOwotCQl9Ci0KLQkJaWYgKFdBUk5fT04oaSAh
PSBucGFnZXMpKSB7CisJCXJldCA9IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHNn
dCwgcGFnZXMsIE5VTEwsCisJCQkJCQkgICAgICAgbnBhZ2VzKTsKKwkJaWYgKFdBUk5fT04ocmV0
KSkgewogCQkJb21hcF9nZW1fZnJlZV9vYmplY3Qob2JqKTsKIAkJCW9iaiA9IEVSUl9QVFIoLUVO
T01FTSk7CiAJCQlnb3RvIGRvbmU7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
