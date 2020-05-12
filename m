Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1DC1CF1AB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:34:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C46C61957
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:34:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3EB63617CF; Tue, 12 May 2020 09:34:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B3A3664F9;
	Tue, 12 May 2020 09:06:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7643C664EC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B45F65F96; Tue, 12 May 2020 09:06:34 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B34C565F96
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:18 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117euoutp015035eba185d93d3f5f9e200ded8094a6~OPFqCSYE02637026370euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090117euoutp015035eba185d93d3f5f9e200ded8094a6~OPFqCSYE02637026370euoutp01E
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eucas1p1b54df08a47fba074693ed451d2e38367~OPFpsf5fF2840028400eucas1p1s;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C8.22.60679.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454~OPFpVWDZz1612616126eucas1p1d;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eusmtrp2474be8291d69938040754fdef0566948~OPFpUjSNO0472704727eusmtrp2F;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-a1-5eba65dd0b9e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 70.45.08375.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eusmtip14759e747705a1004eda1f60d54138496~OPFo1m7oq1352813528eusmtip1I;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:37 +0200
Message-Id: <20200512090058.14910-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djPc7p3U3fFGby4KGPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGV8/HCPveAKT8X/fw/ZGhhXc3UxcnJICJhIXNl4mrmLkYtD
 SGAFo8T2O7+ZIJwvjBKXH+5mA6kSEvjMKHH3qA1Mx7G7jxkh4ssZJZ5uUIBreD7xBFiCTcBQ
 outtF1iziEAro8SJXh6QImaBQ0wSW1qvsoAkhAXCJF62rGUFsVkEVCV2TWgAs3kF7CTunj/H
 BLFNXmL1hgPMIDYnUPz+/D8sIIMkBPaxSzxfuYsZoshF4uuyh2wQtrDEq+Nb2CFsGYn/O+cz
 QTQ0M0o8PLeWHcLpAXquaQYjRJW1xJ1zv4C6OYDu05RYv0sfIuwo0f5gHTtIWEKAT+LGW0GQ
 MDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeo0D4nHt94wQULrKKPEywkhExjlZyHsWsDI
 uIpRPLW0ODc9tdgoL7Vcrzgxt7g0L10vOT93EyMwHZ3+d/zLDsZdf5IOMQpwMCrx8BoY7IwT
 Yk0sK67MPcQowcGsJMLbkgkU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklqdmpq
 QWoRTJaJg1OqgVEp+eneuM23Vm3t3HAlKWDPjiMlKQe6Mz9MOBrQkqhuN9Wg4M3OurDXZxY4
 vv73Tlgh/O5+xV9ZsgFn2ftr1QPuf2fnqArrONDKGX14R+LO8EV8S4Wni6+ND5KVWDkv+rBm
 t4eqV/vqDeGTLf3jJH9UXrd88/546feYaWXmpjcSe1z1a+r21SmxFGckGmoxFxUnAgD003EC
 QwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7p3U3fFGby6yGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8/HCPveAKT8X/fw/ZGhhXc3UxcnJICJhIHLv7mLGLkYtDSGApo8SJTbvYIBIyEienNbBC
 2MISf651sUEUfWKU+Hj9J1gRm4ChRNdbiISIQCejxLTuj+wgDrPACSaJe3vnM4JUCQuESBye
 3wXWwSKgKrFrAsRYXgE7ibvnzzFBrJCXWL3hADOIzQkUvz//DwuILSRQKPHo6luWCYx8CxgZ
 VjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTGyLZjPzfvYLy0MfgQowAHoxIPb4fRzjgh1sSy
 4srcQ4wSHMxKIrwtmUAh3pTEyqrUovz4otKc1OJDjKZAR01klhJNzgfGb15JvKGpobmFpaG5
 sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbk26+SIpxMFWdFTJbfUXwnRbGu2C7E
 8uevg/y3b/GkebJ05c11f/a33qk70jjhiMv7C2yF8+YzKfGZPnMp33rv/5s35WviH/y+Oq0n
 I2MihxnbPgfvXUECeixSvzY+ttBd3hc3a80tectrOzIWr+g+/Pmt2sanebN7It2a1FjvvZkg
 uGG6Q40SS3FGoqEWc1FxIgDa6lWypwIAAA==
X-CMS-MailID: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
X-Msg-Generator: CA
X-RootMTR: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090117eucas1p1acf4ddfe65242d28eee247ab2ca21454@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 17/38] drm: omapdrm: use common helper
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
ZSAnW1BBVENIIHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9y
aWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZl
bC8yMDIwMDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMgfCAxNCArKysrLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9vbWFwZHJtL29tYXBfZ2VtLmMKaW5kZXggZDA4YWU5NS4uYzI1OTQxMSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
b21hcGRybS9vbWFwX2dlbS5jCkBAIC0xMjk3LDEwICsxMjk3LDkgQEAgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVf
dCBzaXplLAogCQlvbWFwX29iai0+ZG1hX2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7
CiAJfSBlbHNlIHsKIAkJLyogQ3JlYXRlIHBhZ2VzIGxpc3QgZnJvbSBzZ3QgKi8KLQkJc3RydWN0
IHNnX3BhZ2VfaXRlciBpdGVyOwogCQlzdHJ1Y3QgcGFnZSAqKnBhZ2VzOwogCQl1bnNpZ25lZCBp
bnQgbnBhZ2VzOwotCQl1bnNpZ25lZCBpbnQgaSA9IDA7CisJCXVuc2lnbmVkIGludCByZXQ7CiAK
IAkJbnBhZ2VzID0gRElWX1JPVU5EX1VQKHNpemUsIFBBR0VfU0laRSk7CiAJCXBhZ2VzID0ga2Nh
bGxvYyhucGFnZXMsIHNpemVvZigqcGFnZXMpLCBHRlBfS0VSTkVMKTsKQEAgLTEzMTEsMTQgKzEz
MTAsOSBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgc2l6ZV90IHNpemUsCiAJCX0KIAogCQlvbWFwX29iai0+cGFnZXMg
PSBwYWdlczsKLQotCQlmb3JfZWFjaF9zZ19wYWdlKHNndC0+c2dsLCAmaXRlciwgc2d0LT5vcmln
X25lbnRzLCAwKSB7Ci0JCQlwYWdlc1tpKytdID0gc2dfcGFnZV9pdGVyX3BhZ2UoJml0ZXIpOwot
CQkJaWYgKGkgPiBucGFnZXMpCi0JCQkJYnJlYWs7Ci0JCX0KLQotCQlpZiAoV0FSTl9PTihpICE9
IG5wYWdlcykpIHsKKwkJcmV0ID0gZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc2d0
LCBwYWdlcywgTlVMTCwKKwkJCQkJCSAgICAgICBucGFnZXMpOworCQlpZiAoV0FSTl9PTihyZXQp
KSB7CiAJCQlvbWFwX2dlbV9mcmVlX29iamVjdChvYmopOwogCQkJb2JqID0gRVJSX1BUUigtRU5P
TUVNKTsKIAkJCWdvdG8gZG9uZTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
