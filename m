Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B7B1D1681
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:54:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6094965F93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:54:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4E1BB65FAF; Wed, 13 May 2020 13:54:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09D82664F5;
	Wed, 13 May 2020 13:35:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3D9D165F96
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 318D56618A; Wed, 13 May 2020 13:34:45 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 92CD765F96
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:13 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312euoutp018da6adc8cdc27958bd68683988491a8f~OmcWwzvuO2146121461euoutp01J
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133312euoutp018da6adc8cdc27958bd68683988491a8f~OmcWwzvuO2146121461euoutp01J
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eucas1p16340b6ab9117a7a566eae1f10d7cd477~OmcWdqnBl2351423514eucas1p1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FE.C5.61286.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375~OmcWEGqe42350623506eucas1p1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eusmtrp17dc4ab0646eab5d47fd06026993facb4~OmcWDYKbj1050610506eusmtrp1P;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-5f-5ebbf7185db5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F9.1A.08375.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133311eusmtip13c56d5e5984716aad8f7f67e38b9ce08~OmcVQ2X460693306933eusmtip1D;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:28 +0200
Message-Id: <20200513133245.6408-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHO7v3bnfT2XUKnizSBiUK+aAHt2xhIXUpiv6TitSlFzWdyq5a
 RtJS0pqPTPGB1ZiPNB/TZbaFEurUNAwzFfGZb9KZFeosg1yb1+y/z/d7vj++v3M4OCJqwZzx
 iOg4Wh4tjRJzBaju3frHg/BnU6B3m9KFzOx5zyFfFtZhpFn3GCEHTN+5ZGV1B4c0Ty9i5LOc
 JFLd7EuuDkxxyPqZQYzsb3zKJZcnzQipaR/nka0/ZjE/O6pGVQOot2tqlNKvTWLURHonh3pV
 dpca3ZhBqNyhCkA1DSu41J+iZpTKaqgClH5QhVAr9Xsv2V4RnAiloyISaLnXyWBBeEltF4hN
 sbulz9NyFOCLjRLwcUgchrW6DqAEAlxEvADQOPEEZcUqgGXJaoQVKwA+N4xy/o1omka2UhUA
 rmmGedsjLaPVmDXFJXygcknJtbIjcR/ArkxbKyNEPgKrTGes7EAEwWyTfjOPEvuhNkvFs7KQ
 kMBPqhYu2+YCq7UtiJX5Ft841rzZDIlBHizIL8DYkD/s16i32AEaOxt4LO+B3bkZWwMpAE71
 aHisyACwP7kQsClfONbz21KHW9Zzh3WNXqx9ChZv9G3akLCDQ0v27AXsYI6uAGFtIXyQKmLT
 B2BRZ+12bWtvH8IyBRVp5Vuv1QbgUr6Rkw1civ6XqQGoAk50PCMLoxmfaPqmJyOVMfHRYZ4h
 MbJ6YPlX3Rudy2+Aqe+6ARA4ENsKyZGmQBEmTWASZQYAcUTsKLxYZ7GEodLE27Q8JkgeH0Uz
 BrAbR8VOwkMlC9dERJg0jo6k6Vha/u+Ug/OdFUCrEHY3J+coj1z+/DDd3iU1ScDsGpzsOztf
 eWwuNXN8X3HkOTDrGhuUXZ7agfqtBH1zdZfMu5n1xy/ssMn4IOGPrS+Xulb635MUl3mnhXSE
 3+GnHF3wiH9t1urCpxeDbUodvAR5JjfUcFoYINkZ0K6auzFlP/Er9irXaDz/9VGvGGXCpT4e
 iJyR/gVAyx62UwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7oS33fHGTR8YrHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2Cw+PfjPbLH2
 yF12i4MfnrA68HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo+/
 s/azePRtWcXosf3aPGaPz5vkAnii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62M
 TJX07WxSUnMyy1KL9O0S9DIWrTvBWNDMV7F96gamBsbn3F2MnBwSAiYSa3ffYuli5OIQEljK
 KPGxvY0VIiEjcXJaA5QtLPHnWhcbRNEnRolZB76zgyTYBAwlut5CJEQEOhklpnV/ZAdxmAXm
 MUssX3WYqYuRg0NYIFbizO8akAYWAVWJDX3zwJp5BWwlLs47wAaxQV5i9YYDzCA2J1D81Z39
 LCC2kEC+xN7F+9gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg924793LyD8dLG
 4EOMAhyMSjy8Frd2xwmxJpYVV+YeYpTgYFYS4fVbDxTiTUmsrEotyo8vKs1JLT7EaAp01ERm
 KdHkfGBk55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYNTdupiv
 +rL9JGG5aYknGtXvrFb8EXz50qy3YR/j9IJnGK/qeMm9c+tnxzlh4r1rN+5643zj/dPkHdKe
 01sfNoq01xzgm1TQVJOf9XxDoM4Dp+NV8myLmKy1E6/yTfs7W2P6VdfF/msvlfnezfm6407d
 797Eo9XP/N/sFY+6FunFxRLaeV7CQlKJpTgj0VCLuag4EQDTlMswtAIAAA==
