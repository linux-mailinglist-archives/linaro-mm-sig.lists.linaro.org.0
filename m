Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 032901C3A9A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 14:57:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E66666169
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 12:57:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0CE856618A; Mon,  4 May 2020 12:57:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DD71619C1;
	Mon,  4 May 2020 12:54:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C3A4361992
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B3C1366055; Mon,  4 May 2020 12:54:18 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id D0D2D619C1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:13 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125413euoutp01363bb295bcdf93596d85bb20e6120e0b~L1GvQUlck2860028600euoutp01k
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125413euoutp01363bb295bcdf93596d85bb20e6120e0b~L1GvQUlck2860028600euoutp01k
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412eucas1p14c9a533433ce915e288a960b880d3fd7~L1GuxxnZU0159401594eucas1p1x;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 53.12.60698.47010BE5; Mon,  4
 May 2020 13:54:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0~L1GuaZfff2246922469eucas1p2c;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412eusmtrp1b440a81df43aafbd62abc5eb12095fc8~L1GuZc1Ua2497724977eusmtrp1U;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-44-5eb010743d0d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B3.06.07950.47010BE5; Mon,  4
 May 2020 13:54:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125411eusmtip2951048608315bac83b0939c8772239f8~L1Gtnq0EO0350103501eusmtip20;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:42 +0200
Message-Id: <20200504125359.5678-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUgUURzvzezsjuLmtAo+PBIXOsU7ZEjTRD9MhNGBIIHmlpOK947rFZRr
 Xq26mhYepZhEmkfrlZmWx5raolieaGlqlqUgJR5lm5bTqH37ne8Hfx6OiroxYzwoLIqWhklC
 xHxdXmP3+hurKKLG17Z13YLM7NcgZG2+CiNzXowj5J/G2yg5vPqNTzbnTwjIx5VdCFnS5kRO
 F22ZK8MzCPkzrxgh62ZHMXKo+T6frH41KSA7vn/CTupTVcVVgBoaHUCpl2slPOp54aSAerY2
 jVFT6T0IVf/wBvV+cxalcsfKANUynsCnsjZsKWVDBaCW6/afFV7UdfanQ4KiaamNi59u4K3c
 4IgHhrFTIxosAaTvUwAdHBLHYLe8CFEAXVxElAM4vyQHHFkB8HNbO48jywCObI4hO5XyibsY
 i0VEGYCpcmy30Zc2y2MNPmEHFYsKPosNiWQAX2fqsSGUUKOwtqUcsIYBcR6WpdwRKACO84gD
 UKGyZ2Uh4Qy/KDWAGzOHlTXtKBvRIU7AgsxD7DOQ+CiAj7KX+VzGAw7UtmznDeBCT4OAw6aw
 NzeDxxVuAjjTXy3gSAaAQ4n52w0nONH/i88uoMQRqGq24WQ3+LS/FbAyJPbCscV/90K3YE5j
 HsrJQpiWIuLSB2Fhz5Pd2Y63g9sRCo4pvbjzdAKoTd0QZAPzwv9bJQBUACNaxoQG0IxDGB1j
 zUhCGVlYgPWV8NA6sPW7ejd7VptA6+/LakDgQKwn9F5W+YowSTQTF6oGEEfFhsKmpC1J6C+J
 i6el4ZekshCaUQMTnCc2EjqUzvuIiABJFB1M0xG0dMdFcB3jBHAKqAKNnFxWve3PmVpSenMX
 OgcSPwRV99VrGc/YMx2N0PWwzKQ5wvF0gTLZc0K7Z3WxXi4ueNeNyGYRH/X6nLV+qUSL6t2L
 cb9qZvn1mrzUUf96qcZNW+Y6GD8Z7mEWuWTi5a8J6kpJyVLaukda2VpE+1f4JR1f+JE8qqMp
 XBPzmECJ3VFUykj+AmX0RJ5ZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xe7olAhviDLZ2sVn0njvJZLFxxnpW
 i0l7bjJZ/N82kdniytf3bBa7Ztxht1i5+iiTxYL91hYP5gIlv1x5yGTxY/o8JotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg91gzbw2jx+VrF5k99n5bwOKxc9Zddo/t3x6wetzvPs7ksXlJvcft
 f4+ZPSbfWM7osftmA5tH/18Dj74tqxg9Pm+SC+CN0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAz
 MrHUMzQ2j7UyMlXSt7NJSc3JLEst0rdL0MvonJxdsFCk4v7Vk6wNjN2CXYycHBICJhIr7kxl
 7WLk4hASWMooceD5RHaIhIzEyWkNrBC2sMSfa11sEEWfGCX2/G5kAkmwCRhKdL2FSIgIdDJK
 TOv+yA7iMAucYpbYsHs+WJWwQIDE0XMHmbsYOThYBFQlutYbgYR5BWwknvedZITYIC+xesMB
 sBJOAVuJmb3qIGEhgXyJu0//sUxg5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMJq2
 Hfu5ZQdj17vgQ4wCHIxKPLwbvq6PE2JNLCuuzD3EKMHBrCTCu6MFKMSbklhZlVqUH19UmpNa
 fIjRFOikicxSosn5wEjPK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TB
 KdXAyKd+Oj3TMXn5vKiXRxL/39b56VbempD5eh3P7f7AtKTvd77d1H85Z5rYprWr7n9+dUTZ
 Zeey8G3v9uVuvhSqdePzxjVVjAYG57cKz7fk0NzK17bK8ryRygmf8DULFqb9P3i+qrHus8Hc
 Z1W71vyS409oa+9btXHq/S2N8YtdXE1/7ZSa8yHaaZUSS3FGoqEWc1FxIgBZbF/WvAIAAA==
