Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EEA200734
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:47:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93991665A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:47:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 85560665F2; Fri, 19 Jun 2020 10:47:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7B7966608;
	Fri, 19 Jun 2020 10:38:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9A576665C5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8BB2D665CA; Fri, 19 Jun 2020 10:37:11 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 0FBA7665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:02 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103701euoutp02f8cfec5d0e18b25b15991767bb5fdc4b~Z66FPFZu72242222422euoutp02S
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103701euoutp02f8cfec5d0e18b25b15991767bb5fdc4b~Z66FPFZu72242222422euoutp02S
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103700eucas1p210606f47e47dd8c0a7957d061536c8d7~Z66E8A1TQ1708817088eucas1p29;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CC.9C.06456.C459CEE5; Fri, 19
 Jun 2020 11:37:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103700eucas1p13747c6a4d1a89f3cfc94a585ada9be4b~Z66Elhjc53246432464eucas1p1n;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103700eusmtrp1f54d2514c097471ad94ad6a38c2f2689~Z66Ek1T4M0949709497eusmtrp1G;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-47-5eec954c5907
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C6.0B.06017.C459CEE5; Fri, 19
 Jun 2020 11:37:00 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eusmtip2629802219f1f405c43dad435fee3e389~Z66D08j7L0302303023eusmtip2M;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:11 +0200
Message-Id: <20200619103636.11974-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURzv7N5td+bstqSOWgkDLQN1ksWBqVkJ3aKgb0GQtdxFrW3alpp9
 KF9F2VY+KnVFmUS+M5es8pHN1Bmab0zxnfuQOrHUWZpau16tb78n/x+HQ2AiM9eViFRdptUq
 mULMc8CNjQut3scfWEMlbV/2IV3rJw4qzy7jojydDkd/jOkY6rZN81BhcQMH5dZK0Vz3KAcZ
 xnq4qKvyMQ91JXcAVFo/yEdJKXvR4FATjkzfLdzgTVTJkxJA1czn4tQ7/SCfMhTd5lFv5ke4
 1PAdM4d6/fw61b8yhlGZvfmAqupL4FH3liXU3YoiQM0adp4UnnYIkNOKyFha7Rt0ziGiUbvE
 j05yuvIsMxNLAN0bU4GAgKQ/LGi0cFOBAyEiCwAseDHOYckcgPcXJnGWzAJYpdNz1ivLVgPG
 GvkAZhhqAGOsVmqWLjKYR/rB1KlUHoOdyRsANukcmQJGVmMwr3IRZ4wt5FlYof9tDxEETnrA
 9vfBjCwkg+B0bS+XPeYOi199wBgssOuTKabVrZAc4sNvtpm1RSHQaLXwWLwFTpgr+CzeDpsz
 tThbSAZwtLWUzxItgF1J2YBNSeFA6+LqCoz0gmWVvqx8EDa0f8QZGZJOsHdqMyNjdphhzMJY
 WQhv3RSxaU+oN7/8d9bU3rkWoWBFywn2rdIBLGwsx9KAu/7/rVwAisA2OkajDKc1fio6zkcj
 U2piVOE+YVFKA7B/r+YV88xbYOs8XwdIAogdhcGnJkNFXFmsJl5ZByCBiZ2Fhz43h4qEcln8
 VVoddVYdo6A1dcCNwMXbhHvzxs+IyHDZZfoiTUfT6nWXQwhcE0DYVlNiYJP0h2GXy1LksXg3
 naJfEL3d5dqA9YS85ZIEeph/0dbCvghhW9DRrxsE39p3Tyw8Ujx2RqoLTg9HHuUcOLzbUqb1
 3PEzbcDXuzokwH9/dkhgT2WAl+SYvH6gQZt88ohXR076cHmOTfrU9lxy5UWiOyQGs+S6rDgS
 WTLEuCZC5rcHU2tkfwEfS4bLWgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xe7o+U9/EGSzZJWvRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehnHev6wFzTxVSycPJm5gfEKdxcjJ4eEgInE3zeb
 mLsYuTiEBJYySsybcoINIiEjcXJaAyuELSzx51oXG0TRJ6CiC//BEmwChhJdbyESIgKdjBLT
 uj+ygzjMAseYJTY+fs8MUiUsECuxsL0JqIODg0VAVeLCPgeQMK+AncT7/TegNshLrN5wAKyc
 Eyj+uuUgWFxIwFZi+YL3zBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjKdtx35u
 2cHY9S74EKMAB6MSD++LkNdxQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7E
 aAp000RmKdHkfGCs55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRq
 YBQTiWiOev+EUc/faqErIyfv2y3Lu29EcB+bW1a3fOGM2Uezffie9v3bMqG0fy7/wZ7ZB+IE
 DXn36OuuWnzv1KNFKXdep7VuPtt4OFenQzFz9soc92e736RpCR+aVMIWqynU/6j+zU9HCdO9
 zgl8D/ryVkW+DDj8d6rUmu2tVy48q7bn9fu4R1GJpTgj0VCLuag4EQDn01XAvQIAAA==
X-CMS-MailID: 20200619103700eucas1p13747c6a4d1a89f3cfc94a585ada9be4b
X-Msg-Generator: CA
X-RootMTR: 20200619103700eucas1p13747c6a4d1a89f3cfc94a585ada9be4b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103700eucas1p13747c6a4d1a89f3cfc94a585ada9be4b
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103700eucas1p13747c6a4d1a89f3cfc94a585ada9be4b@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 11/36] drm: mediatek: use common helper
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