X-CMS-MailID: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
X-Msg-Generator: CA
X-RootMTR: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133312eucas1p15e5e3bb3ba8e74b923fdccc7decab375@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 21/38] drm: rockchip: use common helper
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
c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY1
IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlz
dXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwNTEz
MTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIHwgMTkgKy0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwppbmRleCAwZDE4ODQ2Li4y
MWY4Y2IyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMK
QEAgLTQ2MCwyMyArNDYwLDYgQEAgc3RydWN0IHNnX3RhYmxlICpyb2NrY2hpcF9nZW1fcHJpbWVf
Z2V0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBzZ3Q7CiB9
CiAKLXN0YXRpYyB1bnNpZ25lZCBsb25nIHJvY2tjaGlwX3NnX2dldF9jb250aWd1b3VzX3NpemUo
c3RydWN0IHNnX3RhYmxlICpzZ3QsCi0JCQkJCQkgICAgIGludCBjb3VudCkKLXsKLQlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnM7Ci0JZG1hX2FkZHJfdCBleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHNn
dC0+c2dsKTsKLQl1bnNpZ25lZCBpbnQgaTsKLQl1bnNpZ25lZCBsb25nIHNpemUgPSAwOwotCi0J
Zm9yX2VhY2hfc2coc2d0LT5zZ2wsIHMsIGNvdW50LCBpKSB7Ci0JCWlmIChzZ19kbWFfYWRkcmVz
cyhzKSAhPSBleHBlY3RlZCkKLQkJCWJyZWFrOwotCQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNz
KHMpICsgc2dfZG1hX2xlbihzKTsKLQkJc2l6ZSArPSBzZ19kbWFfbGVuKHMpOwotCX0KLQlyZXR1
cm4gc2l6ZTsKLX0KLQogc3RhdGljIGludAogcm9ja2NoaXBfZ2VtX2lvbW11X21hcF9zZyhzdHJ1
Y3QgZHJtX2RldmljZSAqZHJtLAogCQkJICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gsCkBAIC00OTgsNyArNDgxLDcgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcm9ja2NoaXBfc2df
Z2V0X2NvbnRpZ3VvdXNfc2l6ZShzdHJ1Y3Qgc2dfdGFibGUgKnNndCwKIAlpZiAoIWNvdW50KQog
CQlyZXR1cm4gLUVJTlZBTDsKIAotCWlmIChyb2NrY2hpcF9zZ19nZXRfY29udGlndW91c19zaXpl
KHNnLCBjb3VudCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCWlmIChkcm1fcHJpbWVfZ2V0
X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgewogCQlEUk1fRVJS
T1IoImZhaWxlZCB0byBtYXAgc2dfdGFibGUgdG8gY29udGlndW91cyBsaW5lYXIgYWRkcmVzcy5c
biIpOwogCQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKIAkJCSAg
ICAgRE1BX0JJRElSRUNUSU9OQUwpOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
