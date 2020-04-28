Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 898661BBF90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:30:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B48876038D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:30:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5D86618F1; Tue, 28 Apr 2020 13:30:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E1CB61993;
	Tue, 28 Apr 2020 13:21:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 33DC961792
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 26D2D61951; Tue, 28 Apr 2020 13:20:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 699A461813
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:30 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132029euoutp028e74312476a669277187f949e7daa976~J-l99TAC82995329953euoutp02F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132029euoutp028e74312476a669277187f949e7daa976~J-l99TAC82995329953euoutp02F
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132029eucas1p15ebf8ee46b248dce1729226b890ee7bd~J-l9cY4YL3064130641eucas1p1X;
 Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 99.B4.61286.D9D28AE5; Tue, 28
 Apr 2020 14:20:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132028eucas1p2310cd19b879962d5241604dd13909255~J-l9MHt4C2651826518eucas1p2R;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eusmtrp2955b6ead3ca0b1462357869626b9221b~J-l9Lhzga2140321403eusmtrp2O;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-7e-5ea82d9d6328
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 61.A6.08375.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132028eusmtip28529c37fc88a79690be32e36cffb4ed4~J-l8m9CKM1116911169eusmtip2Y;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:59 +0200
Message-Id: <20200428132005.21424-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTN63SmA1IYC5EXIJI0YJCkLMrHGAxq4sd8EKMfJsREZIARCLSQ
 liKIUTYNuwWiAlooBGQpayFFECNUoIqRKFtqhLAVFCKgsghKwJYp+Hfuuefcc9/NwxFBL+qE
 R0niGamEjhFi1lztwPaQSCmqDfbJVWNk3tA7DlndnMojW4ubUTJNN4iRe9oChBzdWMXIOnU/
 h3yqaOOQqtf+5ProDIfUzI2j5EjXM4xs7Jvkkb0/jCg5OLnGO29HNZQ1AOrVpopLTYx3Y1TH
 5jRKTeXoOVRb1T3qy+4cQhUZagD18nMKRuW31wNqTXP88pFr1mfDmZioBEbqHRBiHZle9QGL
 mz2WuKXpASnguyAbWOGQ8IML3Y9BNrDGBUQtgH8XsyzFOoD6zDqELdYALMpqAAeWQvUmj23U
 ADjdWYkeWlqmx3hmFUb4wuzlbMyMHYj7AL7NszGLEEKLQGNN377IngiEKRuL+yIu4Q6Vvyv2
 MZ8IgFNjeSgb5wrVLT2IGVuZ+OrZecw8CBLDPNg5tcplRRehsaufx2J7uKRvt2AXuNdZzmEN
 6QDODDXy2CIXwJG0YsuL/OHE0B/TWNy030nY3OXN0hfglnIXNdOQsIWG5aNmGjHBQu0ThKX5
 MPOB5ZInYKm+6TC29+OwRUJBhTGaPVABgDuNFUABXEv/Z6kAqAeOjFwmjmBkvhLmlpeMFsvk
 kgivsFixBpg+1vtd/a8XYGM4VAcIHAht+C02tcEClE6QJYl1AOKI0IE/G/k8WMAPp5NuM9LY
 G1J5DCPTAWecK3Tkn65cvC4gIuh4Jpph4hjpQZeDWzmlABFyhqZbOq7e8bj0zdmLyk9UOicP
 8Jc16XZ7bxbO5biUZYSVbxft+P8UXfENdH/0sBV6zjcGZax+wiYcVuTtHnmG2E4UK4loN+C6
 leSRubTUDGWOKjSh4664JEjRlH8zxK1LJEleavuKEqd2SDejnzLZVuvW2621WfNJpWghVxZJ
 +3oiUhn9D9EiVUBUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7pzdFfEGXSeNLboPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZzUvOshU8Eqv4sekAYwPjG6EuRk4OCQETiUmrv7F3MXJxCAks
 ZZRomvmSGSIhI3FyWgMrhC0s8edaFxuILSTwiVHi9mZFEJtNwFCi6y1InItDRKCTUWJa90ew
 ScwCB5glus+fZAKpEhbwkWj4+hKsm0VAVWLu94VgNq+AncT9q71QG+QlVm84ALaZEyi+9NFT
 oBoOoG22Epdbcicw8i1gZFjFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGD3bjv3cvIPx0sbg
 Q4wCHIxKPLwbeFbECbEmlhVX5h5ilOBgVhLhfZSxLE6INyWxsiq1KD++qDQntfgQoynQTROZ
 pUST84GRnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgZH5X77J
 pAUJzbF9HQYnSlefCP+QWL3dacUVrbNeig/NnI7u3glMM6rPbrnm7EuqZ3D+qCccpRBUY2K5
 d+dp9Zz513brJ/11OrAibmLeU2Hh2FXfVGb1rjibUnA//FryDaNDR2z3ahbxncw+k5DKWfNc
 d2n4FCtGfvbjaZuqXifEqW6avkKwXImlOCPRUIu5qDgRACirU1S0AgAA
