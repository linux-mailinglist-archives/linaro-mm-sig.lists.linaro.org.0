Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA741FF7F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:50:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F171766572
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:50:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E41306654B; Thu, 18 Jun 2020 15:50:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57D6D665E0;
	Thu, 18 Jun 2020 15:41:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 59F1F6659B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4BE1B665AB; Thu, 18 Jun 2020 15:40:33 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C68516659B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:23 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154022euoutp0174813530687bdc42218c386c5baff23f~ZrZqeVKtj1844818448euoutp013
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154022euoutp0174813530687bdc42218c386c5baff23f~ZrZqeVKtj1844818448euoutp013
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154022eucas1p1cc2c3555a8b3a71e30ddd163b7e2b4df~ZrZqLudAu1755717557eucas1p1G;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E2.1F.61286.6EA8BEE5; Thu, 18
 Jun 2020 16:40:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154022eucas1p1a8136b9677ac6a98ac47a3154ab0c763~ZrZp8yY471545815458eucas1p1S;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154022eusmtrp29f126925ca53016633b0dde40b5af358~ZrZp8GBKM0370403704eusmtrp2h;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-cb-5eeb8ae62003
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 79.EE.08375.6EA8BEE5; Thu, 18
 Jun 2020 16:40:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154021eusmtip160203d7d536539124d9640b161f7055a~ZrZpQHKd80744107441eusmtip1z;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:33 +0200
Message-Id: <20200618153956.29558-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsWy7djP87rPul7HGXR+lrXoPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oLpuU1JzMstQifbsEroyuvzuYCx5wVtyY
 8Jq5gXEKRxcjJ4eEgInEqrZ/7F2MXBxCAisYJY60L2WGcL4wSlyZOw/K+cwoMfPaXcYuRg6w
 lj+7xEG6hQSWA8X/qsI1zDqykx0kwSZgKNH1tosNxBYRaGWUONHLA1LELLCHWWLRrl8sIAlh
 gXCJbwf2MYPYLAKqEjfvzgGzeQXsJN41bmGFuE9eYvWGA2BxTqD46eOtrCCDJATusUu8WdnP
 BFHkIrGxeysLhC0s8er4FnYIW0bi/875TBANzYwSD8+tZYdwehglLjfNYISospa4c+4XG8hv
 zAKaEut36UOEHSXmru1gh3iZT+LGW0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwiRnC
 9pDo27OKBRJCExkl+n/OY53AKD8LYdkCRsZVjOKppcW56anFhnmp5XrFibnFpXnpesn5uZsY
 genr9L/jn3Ywfr2UdIhRgINRiYfXIfx1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lj
 i0pzUosPMUpzsCiJ8xovehkrJJCeWJKanZpakFoEk2Xi4JRqYFR8cF6nkPvzhOVht76vNyvP
 7nZbX6W+pya7Vdjoe+Qvr+aJ982Mcy2UuC7+3cRW8ex3T8upF9sYzPTWWOy0zjf/F2ywIF9X
 TfHKpCUP6mLCpm0+Gpu+dI9Pg/k3lyeGNb/0d54wafpht2TPW6WVZ+S0BDcc8S/Vv3dtwoOy
 NtMl0lcZf+ckvFFiKc5INNRiLipOBAB33GSmWwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xu7rPul7HGfS957XoPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0j
 E0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyuvzuYCx5wVtyY8Jq5gXEKRxcjB4eEgInEn13i
 XYycHEICSxklDrwvBbElBGQkTk5rYIWwhSX+XOti62LkAqr5xCgxcTWIw8nBJmAo0fUWIiEi
 0MkoMa37IzuIwyxwjFli4+P3zCBVwgKhEk/mHgPrYBFQlbh5dw5YnFfATuJd4xaoFfISqzcc
 AItzAsVPH29lhTjJVuL5hza2CYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRG07Zj
 PzfvYLy0MfgQowAHoxIP74uQ13FCrIllxZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUkt
 PsRoCnTURGYp0eR8YKTnlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+Lg
 lGpgtLr0dOdTd/EVLFnJyjVRC/5uXLvcdPKfH9+Wuy2cZnp/m4VsBpuLwFox7rn/e9/Ye/8z
 y5f/+SP3iut55ssvnd+xOezSmPm+JIv3srOC8PlzSjfueS1zXt2yYkHB78cGXvs1k1++fNnz
 6Yb6RkELZ501u85LlTeZNW7zSwu4oX1K5lNk7s3LykosxRmJhlrMRcWJAI8Nqhm8AgAA
X-CMS-MailID: 20200618154022eucas1p1a8136b9677ac6a98ac47a3154ab0c763
X-Msg-Generator: CA
X-RootMTR: 20200618154022eucas1p1a8136b9677ac6a98ac47a3154ab0c763
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154022eucas1p1a8136b9677ac6a98ac47a3154ab0c763
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154022eucas1p1a8136b9677ac6a98ac47a3154ab0c763@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 12/36] drm: mediatek: use common helper
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
