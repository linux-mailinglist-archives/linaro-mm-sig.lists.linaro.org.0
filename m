Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA101C5130
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:48:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82ECA66591
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:48:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73BE766592; Tue,  5 May 2020 08:48:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB53566055;
	Tue,  5 May 2020 08:46:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D1D4460F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B64D966075; Tue,  5 May 2020 08:46:28 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 9D68160B02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084625euoutp02ed28e75df8e8c4ac91832dbb3b8b125d~MFXrVpLv-2628726287euoutp02T
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084625euoutp02ed28e75df8e8c4ac91832dbb3b8b125d~MFXrVpLv-2628726287euoutp02T
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084625eucas1p1f6fe7b33f1925a4db4855b438fcc362a~MFXq_hPmI2423024230eucas1p1y;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8A.01.60698.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454~MFXqmhSpD2425224252eucas1p1v;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200505084624eusmtrp2a2ab3b28b8b1a7bffa5c945cc14fe791~MFXqgTchU0573005730eusmtrp2B;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-2a-5eb127e153f1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 81.21.07950.0E721BE5; Tue,  5
 May 2020 09:46:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084624eusmtip140abdf1c78ece3571430565e3f0623e1~MFXpt_CRY0686606866eusmtip1F;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:51 +0200
Message-Id: <20200505084614.30424-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djP87oP1TfGGWz9L27Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o7hsUlJzMstSi/TtErgymj/8YCxYqlpxaul39gbG
 VvkuRk4OCQETickz3jF3MXJxCAmsYJSYNP0iO4TzhVHi5vcbrBDOZ0aJ67M7mGBaFk3eD1W1
 nFHi9o8drHAtL3csYAepYhMwlOh628UGYosItDJKnOjlASliFljALPHzcxsjSEJYIEBi36/T
 YGNZBFQl/n5vBYvzCthKLN53lBlinbzE6g0HwGxOATuJx5fusIEMkhC4xi4x+cZjoAYOIMdF
 4uJSqI+EJV4d38IOYctI/N85nwmivplR4uG5tewQTg+jxOWmGYwQVdYSd879YgMZxCygKbF+
 lz5E2FHiX88bNoj5fBI33gqChJmBzEnbpjNDhHklOtqEIKrVJGYdXwe39uCFS1Dne0h8WbgU
 GkBHGSX+XW5insAoPwth2QJGxlWM4qmlxbnpqcXGeanlesWJucWleel6yfm5mxiBaev0v+Nf
 dzDu+5N0iFGAg1GJhzfi8/o4IdbEsuLK3EOMEhzMSiK8y35siBPiTUmsrEotyo8vKs1JLT7E
 KM3BoiTOa7zoZayQQHpiSWp2ampBahFMlomDU6qBUWUVn47RkjRrt7cCItZPJuiIhoQ0uZ24
 lyYqpmUWXchlcilxlyIf+3UFfoWUxVqW3WyHV9Wo87VaZj1hO+vtZnH8/sJlhnqff1tuvxxg
 E7rmY5KuoIFy04cHqj9j86rcF8U8rfbJX1Lw/OCyZOPl3aKhmV/dvaTOq01/uvhU9ySDPbvv
 bKtRYinOSDTUYi4qTgQAV5HhZlcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7oP1DfGGfyca2jRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQymj/8YCxYqlpxaul39gbGVvkuRk4OCQETiUWT97N3MXJx
 CAksZZR4eXAhM0RCRuLktAZWCFtY4s+1LjYQW0jgE6NE171SEJtNwFCi6y1InItDRKCTUWJa
 90ewScwCK5glXu2bywJSJSzgJ3G/uRFsKouAqsTf762MIDavgK3E4n1HobbJS6zecADM5hSw
 k3h86Q7UtkKJD+e/s05g5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMIq2Hfu5ZQdj
 17vgQ4wCHIxKPLwbvq6PE2JNLCuuzD3EKMHBrCTCu+zHhjgh3pTEyqrUovz4otKc1OJDjKZA
 R01klhJNzgdGeF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkYD
 Vc4VjuGTTrTqSGpe67ab7jan5Xkld7b27fTMLT80XH5d3nX/kNOWqCJx7UkZN+5M85MPlw1y
 fDPJM7fuyBmlO5kTbyp8cmO1SZ/skVAgYeYkvS4x9MUNQWHjgKk28+7/S5bue9DpEN88Q1tI
 wWX3ret75BskM1a7+qjdPvJi2YVbZWqFPEosxRmJhlrMRcWJAFJaOFq4AgAA
