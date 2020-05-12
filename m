Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCE01CF1A8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:32:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40C6D61892
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:32:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E9FE618C8; Tue, 12 May 2020 09:32:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9FE06624C;
	Tue, 12 May 2020 09:06:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 646DC66464
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 558F165F94; Tue, 12 May 2020 09:06:21 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 9A60265F94
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:17 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116euoutp01a4d482fb9f94058530ad4d9ff0e7c24d~OPFo-_pA12628826288euoutp01W
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090116euoutp01a4d482fb9f94058530ad4d9ff0e7c24d~OPFo-_pA12628826288euoutp01W
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116eucas1p16a0359c180cfb6683c7f57acfd80b160~OPForFGuZ3053030530eucas1p1i;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2F.57.61286.CD56ABE5; Tue, 12
 May 2020 10:01:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eucas1p2089d6eb7aa6bad4d2cbc2875c175873f~OPFoRHXTC2091220912eucas1p2y;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116eusmtrp197fa74059f4a4853a6e0110c21fa5b19~OPFoQcF2W0183401834eusmtrp1h;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-70-5eba65dc5dda
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 87.F2.07950.BD56ABE5; Tue, 12
 May 2020 10:01:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090115eusmtip1c346d1cf1b9749bd8cbc614d27033b57~OPFnqNbVH1181011810eusmtip1l;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:35 +0200
Message-Id: <20200512090058.14910-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHe885Ozsup6dp+GKaNTJIzEsKHVDEIOQIfrAsLCV15kElp7Kp
 ZYR5S21qlgMTkRILTZ3XzHQa5kg3MWWpeSGvTYJEs7wstJptnlnffs/vef48Dy8vgQo0HHsi
 PjGFkSSKEoQ4D+sY2B45PcMoIzyG5Yep4pFBhGotb+ZQ1cXFGLXb8QilxrfWcKquoR+hqnp9
 qM3xRYRq001wqDFlJU6N5XwAVOO7WS6VnetFzc5pMKrv+xLH35pWPFEA+o2+CqO7Kma5dFv9
 fZx+rV/g0POFaoR++fwu/cmgQ2n5VC2gu6czcbrkjwf9oL0e0BttR4P5YTzfGCYhPo2RuPtF
 8eIWxn7gyZUHbw1/04FMoLSQAQsCkt6wZroMlwEeISBfAKjK2uCwxSaAv4Y/I2yxAeBGzSR3
 P6JRdWJsoxbAPv0KZmrsRVoWTpgYJz2hbFWGm9iWvAegptjSFEDJHhRWK3f2AjZkKNSuLaEm
 xkhnmDe5gpiYT/rBwRKleZsTbGh5uzdjYfTzT39jrJ/jwoV8wPJ52N08ZJ63gcvqdjM7wCF5
 0d6lkMwBcHGkkcsWRQCOZZeb0z5wZmTHeCphPO8UbFa6s/ocfF+bj5k0JK3g1Oohk0aNWNrx
 GGU1HxbkCdjpk7BC3fRvbZ92FGWZhjmrrebH6gdQ8VODPQROFf+XVQFQD+yYVKk4lpF6JjI3
 3aQisTQ1MdbtepK4DRj/15BBvd4JtkajVYAkgNCSX3CmK0LAEaVJ08UqAAlUaMvPjTcqfowo
 /TYjSYqUpCYwUhU4QmBCO75X9ddrAjJWlMLcYJhkRrLfRQgL+0wgX1dGh2HySsO2VsEUOQYF
 gaDtWkOga5Om1cen32Eg6dXFqIkQSel6ry78yqWsCl00L2OuLBySNaFp2q7uLNT52W4wepbx
 DYoMLjywNR/oKNy+YHDNyF4O+BhXqa1LDmkduqqIdrEuuzw6afVFf0zsr+5BLO8ct0qyS7P3
 DhBi0jiRpwsqkYr+AtRYEstbAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xu7q3U3fFGZw7bWPRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehkPLn9kK5jDXXH23WPGBsZdnF2MnBwSAiYSJw7t
 YOli5OIQEljKKLH20htmiISMxMlpDawQtrDEn2tdbBBFnxgl3u85CJZgEzCU6HoLkRAR6GSU
 mNb9kR3EYRY4xiyx8fF7sFHCAqESjd/Ps4HYLAKqEm3X3zCB2LwCdhIn+3exQ6yQl1i94QBY
 PSdQ/P78PywgtpBAocSjq29ZJjDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYUduO
 /dyyg7HrXfAhRgEORiUe3g6jnXFCrIllxZW5hxglOJiVRHhbMoFCvCmJlVWpRfnxRaU5qcWH
 GE2BjprILCWanA+M9rySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxS
 DYzcZ54IKl/4ltzlyN3+c5u4Q9jyy/+d4nWuvNiRzV02a65SkujS8BNNUT0ix5PlV0tfvr/8
 QOWpHle5qq6AazOnL7l5LnoKp3VlTM+Tqwvz2JryFyyu2y5yvWNF/MQTVbkTZs89IDR5dWP5
 1D/1r3l+R31ReS783HU/e8uHU292rCs48ps94sEPJZbijERDLeai4kQA7bBGYr4CAAA=
