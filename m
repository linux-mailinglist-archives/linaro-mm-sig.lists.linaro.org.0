Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A98211D16D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:02:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D184265F8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:02:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B49FC65F85; Wed, 13 May 2020 14:02:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A6BF66529;
	Wed, 13 May 2020 13:36:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 418AC65F9E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3163B664EC; Wed, 13 May 2020 13:36:10 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 41F1165FA2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:20 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133319euoutp01f66327282d8b32c9a42459c40cb52610~Omcc_fcNo2150421504euoutp01J
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133319euoutp01f66327282d8b32c9a42459c40cb52610~Omcc_fcNo2150421504euoutp01J
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133319eucas1p22be5456f62df1768a9c90da8a4cd4d85~OmcchOCrT1832718327eucas1p2k;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 25.D5.61286.E17FBBE5; Wed, 13
 May 2020 14:33:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34~OmccOWi5C0874908749eucas1p1C;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133318eusmtrp15d3d3fa1fbb26e7094d0a572b26e0a71~OmccNgAPR1050610506eusmtrp1Y;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-74-5ebbf71e36bb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D8.47.07950.E17FBBE5; Wed, 13
 May 2020 14:33:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eusmtip1357abafa80a7b15e4d3caea89056f39b~OmcbgtxCp0693306933eusmtip1J;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:37 +0200
Message-Id: <20200513133245.6408-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUhUURTGufNWl7HXqHgxSRoySEuTgh6YoVTwIAohAg0yR32ouc9zSQ0c
 l8RGLU1MEZPBMh3XcUnDbVxSU8lkNHOtTNMSTXHF/tDm9dT++87vfOd+h8MlEUkbZkkGhESw
 8hBZkBQ3RBt6dj6etd5u9jw3eoLOGOwT0TV51Ri915CF0CObKzitLu8W0SqtEz0/0YfQGyMz
 Irp2dhSjh5sKcDpd8wajK99NE3TH6hxG90+vEy4mTEVhBWBat1QoMzXagjONW98w5mtar4ip
 exXPTO7OIkz2WAlgmscVOLPS9glnntSXAWa99rib8R3DS75sUEAUK3e47GXoP5IXF/bc6oEm
 ux9VgGoLJTAgIXUB5vbsYLyWUKUAdn+4pgSGer0BYMnCPC4U6wAqcypFBxMNKiUhNEoATJlM
 Jg5Hmp+uE7wLpxyhclmJ89qMegTg+wxj3oRQyQgs0yb8a5hS12Hij0Z9OEmilA3UlMt5LKac
 YX5aOyakWcNyTTvCawM9X5zSovw7kNIRUF1TgwumqzBP+RIRtClc7K0nBG0FB7LT9weSAJwZ
 rCSEIh3A4cQ8ILic4NTgH5zfAqFOw+omBwG7wv6CJBGPIWUCx5aP8hjRy2cNuYiAxTA1RSK4
 T8H83qrD2I4h3f46DJxRLKDCgbr09y1NwDKBdf7/MBUAZcCCjeSC/VjOMYSNtudkwVxkiJ+9
 T2hwLdD/qoHd3rW3YFPn3QkoEkiNxfREs6cEk0VxMcGdAJKI1Ex8s1qPxL6ymFhWHnpPHhnE
 cp3gGIlKLcTni37dlVB+sgg2kGXDWPlBV0QaWCqAOXHb8vfojfaiCS8fjbfdkYvxQ7ZGS+Ir
 85ld8Taq7bnJYbdc98zHUe66/qrA6JxNZxtXbaJ5rCzcpKUlq9DVZG2esFMvjbx04s54JFkU
 n7TVDrl47H158d0LjbtV8VoRIw/TTf582Jn12Sg7ubVmtTg81Vhl5TCuRuvuJ7lHKKQo5y9z
 tEXknOwvAN1Qr1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7py33fHGXT+UbfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i54NW1kt1h65y25x
 8MMTVotTdz+zO/B5rJm3htFj77cFLB53ru1h89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHm833eVzaNvyypGj8+b5AJ4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyrsyoLpgmU7Fh8imWBsb14l2MnBwSAiYS2xZ0sXcxcnEICSxl
 lDj/+xYTREJG4uS0BlYIW1jiz7UuNoiiT4wSs1q3gBWxCRhKdL2FSIgIdDJKTOv+CDaKWaCH
 WeLSwi+MIFXCAt4STU+3A43i4GARUJXYsLoIJMwrYCsxq/sA1AZ5idUbDjCD2JxA8Vd39rOA
 2EIC+RJ7F+9jm8DIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZg9Gw79nPLDsaud8GH
 GAU4GJV4eC1u7Y4TYk0sK67MPcQowcGsJMLrtx4oxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKi
 yfnAyM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cCoX5b0/O8x
 /4D676crGiu8bMz/mR+3F872yyn7u1DW+HWeoqB7cC7PpZc2GqeOr9z+bn+Z//H7Lx9Ov7Jv
 R+LN2ger/n1qve2v3abtFmModNfypqvGZgvLw1tMb/FucF1iuPDUx5Y6O6PeC9NP7ApUZSmK
 kmn58k471Xzr0tsz29Ty7O6ceMKhxFKckWioxVxUnAgAnEr/zbQCAAA=