X-CMS-MailID: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
X-Msg-Generator: CA
X-RootMTR: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132028eucas1p2310cd19b879962d5241604dd13909255
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132028eucas1p2310cd19b879962d5241604dd13909255@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 11/17] drm: rockchip: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jIHwgMTUgKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IDBkMTg4NDYuLmEwMjRjNzEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpAQCAtMzcsNyArMzcsNyBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX2dlbV9pb21tdV9tYXAoc3RydWN0IHJvY2tjaGlwX2dlbV9vYmpl
Y3QgKnJrX29iaikKIAlya19vYmotPmRtYV9hZGRyID0gcmtfb2JqLT5tbS5zdGFydDsKIAogCXJl
dCA9IGlvbW11X21hcF9zZyhwcml2YXRlLT5kb21haW4sIHJrX29iai0+ZG1hX2FkZHIsIHJrX29i
ai0+c2d0LT5zZ2wsCi0JCQkgICBya19vYmotPnNndC0+bmVudHMsIHByb3QpOworCQkJICAgcmtf
b2JqLT5zZ3QtPm9yaWdfbmVudHMsIHByb3QpOwogCWlmIChyZXQgPCBya19vYmotPmJhc2Uuc2l6
ZSkgewogCQlEUk1fRVJST1IoImZhaWxlZCB0byBtYXAgYnVmZmVyOiBzaXplPSV6ZCByZXF1ZXN0
X3NpemU9JXpkXG4iLAogCQkJICByZXQsIHJrX29iai0+YmFzZS5zaXplKTsKQEAgLTk4LDExICs5
OCwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dlbV9nZXRfcGFnZXMoc3RydWN0IHJvY2tjaGlw
X2dlbV9vYmplY3QgKnJrX29iaikKIAkgKiBUT0RPOiBSZXBsYWNlIHRoaXMgYnkgZHJtX2NsZmx1
c2hfc2coKSBvbmNlIGl0IGNhbiBiZSBpbXBsZW1lbnRlZAogCSAqIHdpdGhvdXQgcmVseWluZyBv
biBzeW1ib2xzIHRoYXQgYXJlIG5vdCBleHBvcnRlZC4KIAkgKi8KLQlmb3JfZWFjaF9zZyhya19v
YmotPnNndC0+c2dsLCBzLCBya19vYmotPnNndC0+bmVudHMsIGkpCisJZm9yX2VhY2hfc2cocmtf
b2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5zZ3QtPm9yaWdfbmVudHMsIGkpCiAJCXNnX2RtYV9h
ZGRyZXNzKHMpID0gc2dfcGh5cyhzKTsKIAotCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZHJtLT5k
ZXYsIHJrX29iai0+c2d0LT5zZ2wsIHJrX29iai0+c2d0LT5uZW50cywKLQkJCSAgICAgICBETUFf
VE9fREVWSUNFKTsKKwlkbWFfc3luY19zZ19mb3JfZGV2aWNlKGRybS0+ZGV2LCBya19vYmotPnNn
dC0+c2dsLAorCQkJICAgICAgIHJrX29iai0+c2d0LT5vcmlnX25lbnRzLCBETUFfVE9fREVWSUNF
KTsKIAogCXJldHVybiAwOwogCkBAIC0zNTEsNyArMzUxLDggQEAgdm9pZCByb2NrY2hpcF9nZW1f
ZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCQlyb2NrY2hpcF9nZW1f
aW9tbXVfdW5tYXAocmtfb2JqKTsKIAkJfSBlbHNlIHsKIAkJCWRtYV91bm1hcF9zZyhkcm0tPmRl
diwgcmtfb2JqLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHJrX29iai0+c2d0LT5uZW50cywgRE1BX0JJ
RElSRUNUSU9OQUwpOworCQkJCSAgICAgcmtfb2JqLT5zZ3QtPm9yaWdfbmVudHMsCisJCQkJICAg
ICBETUFfQklESVJFQ1RJT05BTCk7CiAJCX0KIAkJZHJtX3ByaW1lX2dlbV9kZXN0cm95KG9iaiwg
cmtfb2JqLT5zZ3QpOwogCX0gZWxzZSB7CkBAIC00OTMsMTQgKzQ5NCwxNCBAQCBzdGF0aWMgdW5z
aWduZWQgbG9uZyByb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19zaXplKHN0cnVjdCBzZ190YWJs
ZSAqc2d0LAogCQkJc3RydWN0IHNnX3RhYmxlICpzZywKIAkJCXN0cnVjdCByb2NrY2hpcF9nZW1f
b2JqZWN0ICpya19vYmopCiB7Ci0JaW50IGNvdW50ID0gZG1hX21hcF9zZyhkcm0tPmRldiwgc2ct
PnNnbCwgc2ctPm5lbnRzLAorCWludCBjb3VudCA9IGRtYV9tYXBfc2coZHJtLT5kZXYsIHNnLT5z
Z2wsIHNnLT5vcmlnX25lbnRzLAogCQkJICAgICAgIERNQV9CSURJUkVDVElPTkFMKTsKIAlpZiAo
IWNvdW50KQogCQlyZXR1cm4gLUVJTlZBTDsKIAogCWlmIChyb2NrY2hpcF9zZ19nZXRfY29udGln
dW91c19zaXplKHNnLCBjb3VudCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgewogCQlEUk1fRVJS
T1IoImZhaWxlZCB0byBtYXAgc2dfdGFibGUgdG8gY29udGlndW91cyBsaW5lYXIgYWRkcmVzcy5c
biIpOwotCQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKKwkJZG1h
X3VubWFwX3NnKGRybS0+ZGV2LCBzZy0+c2dsLCBzZy0+b3JpZ19uZW50cywKIAkJCSAgICAgRE1B
X0JJRElSRUNUSU9OQUwpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
