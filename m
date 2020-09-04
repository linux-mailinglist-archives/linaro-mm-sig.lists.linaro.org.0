Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C6425DA38
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:44:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 717036675C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:44:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6275F66760; Fri,  4 Sep 2020 13:44:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9368766768;
	Fri,  4 Sep 2020 13:36:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2655760DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 16BF866752; Fri,  4 Sep 2020 13:35:12 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6EBBF60DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:01 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133500euoutp02ef1089891fe2cd736ec5ea9d7019cde9~xmAd-Rn5k2842328423euoutp022
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133500euoutp02ef1089891fe2cd736ec5ea9d7019cde9~xmAd-Rn5k2842328423euoutp022
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133500eucas1p193aed082236213c3dc90e2875068ab4b~xmAdq5fdD2307423074eucas1p1O;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 55.39.06318.482425F5; Fri,  4
 Sep 2020 14:35:00 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133459eucas1p10b98861f36318ef07dcbc58f7e4ad5d1~xmAdHPSf00114101141eucas1p10;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133459eusmtrp261dc1c68676e4f23158f3dcf246acd65~xmAdGh6F70905709057eusmtrp2k;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-96-5f5242843853
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3B.AE.06314.382425F5; Fri,  4
 Sep 2020 14:34:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133459eusmtip113f586ab99fbf448d92bbaa77cfb43f6~xmAcgZabh1941819418eusmtip1H;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:51 +0200
Message-Id: <20200904131711.12950-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsWy7djP87otTkHxBrdbhCx6z51kstg4Yz2r
 xaLeXhaL/9smMltc+fqezWLl6qNMFgv2W1t8ufKQyWLT42usFpd3zWGzuNx8kdFi7ZG77BZN
 LcYWd++dYLE4+OEJqwO/x5p5axg99n5bwOKxc9Zddo9NqzrZPLZ/e8Dqcb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB79fw08+rasYvT4vEkugDeKyyYlNSezLLVI3y6BK+P+LYWC53wV2y4t
 YGtgXM/TxcjJISFgItHwZStzFyMXh5DACkaJDS0L2SCcL4wS+z/MYIVwPjNKtM1vZoFpeXNq
 F1TVckaJlonnWOFa7jdvZwSpYhMwlOh628UGYosItDJKnOjlASliFtjDLLFo1y+wUcICCRLX
 n7aDFbEIqEqsePkBzOYVsJNouXWCHWKdvMTqDQeYQWxOoPjWGU/AtkkI3GKX2L23hxmiyEXi
 6ttnUA3CEq+Ob4GyZST+75zPBNHQzCjx8Nxadginh1HictMMRogqa4k7534BreYAuk9TYv0u
 fYiwo8STS5MZQcISAnwSN94KgoSZgcxJ26YzQ4R5JTrahCCq1SRmHV8Ht/bghUtQp3lI3H0/
 CRrCExklrlw7yDSBUX4WwrIFjIyrGMVTS4tz01OLjfNSy/WKE3OLS/PS9ZLzczcxAhPY6X/H
 v+5g3Pcn6RCjAAejEg8vg31QvBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosP
 MUpzsCiJ8xovehkrJJCeWJKanZpakFoEk2Xi4JRqYKx7uXD/Edtlcu9Msn/8a1iwv1tl9e6J
 6wsP6oe9aOo7wSX0l1nGY07apqWrvl9/k38pJdUr/OSHvveMPtbSQuqW13MPJ5zfND8jfurM
 5erxrj4+NX9Nn8iyPTv4J7D0n1RXHqtkglzcjaINRR8/CVd9Nrp4eOK12twmsycX01b8aTNc
 LGPnv1mJpTgj0VCLuag4EQCikimuXAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xu7rNTkHxBqtna1n0njvJZLFxxnpW
 i0W9vSwW/7dNZLa48vU9m8XK1UeZLBbst7b4cuUhk8Wmx9dYLS7vmsNmcbn5IqPF2iN32S2a
 Wowt7t47wWJx8MMTVgd+jzXz1jB67P22gMVj56y77B6bVnWyeWz/9oDV4373cSaPzUvqPW7/
 e8zsMfnGckaP3Tcb2Dz6/xp49G1ZxejxeZNcAG+Unk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6R
 iaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsb9WwoFz/kqtl1awNbAuJ6ni5GTQ0LAROLNqV1s
 XYxcHEICSxklHn9+xw6RkJE4Oa2BFcIWlvhzrQuq6BOjxKr7fWBFbAKGEl1vIRIiAp2MEtO6
 P7KDOMwCx5glNj5+zwxSJSwQJ/H/yj8mEJtFQFVixcsPbCA2r4CdRMutE1Dr5CVWbzgAVs8J
 FN864wnYaiEBW4kPcxazTGDkW8DIsIpRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMwnrYd+7l5
 B+OljcGHGAU4GJV4eBnsg+KFWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjR
 FOioicxSosn5wFjPK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA
 qLlcdXfv2fXrhA/OOmqmWFewNZJZj//YdXV/zYT0TbkpbKHX+A+G/eg1vOCZ7f3gX3eC2JXA
 kKv2MQ9ztki9XjxdLr2j5KngfwfHPTHZS+4ae1+Krc86PdGLUzY99UdepcWiVhu1pMm7brD+
 eLgh8sN/Z/Zbd46+6frXtPxP4K6obNeOyVztSizFGYmGWsxFxYkAKTW6dr0CAAA=