X-CMS-MailID: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
X-Msg-Generator: CA
X-RootMTR: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125412eucas1p263f2029c4fd299db92b365d7b66316a0@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, etnaviv@lists.freedesktop.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 04/21] drm: etnaviv: fix sg_table nents
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYyB8IDEwICsrKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKaW5kZXggZGM5ZWYzMC4uYTIyNGE5NyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC0yNyw3ICsyNyw4IEBAIHN0YXRp
YyB2b2lkIGV0bmF2aXZfZ2VtX3NjYXR0ZXJfbWFwKHN0cnVjdCBldG5hdml2X2dlbV9vYmplY3Qg
KmV0bmF2aXZfb2JqKQogCSAqIGJlY2F1c2UgZGlzcGxheSBjb250cm9sbGVyLCBHUFUsIGV0Yy4g
YXJlIG5vdCBjb2hlcmVudC4KIAkgKi8KIAlpZiAoZXRuYXZpdl9vYmotPmZsYWdzICYgRVROQV9C
T19DQUNIRV9NQVNLKQotCQlkbWFfbWFwX3NnKGRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50
cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZyhkZXYtPmRl
diwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCQkJRE1BX0JJRElSRUNUSU9OQUwpOwog
fQogCiBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9zY2F0dGVybGlzdF91bm1hcChzdHJ1Y3QgZXRu
YXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iaikKQEAgLTUxLDcgKzUyLDggQEAgc3RhdGljIHZv
aWQgZXRuYXZpdl9nZW1fc2NhdHRlcmxpc3RfdW5tYXAoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVj
dCAqZXRuYXZpdl9vYmoKIAkgKiBkaXNjYXJkIHRob3NlIHdyaXRlcy4KIAkgKi8KIAlpZiAoZXRu
YXZpdl9vYmotPmZsYWdzICYgRVROQV9CT19DQUNIRV9NQVNLKQotCQlkbWFfdW5tYXBfc2coZGV2
LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV91
bm1hcF9zZyhkZXYtPmRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCSAgICAgRE1B
X0JJRElSRUNUSU9OQUwpOwogfQogCiAvKiBjYWxsZWQgd2l0aCBldG5hdml2X29iai0+bG9jayBo
ZWxkICovCkBAIC00MDUsNyArNDA3LDcgQEAgaW50IGV0bmF2aXZfZ2VtX2NwdV9wcmVwKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLCB1MzIgb3AsCiAKIAlpZiAoZXRuYXZpdl9vYmotPmZsYWdz
ICYgRVROQV9CT19DQUNIRUQpIHsKIAkJZG1hX3N5bmNfc2dfZm9yX2NwdShkZXYtPmRldiwgZXRu
YXZpdl9vYmotPnNndC0+c2dsLAotCQkJCSAgICBldG5hdml2X29iai0+c2d0LT5uZW50cywKKwkJ
CQkgICAgZXRuYXZpdl9vYmotPnNndC0+b3JpZ19uZW50cywKIAkJCQkgICAgZXRuYXZpdl9vcF90
b19kbWFfZGlyKG9wKSk7CiAJCWV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wID0gb3A7CiAJ
fQpAQCAtNDIyLDcgKzQyNCw3IEBAIGludCBldG5hdml2X2dlbV9jcHVfZmluaShzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaikKIAkJLyogZmluaSB3aXRob3V0IGEgcHJlcCBpcyBhbG1vc3QgY2Vy
dGFpbmx5IGEgdXNlcnNwYWNlIGVycm9yICovCiAJCVdBUk5fT04oZXRuYXZpdl9vYmotPmxhc3Rf
Y3B1X3ByZXBfb3AgPT0gMCk7CiAJCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZGV2LT5kZXYsIGV0
bmF2aXZfb2JqLT5zZ3QtPnNnbCwKLQkJCWV0bmF2aXZfb2JqLT5zZ3QtPm5lbnRzLAorCQkJZXRu
YXZpdl9vYmotPnNndC0+b3JpZ19uZW50cywKIAkJCWV0bmF2aXZfb3BfdG9fZG1hX2RpcihldG5h
dml2X29iai0+bGFzdF9jcHVfcHJlcF9vcCkpOwogCQlldG5hdml2X29iai0+bGFzdF9jcHVfcHJl
cF9vcCA9IDA7CiAJfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
