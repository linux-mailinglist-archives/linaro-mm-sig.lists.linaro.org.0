Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D78491D166E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:50:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F288F65FB6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:50:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E3BEC65FCD; Wed, 13 May 2020 13:50:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 700AF6615F;
	Wed, 13 May 2020 13:34:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2B1165F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D3CA465F91; Wed, 13 May 2020 13:34:31 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id B8C8765F93
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:09 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133308euoutp02b543794e0932ae5e6395ef2f70da4598~OmcTKCk2V3216632166euoutp025
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133308euoutp02b543794e0932ae5e6395ef2f70da4598~OmcTKCk2V3216632166euoutp025
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133308eucas1p20456b16f876da2515028eb026479ed8a~OmcS3Oqe21007610076eucas1p2C;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CA.01.60679.417FBBE5; Wed, 13
 May 2020 14:33:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133308eucas1p205607f34ec3d6df747e21c9b27204ca3~OmcSdnmIZ2972529725eucas1p2A;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133308eusmtrp12932d33d008f5b798cdfa11df3ed421e~OmcSc7e_C1011910119eusmtrp1M;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-40-5ebbf71454f1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 25.1A.08375.417FBBE5; Wed, 13
 May 2020 14:33:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133307eusmtip1b986e910f71a45a9fed9722a4260d683~OmcReuEsu0693306933eusmtip1A;
 Wed, 13 May 2020 13:33:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:23 +0200
Message-Id: <20200513133245.6408-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzHfe+557ljTk/H5jv51VnWTyKzZ0NpszzrD1rLPxp6yjMsDnco
 asui8rPl1/yIyI/8jo4ph104XZKbxTqOG8IUMxrpoqnnPNR/r8/7835/Pt/vd18+IuxHrfgR
 4jhaIqYiRZgJt+PdL/Upi59dwafTtw4T2epBDvGqqAUl/nTkIMTYj1WMKF0cBkR94wCHqFB4
 EBtjsxxCNvcZJXIUwzxiVF6KEc1KHY9YfK5HiN61eZTQ5SmB9wGy6VkTIHs2K7hkZ4mOR77e
 nEHJ6UwVh2yrvkdO7swhZN54LSC7JpIxUiXX8sjH7Q2AXJfZXjINNPEMpSMjEmiJ89lrJuGV
 yflITL/D7RF9LpYMZmwygDEf4m4wq7ibZ2AhXgfgbJV/BjBheAPAlFQNyhbrAH6QpaD7CX1T
 MYdt1AJYU14K2DgT2R50MDCGu8CMlQzMwBb4AwDfZ5saAghegsCvfdu7DXPcH+palbthLn4E
 qmXViIEFuBdUrqTtbbODja1vd3VjRl+aUnANgyCu5cEv9T0Ya/KBmrZ1HsvmcEnVvsfWcCgv
 ay+QwlxO3cxjiywAR+8XAdblAafUW8wkPnO+Y7BF7szK5+GQuoxjkCFuBsdXDhpkhMHcjkKE
 lQUw7aGQdTvCEtXLf2t7Rz7tWUi40OjAvk8/gBOPLJ8Au5L/qyoAaACWdLw0KoyWuorpW05S
 KkoaLw5zuhEdJQPM1xraUW28AfLf1/sAzgciUwGh7QoWolSCNDGqD0A+IrIQ+LUwkiCUSkyi
 JdEhkvhIWtoHDvG5IkvBmcpvQUI8jIqjb9J0DC3Z73L4xlbJAPtoFE8Zaeq2iwYviBQL7gMe
 l13X0PDlhSlnGJfmW768UrDkHuBV4JmUR8V6F2o1DdadQUK7oGmvyXmvzGifytgXNbqLbk/v
 SvQ27X7riu9mq6Zm5iFKe/sxbVmqrUtAULq8O38CFfs6tl4xU3ACl2zP3bFJPHlUqTxRle13
 VcSVhlMuxxGJlPoLsEA2fFYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsVy+t/xu7oi33fHGRxcyG3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLOc/PMlqsXH2UyWLBfmuLL1ceMllsenyN1WLi/rPsFpd3zWGzWHvkLrvF
 84U/mC0OfnjCanF38hFGB36PNfPWMHrs/baAxWPnrLvsHtu/PWD1uN99nMlj85J6j9v/HjN7
 TL6xnNFj980GNo/ju26xe/RtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYml
 nqGxeayVkamSvp1NSmpOZllqkb5dgl7GooYpzAWHlSsu/JjE1sD4QLaLkZNDQsBE4seamUxd
 jFwcQgJLGSWe/f3PApGQkTg5rYEVwhaW+HOtiw2i6BOjxPT9i8CK2AQMJbreQiREBDoZJaZ1
 f2QHcZgFljBL9E29xAZSJSzgKzF971mwDhYBVYlzm5Ywg9i8ArYSR952QK2Ql1i94QBYnBMo
 /urOfrB6IYF8ib2L97FNYORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzCWth37uXkH
 46WNwYcYBTgYlXh4LW7tjhNiTSwrrsw9xCjBwawkwuu3HijEm5JYWZValB9fVJqTWnyI0RTo
 qInMUqLJ+cA4zyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwDjt
 w6b9dTtEuT5X27NLemk0Lz/j3+Z9as/xPTvMMw68OHd026rWddt/LJgyRcVIeUngi5W1P+bs
 PqN08kk068rCWVXa31+8Z7D47znrjZlCjfhM0UOst8+VPE14GPrk1uKJ6ilaT9wz9IoZem6p
 h3cteTzlQHNm97xjlyLtbz2SqeJv+PzkTkuEEktxRqKhFnNRcSIAOb/LNLsCAAA=
