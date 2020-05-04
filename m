Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2491C3AF9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:10:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FBE4619C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:10:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 33C3C66048; Mon,  4 May 2020 13:10:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A9D56653E;
	Mon,  4 May 2020 12:55:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 04C2966056
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1D5466072; Mon,  4 May 2020 12:55:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6AA2B66076
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:25 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125424euoutp02006151944b9877ca0993c159aa5b1292~L1G6CGVrL1833318333euoutp02E
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125424euoutp02006151944b9877ca0993c159aa5b1292~L1G6CGVrL1833318333euoutp02E
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eucas1p2e4b016b14b89fc7a00c20e03f6732b26~L1G5no84j2227522275eucas1p2y;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BE.12.60698.08010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981~L1G42B__p0599805998eucas1p2I;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125423eusmtrp11a647a9bbbb95e4ac1ed778c7a476de2~L1G4wG4_32470624706eusmtrp1r;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-64-5eb01080774f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0E.06.07950.F7010BE5; Mon,  4
 May 2020 13:54:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125422eusmtip2100181fd77b643d825ae7bf11205545f~L1G4FjbSs0350103501eusmtip23;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:57 +0200
Message-Id: <20200504125359.5678-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUgUURzm7Rw7mmvjavo8StjohDywPyYsSTIYwkIIyYSsTcdVctV2PFIK
 Fy2pzU1bwysr3QTvM9nEtPLIzQwrNbF0PVNREI1dlUy0Hafsv+/3He9778cjEHEd5kRERscx
 imhplAS3RHVdvz4dUZJ1IR5TkxaUurdbQNXn1WLUpu4hQg0sL+JUeeU7AVX0xpsyDUwIqIap
 QYzqby7EqepOg5BqW/qBUR8MRuFJK7rqaRWgW1eKUHpksAWnX66MY/TYfb2AflGSQg9vTCF0
 9lApoF99U+L0g8YKQBsb9gTsCLY8HsZERSYwCnefK5YR+o4NPLbf7oZu/IlQCcpsVIAgIHkU
 akuCVcCCEJNlAE7cC1cBSzM2AdinbcH4wQhgTv4zAefiAgVjmUJeKAVw9bsJ3Y4Y1KsI58JJ
 T6haUOEctiPvAPhebcWZELJdAAvLZ1FOsCXPwN+auS0TSu6DxqrhrbCIPAGzTCrA17nCyrq3
 CHdXCzOfrz7AnQPJZiHcrO/GeI8fbH2kw3lsC+f1jUIeu8Ce7AyUD6SZH9dbLeSHDAD7U/P+
 NnjDkd41nGtAyEOwttmdp33hUs60kF+SNRxasOFoxAw1ulyEp0XwbrqYd++HBfqa7dq2z30I
 j2mYVrOC8wvqAHCyqQvLAq4F/8uKAKgADkw8K5cxrFc0k+jGSuVsfLTMLTRG3gDM/6hnQ7/c
 BF6vX20HJAEkVqIgY22IGJMmsEnydgAJRGInarptpkRh0qRkRhFzWREfxbDtwJlAJQ4iL+3c
 JTEpk8Yx1xgmllH8UwWEhZMSOMdHgVSf0ZmYusngNHt9TfZ8oNbdtJo7mizTNIV3soljaY4V
 gW0X7DNtRnel+z8n4tCUtfPKvbpzM1/VnY+Lj20khCnO7tQaDqY2BgRZe4j7YvxdRsp6nKdV
 twbtPK47WnnN3vy4Lve9uDjZEKr5ojEsa36KunefCj1dWewn0EpQNkLqeRhRsNI/Td9DXUMD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIIsWRmVeSWpSXmKPExsVy+t/xe7r1AhviDFqfc1v0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gtTt39zO7A
 47Fm3hpGj73fFrB43Lm2h81j+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehnHD/9jK7gsUrHtwVz2BsYVgl2MnBwSAiYSs+73s4PYQgJLGSVezY2BiMtInJzWwAphC0v8
 udbFBlHziVFieoMFiM0mYCjR9RYkzsUhItDJKDGt+yM7iMMscIJJ4vSMr2DdwgJeEr8nvQTr
 ZhFQlfi85jYziM0rYCsx4UsXI8QGeYnVGw4AxTk4OIHiM3vVIZblS9x9+o9lAiPfAkaGVYwi
 qaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHRse3Yzy07GLveBR9iFOBgVOLh3fB1fZwQa2JZcWXu
 IUYJDmYlEd4dLUAh3pTEyqrUovz4otKc1OJDjKZAN01klhJNzgdGbl5JvKGpobmFpaG5sbmx
 mYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbNIkfXX3qY9v72YdG68hU6OwI0fqYdSHm3
 qP2OuOXJoPV1HOm6Tu7rYyZInng2K+wDB3duzM8kW6ZVh5tipb4vcNF8I/c3ubnz/jKzxdl2
 IVO+ec9k2uyVXrJb1aPH+eXGpwdmLy7bo+N26sm7vuNv3ioViuornMyadsQp8MYMRrbbHad5
 6nqVWIozEg21mIuKEwF/RK8UpAIAAA==
