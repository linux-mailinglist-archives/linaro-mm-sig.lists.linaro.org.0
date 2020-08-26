Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A042527A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:45:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32FC261957
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:45:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 207F4619B7; Wed, 26 Aug 2020 06:45:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 469C1666D9;
	Wed, 26 Aug 2020 06:36:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D8E5D60C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CAE916604C; Wed, 26 Aug 2020 06:35:44 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B93D660C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063535euoutp016a0d647939886298f8b5941f55153849~uvesOiCyU1717217172euoutp01c
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063535euoutp016a0d647939886298f8b5941f55153849~uvesOiCyU1717217172euoutp01c
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063534eucas1p270a1c2e25b72630202fda78d4f366ae5~uver8bPkT0402704027eucas1p2j;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6F.4D.06318.6B2064F5; Wed, 26
 Aug 2020 07:35:34 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b~uvermfILm0402704027eucas1p2i;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063534eusmtrp2e49ad1248f6754d2c01d073c550e1795~uverl2G8a0466204662eusmtrp2I;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-da-5f4602b6da51
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A1.53.06017.6B2064F5; Wed, 26
 Aug 2020 07:35:34 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063533eusmtip22cc306bbc45cef23b492bdcd73791658~uveq_oHja0302003020eusmtip2o;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:55 +0200
Message-Id: <20200826063316.23486-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvZ3pdECqYyFwgyjauGFkC5KMYXFBzBh9INFEY8JSYCxIC6QF
 ZHlgU6JlRxJJ3UoVUAqCSMqmIEQohFVABbXIHqqihi2KLLYM6Nt3/vOf+5+cXBzhadiWeHBo
 BC0JFYj4mDGqbvndbatmnfJ16GzeT6Z3tbHIZ3llbFKZno6Sq+pshOyf/4GRT1TNLFLR4ELO
 9Y+wyIqxd2yyr/YuRvYlvwFk6Wsth0y65kRqh1pRsvHnOPvYVqrkfgmgXi4oUKpGruVQFcU3
 MapqYZhNfU7VsKjnj+KpjytjCHVroAhQdYMJGJW57EBlVBYDarZipxf3krFrIC0KjqIl9u5+
 xkGy5WokfNgoeiDrK5IAcnEZMMIhcRiqdd85BuYRjwHsnHJgeA7AmZWzDM8COKiM2/BPyrVs
 GTDW60UA3qlPWy/0A/eyOtgGF0Y4Qtm0DDOwGXEdwNZ0E4MJIV4gUFm7iBoapsQF2PmrbS0a
 JfbCgvKaNeYS7rCtJBVh4qyhqvzVGhvpdU1qJmZ4CBKjHNhRVYgyppOwriB/nU3hF00lh2Er
 uFrzgMUMJAM40lXKYYo0APuS8gDjcoGfuhb1z+L6/WxgWa09Ix+HUxMtazIktsCB6W0GGdFj
 jvo2wshceCOFx7j3Qbnm6b/Yxp7e9f0pmNjajDEXytafsbeBkwWs5f/DFAAUAws6UioW0lKn
 UPqqnVQglkaGCu0CwsQVQP+92lc089Wgfsm/CRA44JtwFZinL48tiJLGiJsAxBG+GfdEZ7sP
 jxsoiImlJWG+kkgRLW0C23GUb8F1Uuq8eYRQEEGH0HQ4LdnosnAjywTgIfhWJop2XTkfqyx0
 O+L8tm4m0Tbc7mFNOd/abYdSnDeBV1u17iogBhd0OTYp3SHe5tpJL7/caZ/2yKU9R7syVZuH
 DjmoAi4q4vxLR3dzoHCTCVF+5sBkvCjfU5eqbvxzWqgTXX4vVC1nNJZNFp+zbgluSDMfVyY4
 D1yRe/R84KPSIIHjQUQiFfwF5PuO7FoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xe7rbmNziDVasE7LoPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0j
 E0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyuvzuYCx5wVtyY8Jq5gXEKRxcjJ4eEgInEs1l3
 WbsYuTiEBJYySjz7sJ0FIiEjcXJaAyuELSzx51oXG4gtJPCJUaL5DD+IzSZgKNH1FiTOxSEi
 0MkoMa37IzuIwyxwjFli4+P3zCBVwgKhEmt+PwCbxCKgKrF0w052EJtXwE7i5JpuZogN8hKr
 NxwAszmB4se7+6G22UqcXjuDeQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiB8bTt
 2M8tOxi73gUfYhTgYFTi4V3A5hovxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU
 4kOMpkBHTWSWEk3OB8Z6Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYO
 TqkGxpVtrhV6Fw4ZSLnlKV2ZvXmX+YtM16gOp56HVjvf/+57zy3KJrZiyTSPnexrv18W8tn5
 ZeOTvNUGkyxOXci8Vs1xXW++weQsBsmz0lPCKtZUvd3AuZF9oUHBxXvLDFl61+x9aRS/onH3
 k6sMu6WMq/58fHsk+uAtbp8VQR/cZu+/2Ce2Qo+v7aYSS3FGoqEWc1FxIgCa5HSqvQIAAA==
X-CMS-MailID: 20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b
X-Msg-Generator: CA
X-RootMTR: 20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 11/32] drm: mediatek: use common helper
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
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2dlbS5jIHwgOSArKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0u
YwppbmRleCAzNjU0ZWM3MzIwMjkuLjA1ODNlNTU3YWQzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fZ2VtLmMKQEAgLTIzMyw5ICsyMzMsNyBAQCB2b2lkICptdGtfZHJtX2dlbV9w
cmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBtdGtfZHJt
X2dlbV9vYmogKm10a19nZW0gPSB0b19tdGtfZ2VtX29iaihvYmopOwogCXN0cnVjdCBzZ190YWJs
ZSAqc2d0OwotCXN0cnVjdCBzZ19wYWdlX2l0ZXIgaXRlcjsKIAl1bnNpZ25lZCBpbnQgbnBhZ2Vz
OwotCXVuc2lnbmVkIGludCBpID0gMDsKIAogCWlmIChtdGtfZ2VtLT5rdmFkZHIpCiAJCXJldHVy
biBtdGtfZ2VtLT5rdmFkZHI7CkBAIC0yNDksMTEgKzI0Nyw4IEBAIHZvaWQgKm10a19kcm1fZ2Vt
X3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJaWYgKCFtdGtfZ2VtLT5w
YWdlcykKIAkJZ290byBvdXQ7CiAKLQlmb3JfZWFjaF9zZ19wYWdlKHNndC0+c2dsLCAmaXRlciwg
c2d0LT5vcmlnX25lbnRzLCAwKSB7Ci0JCW10a19nZW0tPnBhZ2VzW2krK10gPSBzZ19wYWdlX2l0
ZXJfcGFnZSgmaXRlcik7Ci0JCWlmIChpID4gbnBhZ2VzKQotCQkJYnJlYWs7Ci0JfQorCWRybV9w
cmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHNndCwgbXRrX2dlbS0+cGFnZXMsIE5VTEwsIG5w
YWdlcyk7CisKIAltdGtfZ2VtLT5rdmFkZHIgPSB2bWFwKG10a19nZW0tPnBhZ2VzLCBucGFnZXMs
IFZNX01BUCwKIAkJCSAgICAgICBwZ3Byb3Rfd3JpdGVjb21iaW5lKFBBR0VfS0VSTkVMKSk7CiAK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
