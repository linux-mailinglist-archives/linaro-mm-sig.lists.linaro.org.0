Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0D11C5163
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:54:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDE9861999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:54:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB76A66072; Tue,  5 May 2020 08:54:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E5F664EB;
	Tue,  5 May 2020 08:47:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 562ED6618A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45BE7661BF; Tue,  5 May 2020 08:46:39 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 8AED066075
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:30 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629euoutp02bd46cd9de064a0d622b6b01c791a6c30~MFXu-Mc-x2636226362euoutp02S
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084629euoutp02bd46cd9de064a0d622b6b01c791a6c30~MFXu-Mc-x2636226362euoutp02S
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629eucas1p1bc660181198e14441b2cd36ed4bc4769~MFXuqKYrY1829518295eucas1p1B;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3D.01.60698.5E721BE5; Tue,  5
 May 2020 09:46:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eucas1p12e882329da88edd155ba9f9f952889a0~MFXuXNqZI0601906019eucas1p1J;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629eusmtrp1741f8c6f136467c00fd54c3f038dae88~MFXuWedlH0942509425eusmtrp1B;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-32-5eb127e56b1a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 57.21.07950.4E721BE5; Tue,  5
 May 2020 09:46:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084628eusmtip1b2ab630b653f32d48173e1404386a386~MFXtsp_Si0580805808eusmtip17;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:58 +0200
Message-Id: <20200505084614.30424-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHeXd2do7m7DQlXy1UFlmJucRgh7xgYXG+RNGXoshaeVBzU9tR
 U79k5nV5l6HJMBXxNs1LpqmUOdRl4t1E85YsUwuzmA6tmLmdZd9+z/N//jwXHhwR9KJOeFhE
 NC2PkEiFPGtua9/28MmlY01Bp9YTHcmsoX4O2VTUgJI7rXkIObG5ziNVy4OArFH3csjSLh9y
 Y2KRQzbrJlEyr2sQI8c7VDyyvmcOI5fLthCy+8dnlJwr6AEB+6m6kjpAvTaUcqn24jmMajN8
 QqmFJ1oO9aLiITVj1CFUwVQVoDqnE3mUtuMjRmW31AJK3+x82ea6tW8wLQ2LpeUi/9vWoZ0r
 /SAq42CcMrmNkwimBApghUPiNJxZS+MpgDUuIKoBrKjpx9hgA8C6EYNF0QOY3N69G+BmS1NJ
 nMktIKoAzDE67BmajK08k8AjvKBiTWFmeyIFwHdZNqYihChG4Irmt1mwIy7BjsJ8YGIucRQ2
 GHtRE/MJP/iseovHzucC1Y1vERNbEf5QNzZrnggS8xgc2xlB2aJAqPxSg7FsB79qWyx8GA4U
 ZHJZw2MAF4fqMTbIBHA8qQiwVT5wduiXeTeEOAEbOkRs+ixsH1cg7Mq2cGrtgCmN7GJ+a6El
 zYfpqZY7usFi7fO9tt0jYwjLFKw2lKDshXoBrFSmc3KBS/H/ZqUA1AIHOoaRhdCMdwT9wJOR
 yJiYiBDPu5GyZrD7XANG7eYr8ObPHQ0gcCC04V/TNwQJUEksEy/TAIgjQnt+5VZjkIAfLIlP
 oOWRt+QxUprRgEM4V+jA9y5fvSkgQiTRdDhNR9HyfyoHt3JKBOVlk/R7xeg+sYf7B5un26pg
 vzSR/gyThEluLI12SgPFIfzgFbUyx8N1/h6xfeSix7CjTuXyKDQFzx3YrrITB4Rm3F8Vr0+c
 93C7UOkayPXNnk1F1Ppzace/TbukXHmZUpeWTcj6GhdKv4dvXHVO8DJE/tQVqpSr6uEkkatt
 s5DLhEq83BE5I/kLkjTk3lgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7pP1TfGGVzjteg9d5LJYuOM9awW
 /7dNZLa48vU9m8Wc52cZLVauPspksWC/tcWXKw+ZLDY9vsZqMXH/WXaLy7vmsFmsPXKX3eL5
 wh/MFgc/PGG1uDv5CKMDv8eaeWsYPfZ+W8DisXPWXXaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m
 31jO6LH7ZgObx/Fdt9g9+rasYvT4vEkugCdKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP
 0Ng81srIVEnfziYlNSezLLVI3y5BL2P3i5OMBZ1iFVNbtjM1MN4Q6mLk4JAQMJHYOK+ii5GL
 Q0hgKaPEuoa9rF2MnEBxGYmT0xqgbGGJP9e62CCKPjFK3Dm9lhkkwSZgKNH1FiIhItDJKDGt
 +yM7iMMssIRZom/qJTaQKmEBX4njL3+AdbAIqEqs/3cUbCyvgK3E/BU/2CBWyEus3nAArIZT
 wE7i8aU7YHEhgUKJD+e/s05g5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMI62Hfu5
 ZQdj17vgQ4wCHIxKPLwbvq6PE2JNLCuuzD3EKMHBrCTCu+zHhjgh3pTEyqrUovz4otKc1OJD
 jKZAR01klhJNzgfGeF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6p
 BkaPPbn1oo/PmKWaBrrPXCix+eliWdGs582irisOOGZ8ED1m/dMuwPu5U+j2iQbLvB5dECqd
 4rjqdrFtxJwbt3cJ9iz798w6fRWDZrBQ290XJbsPxN5i3nBwueFefjc7p2Vlefv8tv+1ztkv
 mZVYEsl5dbXT73l+/lGb+HOcvzrI6Cs4K+dI31FiKc5INNRiLipOBADk5cGsuQIAAA==
