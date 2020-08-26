Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3270C25279F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:44:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65D5461873
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:44:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F35F61957; Wed, 26 Aug 2020 06:44:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC9D666635;
	Wed, 26 Aug 2020 06:36:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 00D6161813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E4BF56601F; Wed, 26 Aug 2020 06:35:42 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 2DC0F61813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063534euoutp01b737899b674e8dd831d1eccb1cfeeb8d~uverscx3S1717217172euoutp01b
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063534euoutp01b737899b674e8dd831d1eccb1cfeeb8d~uverscx3S1717217172euoutp01b
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063534eucas1p2871cf4916187b9bc380232b26bd6865e~uverSnhkK0402704027eucas1p2g;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6E.4D.06318.5B2064F5; Wed, 26
 Aug 2020 07:35:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f~uveq-NYT81942019420eucas1p1m;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063533eusmtrp168812a4b34355f043831c99f380de8ca~uveq_iG8T1091110911eusmtrp1S;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-d8-5f4602b5b2b9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 50.D0.06314.5B2064F5; Wed, 26
 Aug 2020 07:35:33 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063533eusmtip25d907c392a9195b908baf25bf473b36a~uveqX7eyd0300803008eusmtip2u;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:54 +0200
Message-Id: <20200826063316.23486-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfyyUcRzue+97772O43Us35S027Kx5cdkvaaZjPZu/sg//ZGtdPLuWO7o
 zo+utbqdNB2HSy2RQtqJk1xSLuKII3XLj0njRDRTGePYSOrOi/57nufzfJ5nn+++OMI3sT3x
 ZEk6LZUIUwQYF23uWTMfeck6GR/YmBtKqs19LLKxpIFNVqnVKPm3WYOQwysLGPm0rptFVrSH
 kdbhKRapnx5hk0OGBxg5lD0AyPp3Fg6pvBFMWiZ6UdK4OMOOcKF0D3WAalutQKmWUguH0tfe
 wqhXq5Ns6mueiUW9qL5OjW1OI1TxqBZQb74oMKrwTyBV0FQLqGX9wVheHPd4Ip2SnElLA8LP
 c5N68jc4aUrny5XFxYgCDDuqgAMOiaNwtFzPUQEuzidqAOyd/b1NrACWLXSjDFkGcHzgF9hZ
 6ar8yWIGWgBHZ1qQ3ZUJ6wRmd2FEEFTNq7awO5FjC1Y72U0I0YrAKsO6LRfH3Yh4OGBIsHtQ
 4jCcvzuI2jGPCId1i2Uo0+YN6553IHbsYNNNeYUYo3/jQI2BbY+BRBQcKw1hZDf4w9TEYfAB
 2F+cv3UBJLIBnDLXcxiSD+CQsmT7nDA4bl7H7EEI4QsbDAGMfAKuDfcgTL4zHJ13tcuIDd5u
 vrct82DuTT7j9oGlpme7tcZPgwiDKZg7o8OY59EAqB0zYUXAu/R/WQUAtcCDzpCJRbQsWEJn
 +cuEYlmGROR/IVWsB7bv1b9pWnkN3m4kdAICBwInXgUWHc9nCzNlcnEngDgicOdFfuw/x+cl
 CuVXaGlqvDQjhZZ1gv04KvDgBVfNneUTImE6fZGm02jpzpSFO3gqgLh+vSAGWFz4SxzESBWV
 x/iKGltD2id4czVZ8s/B0i6lBQmMWHLXLekcs2Y390iuKpseF2UeOvNdvWR9Hxlnnrz05I7R
 qp/z3evxSC4ZWYzqMEh7P5xSNFfnLKuP+bl4xep8nLTavrzQaK8czbXTYdOCpn2u92vaFJrs
 LIG/AJUlCYP8EKlM+A9H7DbLWgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xe7pbmdziDfY+UrfoPXeSyWLjjPWs
 Fot6e1ks/m+byGxx5et7NouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfN4nLzRUaLtUfusls0
 tRhb3L13gsXi4IcnrA78HmvmrWH02PttAYvHzll32T02repk89j+7QGrx/3u40wem5fUe9z+
 95jZY/KN5Yweu282sHn0/zXw6NuyitHj8ya5AN4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0j
 E0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYxjPX/YC5r4KhZOnszcwHiFu4uRk0NCwETi8MLX
 TF2MXBxCAksZJbYs2ccEkZCRODmtgRXCFpb4c62LDaLoE6PEx7tXGUESbAKGEl1vIRIiAp2M
 EtO6P7KDOMwCx5glNj5+zwxSJSwQK/F10UV2EJtFQFXi7dRLLCA2r4CdxOoPs1kgVshLrN5w
 AKyeEyh+vLufDcQWErCVOL12BvMERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAiNq
 27Gfm3cwXtoYfIhRgINRiYd3AZtrvBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pz
 UosPMZoCHTWRWUo0OR8Y7Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqY
 ODilGhhVSyMMFBO4hNkYQq57ey+y1tgZ0mMnUL99W9yZ/T9/vL4eLJ34P9/748v+FXr/ZCw3
 1f2cIvf8KZsP51kO2+nLuHzu3O10m9Nbu/3yKY3HuRJ7Vi/JMDWc7XAndq6Sb+WJ1Ry3Le7N
 Cl1buy3rwRqVc1XifkfWvtkVsHf1n8Vxq2pN3ddtTHdSYinOSDTUYi4qTgQAYwLi+b4CAAA=
