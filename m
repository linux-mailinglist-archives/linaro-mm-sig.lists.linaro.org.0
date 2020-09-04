Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5A425DA67
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:49:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58F6A66754
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:49:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4DA5D66768; Fri,  4 Sep 2020 13:49:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9105D66740;
	Fri,  4 Sep 2020 13:36:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C79F566747
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B4A7666753; Fri,  4 Sep 2020 13:35:18 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6B97066747
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:04 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133503euoutp02c7f8121e0d5c6db21b3c8d43ad7e330a~xmAgzmSwQ2842328423euoutp029
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133503euoutp02c7f8121e0d5c6db21b3c8d43ad7e330a~xmAgzmSwQ2842328423euoutp029
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133503eucas1p2c5b8774cd10d214618af91db641a78f4~xmAgbZ7rk1447814478eucas1p2q;
 Fri,  4 Sep 2020 13:35:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 21.11.06456.782425F5; Fri,  4
 Sep 2020 14:35:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133502eucas1p10c2344eef1f77b82c455215056fd5770~xmAgB2t020116001160eucas1p1y;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133502eusmtrp25a0e98b8339aded79c9ecf382d66e707~xmAgBH-Ja0977109771eusmtrp2C;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-4a-5f5242876b10
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E0.BE.06314.682425F5; Fri,  4
 Sep 2020 14:35:02 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133502eusmtip1d5af0b81300a8a7631cc0e8fd4073377~xmAfZq8YZ1624216242eusmtip1p;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:56 +0200
Message-Id: <20200904131711.12950-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTURjGO7sfu063btPo2Jcx+qAgbRR0wbKMqItEH0L/VGYzLxa6GbtZ
 KUXDSmXNSgsbo3RmaK7l59Iyam2la1lLl4pmMW1SZJmfszLacl6z/37Pc97nvO97OAQiNmPz
 iaOK44xSIUuR4AK0rumXY3X2ltj4Ndq2QCrXYedR1dpKjPLV5SFUm2cQp8rvNvIo38evGHUz
 /wylN0dSY229PKrG3YFRbxtu4NRIjw+h7j3/wKcsQ33YZhFtLDQC+vG4HqXrx3sw2nXRxqNr
 b5+lu71uhL7aWQboR10qnP6jM6P0JZMB0PUdhQg9WrN4d9A+wYZEJuXoCUYZEXVIcERXegk9
 9iHoVJbRhKhAu0ANAghIroOljzJxNRAQYvIOgK+s3QgnxgDMtTTxODE6KSbe8NWAmIpoahWc
 Xwago8qMzyR+lwzy/PfipBSqB9S4n0PICwC+yA3yM0IWINDg2ebnYPIQdNf7pupRchkc/9aH
 +llIRsEfrmt8br4weLfqKeLngEn/vrYP8zeDZAcfmpwuwBVtheWXL08HgmG/zTTNC6HvYRGP
 C5wDsNdxj88JDYBvM7XT6Uj43jGB+3dDyJWwsiGCs6NhgdeJciuLYOfAHG4BEcyvu45wthDm
 ZIm56uVQZ6uYaWtpcSIc0/BJcT/KPVAegJoLBdgVEKb730wPgAHMY9JYeRLDShXMyXBWJmfT
 FEnhh1PlNWDyWzV7bSMPgMeZYAUkASRBwlmbYuPFmOwEmy63AkggkhDhltfNB8XCRFl6BqNM
 jVempTCsFSwgUMk84dpbX+LEZJLsOJPMMMcY5b9THhEwXwWiN+rxPk3Dw+WWIsO71NqY7K4y
 +P3mbJPSo9qzuyuxuO3jdu/E/p+fLSJXy44YYVx8RVHgp21/ftLDhiWuuVKwFNWrV7Qa229V
 nK7zZsFFc1XiAy+7VT32KF/v2Dn7QIl1Y6suwR0a1hgOLDHDwH4jdO9Qxs71Oc92VZ8nk9US
 lD0ik65ClKzsL76WlwNSAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7ptTkHxBkdW6Fv0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBb/H71mtZg7qdZiwX5riy9XHjJZbHp8jdXi8q45bBafHvxntlh7
 5C67xcEPT1gd+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuix+2YDm8ff
 WftZPPq2rGL02H5tHrPH501yATxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZG
 pkr6djYpqTmZZalF+nYJehmzlvWxFNzlqWhbs4W5gfEqVxcjB4eEgIlEz+a8LkYuDiGBpYwS
 F26/YOxi5ASKy0icnNbACmELS/y51sUGUfSJUeLM13tsIAk2AUOJrrcQCRGBTkaJad0f2UEc
 ZoF5zBLLVx1mAqkSFoiT6DgwE8xmEVCV+PbmCQuIzStgJ/H9/hR2iBXyEqs3HGAGsTmB4ltn
 PAFbLSRgK/FhzmKWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGz7ZjPzfvYLy0
 MfgQowAHoxIPL4N9ULwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAh01
 kVlKNDkfGNl5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYyz78
 573D/V031uQ8j/0lF7U/782W7uvRztWXK75itJA9+k/4xQzlqwWh9z1YVpvaCitENnsuc4vp
 Yvivq3ZzkfrC2KMzpRk26l/dqj7hoP+P3auvp3x8tF9Ekf30xd7WR3/t41Y+CnQTN2Y+ck/k
 xjqhCepGC6flSK2Q+q/AEx0etkQk7LubEktxRqKhFnNRcSIAEvCk4rQCAAA=