X-CMS-MailID: 20200904133459eucas1p10b98861f36318ef07dcbc58f7e4ad5d1
X-Msg-Generator: CA
X-RootMTR: 20200904133459eucas1p10b98861f36318ef07dcbc58f7e4ad5d1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133459eucas1p10b98861f36318ef07dcbc58f7e4ad5d1
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133459eucas1p10b98861f36318ef07dcbc58f7e4ad5d1@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 10/30] drm: mediatek: use common helper
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
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFJvYmluIE11
cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+CkFja2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVu
a3VhbmcuaHVAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Ry
bV9nZW0uYyB8IDI4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2dlbS5jCmluZGV4IDYxOTBjYzNiN2IwZC4uMzY1NGVjNzMyMDI5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwpAQCAtMjEyLDM3ICsyMTIsMjEgQEAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICptdGtfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAogCQkJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLCBzdHJ1
Y3Qgc2dfdGFibGUgKnNnKQogewogCXN0cnVjdCBtdGtfZHJtX2dlbV9vYmogKm10a19nZW07Ci0J
aW50IHJldDsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnM7Ci0JdW5zaWduZWQgaW50IGk7Ci0JZG1h
X2FkZHJfdCBleHBlY3RlZDsKIAotCW10a19nZW0gPSBtdGtfZHJtX2dlbV9pbml0KGRldiwgYXR0
YWNoLT5kbWFidWYtPnNpemUpOworCS8qIGNoZWNrIGlmIHRoZSBlbnRyaWVzIGluIHRoZSBzZ190
YWJsZSBhcmUgY29udGlndW91cyAqLworCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6
ZShzZykgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCQlEUk1fRVJST1IoInNnX3RhYmxlIGlz
IG5vdCBjb250aWd1b3VzIik7CisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOworCX0KIAorCW10
a19nZW0gPSBtdGtfZHJtX2dlbV9pbml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOwogCWlm
IChJU19FUlIobXRrX2dlbSkpCiAJCXJldHVybiBFUlJfQ0FTVChtdGtfZ2VtKTsKIAotCWV4cGVj
dGVkID0gc2dfZG1hX2FkZHJlc3Moc2ctPnNnbCk7Ci0JZm9yX2VhY2hfc2coc2ctPnNnbCwgcywg
c2ctPm5lbnRzLCBpKSB7Ci0JCWlmICghc2dfZG1hX2xlbihzKSkKLQkJCWJyZWFrOwotCi0JCWlm
IChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3RlZCkgewotCQkJRFJNX0VSUk9SKCJzZ190YWJs
ZSBpcyBub3QgY29udGlndW91cyIpOwotCQkJcmV0ID0gLUVJTlZBTDsKLQkJCWdvdG8gZXJyX2dl
bV9mcmVlOwotCQl9Ci0JCWV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19kbWFfbGVu
KHMpOwotCX0KLQogCW10a19nZW0tPmRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2ctPnNnbCk7
CiAJbXRrX2dlbS0+c2cgPSBzZzsKIAogCXJldHVybiAmbXRrX2dlbS0+YmFzZTsKLQotZXJyX2dl
bV9mcmVlOgotCWtmcmVlKG10a19nZW0pOwotCXJldHVybiBFUlJfUFRSKHJldCk7CiB9CiAKIHZv
aWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