X-CMS-MailID: 20200505084629eucas1p12e882329da88edd155ba9f9f952889a0
X-Msg-Generator: CA
X-RootMTR: 20200505084629eucas1p12e882329da88edd155ba9f9f952889a0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084629eucas1p12e882329da88edd155ba9f9f952889a0
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084629eucas1p12e882329da88edd155ba9f9f952889a0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 09/25] drm: msm: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jICAgfCAxMyArKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21t
dS5jIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKaW5kZXggNWE2YTc5Zi4uYWI5NTJkNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtLmMKQEAgLTUzLDExICs1MywxMCBAQCBzdGF0aWMgdm9pZCBzeW5jX2Zvcl9kZXZp
Y2Uoc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2JqKQogCXN0cnVjdCBkZXZpY2UgKmRldiA9
IG1zbV9vYmotPmJhc2UuZGV2LT5kZXY7CiAKIAlpZiAoZ2V0X2RtYV9vcHMoZGV2KSAmJiBJU19F
TkFCTEVEKENPTkZJR19BUk02NCkpIHsKLQkJZG1hX3N5bmNfc2dfZm9yX2RldmljZShkZXYsIG1z
bV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9O
QUwpOworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZGV2LCBtc21fb2JqLT5zZ3QsCisJ
CQkJCSAgICBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBlbHNlIHsKLQkJZG1hX21hcF9zZyhkZXYs
IG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNU
SU9OQUwpOworCQlkbWFfbWFwX3NndGFibGUoZGV2LCBtc21fb2JqLT5zZ3QsIERNQV9CSURJUkVD
VElPTkFMKTsKIAl9CiB9CiAKQEAgLTY2LDExICs2NSw5IEBAIHN0YXRpYyB2b2lkIHN5bmNfZm9y
X2NwdShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmopCiAJc3RydWN0IGRldmljZSAqZGV2
ID0gbXNtX29iai0+YmFzZS5kZXYtPmRldjsKIAogCWlmIChnZXRfZG1hX29wcyhkZXYpICYmIElT
X0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewotCQlkbWFfc3luY19zZ19mb3JfY3B1KGRldiwgbXNt
X29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05B
TCk7CisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJ
RElSRUNUSU9OQUwpOwogCX0gZWxzZSB7Ci0JCWRtYV91bm1hcF9zZyhkZXYsIG1zbV9vYmotPnNn
dC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlk
bWFfdW5tYXBfc2d0YWJsZShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJRElSRUNUSU9OQUwpOwog
CX0KIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKaW5kZXggYWQ1OGNmZS4uZDMyMmIzOSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9pb21tdS5jCkBAIC00Myw3ICs0Myw3IEBAIHN0YXRpYyBpbnQgbXNtX2lv
bW11X21hcChzdHJ1Y3QgbXNtX21tdSAqbW11LCB1aW50NjRfdCBpb3ZhLAogCXN0cnVjdCBtc21f
aW9tbXUgKmlvbW11ID0gdG9fbXNtX2lvbW11KG1tdSk7CiAJc2l6ZV90IHJldDsKIAotCXJldCA9
IGlvbW11X21hcF9zZyhpb21tdS0+ZG9tYWluLCBpb3ZhLCBzZ3QtPnNnbCwgc2d0LT5uZW50cywg
cHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUoaW9tbXUtPmRvbWFpbiwgaW92YSwgc2d0
LCBwcm90KTsKIAlXQVJOX09OKCFyZXQpOwogCiAJcmV0dXJuIChyZXQgPT0gbGVuKSA/IDAgOiAt
RUlOVkFMOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