X-CMS-MailID: 20200904133502eucas1p10c2344eef1f77b82c455215056fd5770
X-Msg-Generator: CA
X-RootMTR: 20200904133502eucas1p10c2344eef1f77b82c455215056fd5770
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133502eucas1p10c2344eef1f77b82c455215056fd5770
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133502eucas1p10c2344eef1f77b82c455215056fd5770@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 15/30] drm: rockchip: use common helper
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
cnRlZCBkbWEtYnVmLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5j
IHwgMTkgKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9nZW0uYwppbmRleCBiOTI3NWJhN2M1YTUuLjI5NzBlNTM0ZTJiYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCkBAIC00NjAsMjMgKzQ2MCw2IEBAIHN0
cnVjdCBzZ190YWJsZSAqcm9ja2NoaXBfZ2VtX3ByaW1lX2dldF9zZ190YWJsZShzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaikKIAlyZXR1cm4gc2d0OwogfQogCi1zdGF0aWMgdW5zaWduZWQgbG9u
ZyByb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19zaXplKHN0cnVjdCBzZ190YWJsZSAqc2d0LAot
CQkJCQkJICAgICBpbnQgY291bnQpCi17Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzOwotCWRtYV9h
ZGRyX3QgZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7Ci0JdW5zaWduZWQgaW50
IGk7Ci0JdW5zaWduZWQgbG9uZyBzaXplID0gMDsKLQotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBz
LCBjb3VudCwgaSkgewotCQlpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gZXhwZWN0ZWQpCi0JCQli
cmVhazsKLQkJZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzKSArIHNnX2RtYV9sZW4ocyk7Ci0J
CXNpemUgKz0gc2dfZG1hX2xlbihzKTsKLQl9Ci0JcmV0dXJuIHNpemU7Ci19Ci0KIHN0YXRpYyBp
bnQKIHJvY2tjaGlwX2dlbV9pb21tdV9tYXBfc2coc3RydWN0IGRybV9kZXZpY2UgKmRybSwKIAkJ
CSAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLApAQCAtNDk4LDcgKzQ4MSw3IEBA
IHJvY2tjaGlwX2dlbV9kbWFfbWFwX3NnKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sCiAJaWYgKCFj
b3VudCkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlpZiAocm9ja2NoaXBfc2dfZ2V0X2NvbnRpZ3Vv
dXNfc2l6ZShzZywgY291bnQpIDwgYXR0YWNoLT5kbWFidWYtPnNpemUpIHsKKwlpZiAoZHJtX3By
aW1lX2dldF9jb250aWd1b3VzX3NpemUoc2cpIDwgYXR0YWNoLT5kbWFidWYtPnNpemUpIHsKIAkJ
RFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIHNnX3RhYmxlIHRvIGNvbnRpZ3VvdXMgbGluZWFyIGFk
ZHJlc3MuXG4iKTsKIAkJZG1hX3VubWFwX3NnKGRybS0+ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMs
CiAJCQkgICAgIERNQV9CSURJUkVDVElPTkFMKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