X-CMS-MailID: 20200512090116eucas1p2089d6eb7aa6bad4d2cbc2875c175873f
X-Msg-Generator: CA
X-RootMTR: 20200512090116eucas1p2089d6eb7aa6bad4d2cbc2875c175873f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090116eucas1p2089d6eb7aa6bad4d2cbc2875c175873f
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090116eucas1p2089d6eb7aa6bad4d2cbc2875c175873f@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 15/38] drm: mediatek: use common helper
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
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNl
ZSAnW1BBVENIIHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9y
aWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZl
bC8yMDIwMDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgOSArKy0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwppbmRleCA2YzM0YzA2Li4xNGZjZDQ4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwpAQCAtMjMzLDkgKzIzMyw3IEBAIHZvaWQg
Km10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiB7CiAJ
c3RydWN0IG10a19kcm1fZ2VtX29iaiAqbXRrX2dlbSA9IHRvX210a19nZW1fb2JqKG9iaik7CiAJ
c3RydWN0IHNnX3RhYmxlICpzZ3Q7Ci0Jc3RydWN0IHNnX3BhZ2VfaXRlciBpdGVyOwogCXVuc2ln
bmVkIGludCBucGFnZXM7Ci0JdW5zaWduZWQgaW50IGkgPSAwOwogCiAJaWYgKG10a19nZW0tPmt2
YWRkcikKIAkJcmV0dXJuIG10a19nZW0tPmt2YWRkcjsKQEAgLTI0OSwxMSArMjQ3LDggQEAgdm9p
ZCAqbXRrX2RybV9nZW1fcHJpbWVfdm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIAlp
ZiAoIW10a19nZW0tPnBhZ2VzKQogCQlnb3RvIG91dDsKIAotCWZvcl9lYWNoX3NnX3BhZ2Uoc2d0
LT5zZ2wsICZpdGVyLCBzZ3QtPm9yaWdfbmVudHMsIDApIHsKLQkJbXRrX2dlbS0+cGFnZXNbaSsr
XSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZpdGVyKTsKLQkJaWYgKGkgPiBucGFnZXMpCi0JCQlicmVh
azsKLQl9CisJZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc2d0LCBtdGtfZ2VtLT5w
YWdlcywgTlVMTCwgbnBhZ2VzKTsKKwogCW10a19nZW0tPmt2YWRkciA9IHZtYXAobXRrX2dlbS0+
cGFnZXMsIG5wYWdlcywgVk1fTUFQLAogCQkJICAgICAgIHBncHJvdF93cml0ZWNvbWJpbmUoUEFH
RV9LRVJORUwpKTsKIAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