X-CMS-MailID: 20200513133308eucas1p205607f34ec3d6df747e21c9b27204ca3
X-Msg-Generator: CA
X-RootMTR: 20200513133308eucas1p205607f34ec3d6df747e21c9b27204ca3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133308eucas1p205607f34ec3d6df747e21c9b27204ca3
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133308eucas1p205607f34ec3d6df747e21c9b27204ca3@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 16/38] drm: msm: fix common struct
 sg_table related issues
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgfCAxMyArKysrKy0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYyB8IDE0ICsrKysrKy0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9pb21tdS5jICB8ICAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKaW5kZXggNWE2
YTc5Zi4uNjMxOGMyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKQEAgLTUzLDExICs1MywxMCBAQCBz
dGF0aWMgdm9pZCBzeW5jX2Zvcl9kZXZpY2Uoc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2Jq
KQogCXN0cnVjdCBkZXZpY2UgKmRldiA9IG1zbV9vYmotPmJhc2UuZGV2LT5kZXY7CiAKIAlpZiAo
Z2V0X2RtYV9vcHMoZGV2KSAmJiBJU19FTkFCTEVEKENPTkZJR19BUk02NCkpIHsKLQkJZG1hX3N5
bmNfc2dfZm9yX2RldmljZShkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0
LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZp
Y2UoZGV2LCBtc21fb2JqLT5zZ3QsCisJCQkJCSAgICBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBl
bHNlIHsKLQkJZG1hX21hcF9zZyhkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+
c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFfbWFwX3NndGFibGUoZGV2LCBt
c21fb2JqLT5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAl9CiB9CiAKQEAgLTY2LDExICs2
NSw5IEBAIHN0YXRpYyB2b2lkIHN5bmNfZm9yX2NwdShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1z
bV9vYmopCiAJc3RydWN0IGRldmljZSAqZGV2ID0gbXNtX29iai0+YmFzZS5kZXYtPmRldjsKIAog
CWlmIChnZXRfZG1hX29wcyhkZXYpICYmIElTX0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewotCQlk
bWFfc3luY19zZ19mb3JfY3B1KGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5z
Z3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2Nw
dShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJRElSRUNUSU9OQUwpOwogCX0gZWxzZSB7Ci0JCWRt
YV91bm1hcF9zZyhkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50
cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFfdW5tYXBfc2d0YWJsZShkZXYsIG1zbV9vYmot
PnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCX0KIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVt
bXUuYwppbmRleCAzNDk4MGQ4Li41ZDhkYTRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9ncHVtbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYwpA
QCAtMzUsMjEgKzM1LDE5IEBAIHN0YXRpYyBpbnQgbXNtX2dwdW1tdV9tYXAoc3RydWN0IG1zbV9t
bXUgKm1tdSwgdWludDY0X3QgaW92YSwKIHsKIAlzdHJ1Y3QgbXNtX2dwdW1tdSAqZ3B1bW11ID0g
dG9fbXNtX2dwdW1tdShtbXUpOwogCXVuc2lnbmVkIGlkeCA9IChpb3ZhIC0gR1BVTU1VX1ZBX1NU
QVJUKSAvIEdQVU1NVV9QQUdFX1NJWkU7Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKKwlzdHJ1
Y3Qgc2dfZG1hX3BhZ2VfaXRlciBkbWFfaXRlcjsKIAl1bnNpZ25lZCBwcm90X2JpdHMgPSAwOwot
CXVuc2lnbmVkIGksIGo7CiAKIAlpZiAocHJvdCAmIElPTU1VX1dSSVRFKQogCQlwcm90X2JpdHMg
fD0gMTsKIAlpZiAocHJvdCAmIElPTU1VX1JFQUQpCiAJCXByb3RfYml0cyB8PSAyOwogCi0JZm9y
X2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBpKSB7Ci0JCWRtYV9hZGRyX3QgYWRk
ciA9IHNnLT5kbWFfYWRkcmVzczsKLQkJZm9yIChqID0gMDsgaiA8IHNnLT5sZW5ndGggLyBHUFVN
TVVfUEFHRV9TSVpFOyBqKyssIGlkeCsrKSB7Ci0JCQlncHVtbXUtPnRhYmxlW2lkeF0gPSBhZGRy
IHwgcHJvdF9iaXRzOwotCQkJYWRkciArPSBHUFVNTVVfUEFHRV9TSVpFOwotCQl9CisJZm9yX2Vh
Y2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsICZkbWFfaXRlciwgMCkgeworCQlkbWFfYWRkcl90IGFk
ZHIgPSBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRtYV9pdGVyKTsKKworCQlCVUlMRF9CVUdf
T04oR1BVTU1VX1BBR0VfU0laRSAhPSBQQUdFX1NJWkUpOworCQlncHVtbXUtPnRhYmxlW2lkeCsr
XSA9IGFkZHIgfCBwcm90X2JpdHM7CiAJfQogCiAJLyogd2UgY2FuIGltcHJvdmUgYnkgZGVmZXJy
aW5nIGZsdXNoIGZvciBtdWx0aXBsZSBtYXAoKSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21faW9tbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKaW5k
ZXggYWQ1OGNmZS4uZDMyMmIzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
aW9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jCkBAIC00Myw3ICs0
Myw3IEBAIHN0YXRpYyBpbnQgbXNtX2lvbW11X21hcChzdHJ1Y3QgbXNtX21tdSAqbW11LCB1aW50
NjRfdCBpb3ZhLAogCXN0cnVjdCBtc21faW9tbXUgKmlvbW11ID0gdG9fbXNtX2lvbW11KG1tdSk7
CiAJc2l6ZV90IHJldDsKIAotCXJldCA9IGlvbW11X21hcF9zZyhpb21tdS0+ZG9tYWluLCBpb3Zh
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgcHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUo
aW9tbXUtPmRvbWFpbiwgaW92YSwgc2d0LCBwcm90KTsKIAlXQVJOX09OKCFyZXQpOwogCiAJcmV0
dXJuIChyZXQgPT0gbGVuKSA/IDAgOiAtRUlOVkFMOwotLSAKMS45LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