X-CMS-MailID: 20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f
X-Msg-Generator: CA
X-RootMTR: 20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 10/32] drm: mediatek: use common helper
 for a scatterlist contiguity check
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNoZWNraW5nIHRoZSBjb250aWd1aXR5IG9mIHRoZSBpbXBv
cnRlZCBkbWEtYnVmIGFuZApkbyB0aGlzIGNoZWNrIGJlZm9yZSBhbGxvY2F0aW5nIHJlc291cmNl
cywgc28gdGhlIGVycm9yIHBhdGggaXMgc2ltcGxlci4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8IDI4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCmluZGV4IDYxOTBjYzNiN2IwZC4uMzY1NGVjNzMy
MDI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwpAQCAtMjEyLDM3ICsy
MTIsMjEgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICptdGtfZ2VtX3ByaW1lX2ltcG9ydF9zZ190
YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoLCBzdHJ1Y3Qgc2dfdGFibGUgKnNnKQogewogCXN0cnVjdCBtdGtfZHJtX2dlbV9v
YmogKm10a19nZW07Ci0JaW50IHJldDsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnM7Ci0JdW5zaWdu
ZWQgaW50IGk7Ci0JZG1hX2FkZHJfdCBleHBlY3RlZDsKIAotCW10a19nZW0gPSBtdGtfZHJtX2dl
bV9pbml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOworCS8qIGNoZWNrIGlmIHRoZSBlbnRy
aWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91cyAqLworCWlmIChkcm1fcHJpbWVfZ2V0
X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCQlEUk1fRVJS
T1IoInNnX3RhYmxlIGlzIG5vdCBjb250aWd1b3VzIik7CisJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOworCX0KIAorCW10a19nZW0gPSBtdGtfZHJtX2dlbV9pbml0KGRldiwgYXR0YWNoLT5kbWFi
dWYtPnNpemUpOwogCWlmIChJU19FUlIobXRrX2dlbSkpCiAJCXJldHVybiBFUlJfQ0FTVChtdGtf
Z2VtKTsKIAotCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2ctPnNnbCk7Ci0JZm9yX2VhY2hf
c2coc2ctPnNnbCwgcywgc2ctPm5lbnRzLCBpKSB7Ci0JCWlmICghc2dfZG1hX2xlbihzKSkKLQkJ
CWJyZWFrOwotCi0JCWlmIChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3RlZCkgewotCQkJRFJN
X0VSUk9SKCJzZ190YWJsZSBpcyBub3QgY29udGlndW91cyIpOwotCQkJcmV0ID0gLUVJTlZBTDsK
LQkJCWdvdG8gZXJyX2dlbV9mcmVlOwotCQl9Ci0JCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Mo
cykgKyBzZ19kbWFfbGVuKHMpOwotCX0KLQogCW10a19nZW0tPmRtYV9hZGRyID0gc2dfZG1hX2Fk
ZHJlc3Moc2ctPnNnbCk7CiAJbXRrX2dlbS0+c2cgPSBzZzsKIAogCXJldHVybiAmbXRrX2dlbS0+
YmFzZTsKLQotZXJyX2dlbV9mcmVlOgotCWtmcmVlKG10a19nZW0pOwotCXJldHVybiBFUlJfUFRS
KHJldCk7CiB9CiAKIHZvaWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmopCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