X-CMS-MailID: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
X-Msg-Generator: CA
X-RootMTR: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125423eucas1p24639a2eae17ebc634e022a6c7d448981@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 19/21] dmabuf: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIHwgNyArKysrLS0tCiBk
cml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jICAgICAgICAgICAgfCA1ICsrKy0tCiAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMv
aGVhcC1oZWxwZXJzLmMKaW5kZXggOWY5NjRjYS4uYjkyMzg2MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9oZWFwLWhlbHBlcnMuYwpAQCAtMTQ0LDggKzE0NCw5IEBAIHN0cnVjdCBzZ190YWJsZSAqZG1h
X2hlYXBfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwK
IAogCXRhYmxlID0gJmEtPnRhYmxlOwogCi0JaWYgKCFkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRl
diwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLAotCQkJZGlyZWN0aW9uKSkKKwl0YWJsZS0+bmVu
dHMgPSBkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwKKwkJCQkgIHRhYmxl
LT5vcmlnX25lbnRzLCBkaXJlY3Rpb24pOworCWlmICghdGFibGUtPm5lbnRzKQogCQl0YWJsZSA9
IEVSUl9QVFIoLUVOT01FTSk7CiAJcmV0dXJuIHRhYmxlOwogfQpAQCAtMTU0LDcgKzE1NSw3IEBA
IHN0YXRpYyB2b2lkIGRtYV9oZWFwX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNobWVudCwKIAkJCQkgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAg
IGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKLQlkbWFfdW5tYXBfc2coYXR0
YWNobWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1h
X3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm9yaWdfbmVudHMs
IGRpcmVjdGlvbik7CiB9CiAKIHN0YXRpYyB2bV9mYXVsdF90IGRtYV9oZWFwX3ZtX2ZhdWx0KHN0
cnVjdCB2bV9mYXVsdCAqdm1mKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKaW5kZXggYWNiMjZjNi4uZWEwY2Y3MSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
dWRtYWJ1Zi5jCkBAIC02Myw3ICs2Myw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmdldF9z
Z190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCiAJCQkJCUdG
UF9LRVJORUwpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycjsKLQlpZiAoIWRtYV9tYXBfc2co
ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMsIGRpcmVjdGlvbikpIHsKKwlzZy0+bmVudHMgPSBkbWFf
bWFwX3NnKGRldiwgc2ctPnNnbCwgc2ctPm9yaWdfbmVudHMsIGRpcmVjdGlvbik7CisJaWYgKCFz
Zy0+bmVudHMpIHsKIAkJcmV0ID0gLUVJTlZBTDsKIAkJZ290byBlcnI7CiAJfQpAQCAtNzgsNyAr
NzksNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVmLAogc3RhdGljIHZvaWQgcHV0X3NnX3RhYmxlKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNnX3RhYmxlICpzZywKIAkJCSBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7Ci0JZG1hX3VubWFwX3NnKGRldiwgc2ctPnNnbCwgc2ct
Pm5lbnRzLCBkaXJlY3Rpb24pOworCWRtYV91bm1hcF9zZyhkZXYsIHNnLT5zZ2wsIHNnLT5vcmln
X25lbnRzLCBkaXJlY3Rpb24pOwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNnKTsKIH0K
LS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