X-CMS-MailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 02/25] drm: core: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY2Fj
aGUuYyAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIHwgMTQgKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAg
ICAgICAgICAgIHwgMTMgKysrKysrKy0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2NhY2hlLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NhY2hlLmMKaW5kZXggMDNlMDFiMC4uNjNi
ZDQ5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jYWNoZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fY2FjaGUuYwpAQCAtMTI3LDcgKzEyNyw3IEBAIHN0YXRpYyB2b2lkIGRy
bV9jYWNoZV9mbHVzaF9jbGZsdXNoKHN0cnVjdCBwYWdlICpwYWdlc1tdLAogCQlzdHJ1Y3Qgc2df
cGFnZV9pdGVyIHNnX2l0ZXI7CiAKIAkJbWIoKTsgLypDTEZMVVNIIGlzIG9yZGVyZWQgb25seSBi
eSB1c2luZyBtZW1vcnkgYmFycmllcnMqLwotCQlmb3JfZWFjaF9zZ19wYWdlKHN0LT5zZ2wsICZz
Z19pdGVyLCBzdC0+bmVudHMsIDApCisJCWZvcl9lYWNoX3NnX3BhZ2Uoc3QtPnNnbCwgJnNnX2l0
ZXIsIHN0LT5vcmlnX25lbnRzLCAwKQogCQkJZHJtX2NsZmx1c2hfcGFnZShzZ19wYWdlX2l0ZXJf
cGFnZSgmc2dfaXRlcikpOwogCQltYigpOyAvKk1ha2Ugc3VyZSB0aGF0IGFsbCBjYWNoZSBsaW5l
IGVudHJ5IGlzIGZsdXNoZWQqLwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9zaG1lbV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
CmluZGV4IGRmMzFlNTcuLmNmY2ZjMGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtX3NobWVtX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jCkBAIC0xMTcsOCArMTE3LDggQEAgdm9pZCBkcm1fZ2VtX3NobWVtX2ZyZWVfb2JqZWN0
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCQlrdmZyZWUoc2htZW0tPnBhZ2VzKTsKIAl9
IGVsc2UgewogCQlpZiAoc2htZW0tPnNndCkgewotCQkJZG1hX3VubWFwX3NnKG9iai0+ZGV2LT5k
ZXYsIHNobWVtLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHNobWVtLT5zZ3QtPm5lbnRzLCBETUFfQklE
SVJFQ1RJT05BTCk7CisJCQlkbWFfdW5tYXBfc2d0YWJsZShvYmotPmRldi0+ZGV2LCBzaG1lbS0+
c2d0LAorCQkJCQkgIERNQV9CSURJUkVDVElPTkFMKTsKIAkJCXNnX2ZyZWVfdGFibGUoc2htZW0t
PnNndCk7CiAJCQlrZnJlZShzaG1lbS0+c2d0KTsKIAkJfQpAQCAtMzk1LDggKzM5NSw3IEBAIHZv
aWQgZHJtX2dlbV9zaG1lbV9wdXJnZV9sb2NrZWQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmop
CiAKIAlXQVJOX09OKCFkcm1fZ2VtX3NobWVtX2lzX3B1cmdlYWJsZShzaG1lbSkpOwogCi0JZG1h
X3VubWFwX3NnKG9iai0+ZGV2LT5kZXYsIHNobWVtLT5zZ3QtPnNnbCwKLQkJICAgICBzaG1lbS0+
c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCWRtYV91bm1hcF9zZ3RhYmxlKG9iai0+
ZGV2LT5kZXYsIHNobWVtLT5zZ3QsIERNQV9CSURJUkVDVElPTkFMKTsKIAlzZ19mcmVlX3RhYmxl
KHNobWVtLT5zZ3QpOwogCWtmcmVlKHNobWVtLT5zZ3QpOwogCXNobWVtLT5zZ3QgPSBOVUxMOwpA
QCAtNjIzLDEyICs2MjIsMTcgQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fZ2VtX3NobWVtX2dldF9w
YWdlc19zZ3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCWdvdG8gZXJyX3B1dF9wYWdl
czsKIAl9CiAJLyogTWFwIHRoZSBwYWdlcyBmb3IgdXNlIGJ5IHRoZSBoL3cuICovCi0JZG1hX21h
cF9zZyhvYmotPmRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9O
QUwpOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShvYmotPmRldi0+ZGV2LCBzZ3QsIERNQV9CSURJ
UkVDVElPTkFMKTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9mcmVlX3NndDsKIAogCXNobWVtLT5z
Z3QgPSBzZ3Q7CiAKIAlyZXR1cm4gc2d0OwogCitlcnJfZnJlZV9zZ3Q6CisJc2dfZnJlZV90YWJs
ZShzZ3QpOworCWtmcmVlKHNndCk7CiBlcnJfcHV0X3BhZ2VzOgogCWRybV9nZW1fc2htZW1fcHV0
X3BhZ2VzKHNobWVtKTsKIAlyZXR1cm4gRVJSX1BUUihyZXQpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCmluZGV4
IDI4Mjc3NGUuLjNlN2NiMDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTYxNyw2ICs2MTcsNyBAQCBz
dHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoLAogewogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5k
bWFidWYtPnByaXY7CiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7CisJaW50IHJldDsKIAogCWlmIChX
QVJOX09OKGRpciA9PSBETUFfTk9ORSkpCiAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwpAQCAt
NjI2LDExICs2MjcsMTIgQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fZ2VtX21hcF9kbWFfYnVmKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAllbHNlCiAJCXNndCA9IG9iai0+ZGV2
LT5kcml2ZXItPmdlbV9wcmltZV9nZXRfc2dfdGFibGUob2JqKTsKIAotCWlmICghZG1hX21hcF9z
Z19hdHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpciwKLQkJCSAgICAg
IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlX2F0dHJz
KGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwKKwkJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7
CisJaWYgKHJldCkgewogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtmcmVlKHNndCk7Ci0JCXNn
dCA9IEVSUl9QVFIoLUVOT01FTSk7CisJCXNndCA9IEVSUl9QVFIocmV0KTsKIAl9CiAKIAlyZXR1
cm4gc2d0OwpAQCAtNjUyLDggKzY1NCw3IEBAIHZvaWQgZHJtX2dlbV91bm1hcF9kbWFfYnVmKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlpZiAoIXNndCkKIAkJcmV0dXJuOwog
Ci0JZG1hX3VubWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywg
ZGlyLAotCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJZG1hX3VubWFwX3NndGFibGVf
YXR0cnMoYXR0YWNoLT5kZXYsIHNndCwgZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKIAlz
Z19mcmVlX3RhYmxlKHNndCk7CiAJa2ZyZWUoc2d0KTsKIH0KQEAgLTk3NSw3ICs5NzYsNyBAQCBp
bnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc3RydWN0IHNnX3RhYmxlICpzZ3Qs
IHN0cnVjdCBwYWdlICoqcGFnZXMsCiAJICovCiAJcGFnZV9pbmRleCA9IDA7CiAJZG1hX2luZGV4
ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGNvdW50KSB7CisJ
Zm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm9yaWdfbmVudHMsIGNvdW50KSB7CiAJCXBh
Z2VfbGVuID0gc2ctPmxlbmd0aDsKIAkJcGFnZSA9IHNnX3BhZ2Uoc2cpOwogCQlkbWFfbGVuID0g
c2dfZG1hX2xlbihzZyk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