X-CMS-MailID: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
X-Msg-Generator: CA
X-RootMTR: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 30/38] dmabuf: fix common struct sg_table
	related issues
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
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIHwgMTMgKysrKysrLS0tLS0tLQog
ZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyAgICAgICAgICAgIHwgIDcgKysrLS0tLQogMiBmaWxl
cyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9oZWFwLWhlbHBlcnMuYwppbmRleCA5Zjk2NGNhLi5kMDY5NmNmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKKysrIGIvZHJpdmVycy9kbWEtYnVm
L2hlYXBzL2hlYXAtaGVscGVycy5jCkBAIC0xNDAsMTMgKzE0MCwxMiBAQCBzdHJ1Y3Qgc2dfdGFi
bGUgKmRtYV9oZWFwX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aG1lbnQsCiAJCQkJICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQogewog
CXN0cnVjdCBkbWFfaGVhcHNfYXR0YWNobWVudCAqYSA9IGF0dGFjaG1lbnQtPnByaXY7Ci0Jc3Ry
dWN0IHNnX3RhYmxlICp0YWJsZTsKLQotCXRhYmxlID0gJmEtPnRhYmxlOworCXN0cnVjdCBzZ190
YWJsZSAqdGFibGUgPSAmYS0+dGFibGU7CisJaW50IHJldDsKIAotCWlmICghZG1hX21hcF9zZyhh
dHRhY2htZW50LT5kZXYsIHRhYmxlLT5zZ2wsIHRhYmxlLT5uZW50cywKLQkJCWRpcmVjdGlvbikp
Ci0JCXRhYmxlID0gRVJSX1BUUigtRU5PTUVNKTsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoYXR0
YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyZWN0aW9uLCAwKTsKKwlpZiAocmV0KQorCQl0YWJsZSA9
IEVSUl9QVFIocmV0KTsKIAlyZXR1cm4gdGFibGU7CiB9CiAKQEAgLTE1NCw3ICsxNTMsNyBAQCBz
dGF0aWMgdm9pZCBkbWFfaGVhcF91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaG1lbnQsCiAJCQkJICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSwKIAkJCQkgICBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFj
aG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOworCWRtYV91
bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRpcmVjdGlvbiwgMCk7CiB9CiAK
IHN0YXRpYyB2bV9mYXVsdF90IGRtYV9oZWFwX3ZtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1m
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi91ZG1hYnVmLmMKaW5kZXggYWNiMjZjNi4uODllMjkzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL3VkbWFidWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCkBAIC02Mywx
MCArNjMsOSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRl
dmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVmLAogCQkJCQlHRlBfS0VSTkVMKTsKIAlpZiAo
cmV0IDwgMCkKIAkJZ290byBlcnI7Ci0JaWYgKCFkbWFfbWFwX3NnKGRldiwgc2ctPnNnbCwgc2ct
Pm5lbnRzLCBkaXJlY3Rpb24pKSB7Ci0JCXJldCA9IC1FSU5WQUw7CisJcmV0ID0gZG1hX21hcF9z
Z3RhYmxlKGRldiwgc2csIGRpcmVjdGlvbiwgMCk7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJy
OwotCX0KIAlyZXR1cm4gc2c7CiAKIGVycjoKQEAgLTc4LDcgKzc3LDcgQEAgc3RhdGljIHN0cnVj
dCBzZ190YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9i
dWYgKmJ1ZiwKIHN0YXRpYyB2b2lkIHB1dF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBzZ190YWJsZSAqc2csCiAJCQkgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9u
KQogewotCWRtYV91bm1hcF9zZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKTsK
KwlkbWFfdW5tYXBfc2d0YWJsZShkZXYsIHNnLCBkaXJlY3Rpb24sIDApOwogCXNnX2ZyZWVfdGFi
bGUoc2cpOwogCWtmcmVlKHNnKTsKIH0KLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
