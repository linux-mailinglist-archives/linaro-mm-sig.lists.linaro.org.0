Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B181D165F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:48:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 021B365F88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:48:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DEC2765F91; Wed, 13 May 2020 13:48:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A442A65F92;
	Wed, 13 May 2020 13:34:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4C3F65F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A581A66098; Wed, 13 May 2020 13:34:28 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 0C77465F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:08 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133307euoutp019b6d136d0444247ad20503ad964a7a43~OmcRk6n902140621406euoutp01L
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133307euoutp019b6d136d0444247ad20503ad964a7a43~OmcRk6n902140621406euoutp01L
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133306eucas1p1b51a94bf57046cb6c3f3a4997bc97aa9~OmcRRmbjw2164721647eucas1p1u;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D5.D8.60698.217FBBE5; Wed, 13
 May 2020 14:33:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997~OmcQ0RUho0874908749eucas1p1h;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133306eusmtrp17acb0e826bf8839bed666e654ab020ee~OmcQzRtpK1050610506eusmtrp1C;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-ca-5ebbf712814b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8A.37.07950.217FBBE5; Wed, 13
 May 2020 14:33:06 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133305eusmtip1eeaac7d44d1f5279193afb39c353dc35~OmcQBSTh80741507415eusmtip1i;
 Wed, 13 May 2020 13:33:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:21 +0200
Message-Id: <20200513133245.6408-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUhUURjlzlvmOTn5GiVvKhkjRQm5oNALM1KkXhYZ1K/AZdSXSm7MqKkF
 iZbZuGepDSHjZJl7TuI2lbvjgpIpLriN6A8zLXNcUkybx1P7d875zvnOx+USiKgTsyBCwqMY
 abgkVIwL0NrOzf6zog2Nj0N25Xkqvb+bR1XnV2GUKj0dpXZrsxFqaO0XTpWUdfAoZZMLtTo0
 w6PUs8MYNdj4GqcGkwYAVdE+yacSHztRk1NdKNWyPIddMqHLC8oB/XldidINikk+rS59htN1
 6zqMnk7V8uiPRY/o8Z1ZhM4ZLQa0ZiwBpzP/OtAZNaWA1quP3xTeEVwIZEJDYhip/UU/QfCy
 IjoyzyS2MFWDJYBpYzkwIiDpDMdzhzE5EBAi8j2AWX90gCOrAL5b6cM5ogewp/4tuh8pVFTz
 uUExgGPzSv5B5GVTDsa6cNIRypfkOIvNyCcAdqUbsyaE/IRAVeOWYRVBmJK+cHzlIQtR8iTs
 aXNm7ULSFVaO1PK4MmtY9qEZYbGRQV+YaELZNZCc4sPkIT3gTB6wO2V+L2AKF7Q1fA5bwd6c
 tL1AEoAz/RV8jqQBOJiYv5d2gRP9Wzh7BUKegVWN9pzsBnX6bj4rQ/IwHF06wsqIAT6vzUM4
 WQhTkkWc+xRUaCsPalu+ftuz0HDnzWXuedoA3OzcBVnAWvG/SwlAKTBnomVhQYzMKZy5byeT
 hMmiw4PsAiLC1MDwu3p3tGv14Mu2fysgCSA2FupGND4iTBIjiwtrBZBAxGbCG1UGSRgoiYtn
 pBG+0uhQRtYKLAlUbC50Un33FpFBkijmHsNEMtL9KY8wskgAvMWSnIxRZXuP2nPDW2XFq4gH
 KdqUztgr4piOoJ91s81Fi6/yT/wutTnN2NuiMx4ttwcCfNwRLeZv4zG7PbfUUvdDz5RrJG7n
 nrYf82qfHxvcKHtguXvVXXc3bifTy3M8zjj00GKuZ17A0S3XxhcW0sqihrHIvlvXlNcF8jK/
 AjEqC5Y42iJSmeQf1keEsVkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xu7pC33fHGcy+L2bRe+4kk8XGGetZ
 LRb19rJY/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxeXmi4wWa4/cZbdo
 ajG2uHvvBIvFwQ9PWB34PdbMW8PosffbAhaPnbPusntsWtXJ5rH92wNWj/vdx5k8Ni+p97j9
 7zGzx+Qbyxk9dt9sYPPo/2vg0bdlFaPH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpG
 JpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehkfZpUWTOevWNi9m7WB8T5PFyMnh4SAicTCWRvZ
 uxi5OIQEljJKbL58iR0iISNxcloDK4QtLPHnWhcbRNEnRoknfceYQBJsAoYSXW8hEiICnYwS
 07o/go1iFjjGLLHx8XtmkCphgViJPzd6gKo4OFgEVCVOHTYBCfMK2Eqsu76NCWKDvMTqDQfA
 yjmB4q/u7GcBsYUE8iX2Lt7HNoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAaNp2
 7OeWHYxd74IPMQpwMCrx8Frc2h0nxJpYVlyZe4hRgoNZSYTXbz1QiDclsbIqtSg/vqg0J7X4
 EKMp0E0TmaVEk/OBkZ5XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNT
 qoFxyUSTjBO8S79PKvCevEr5lMybdduMYlhSU49uD389+c7n8kdt0x3Nbu9wXiag/GBfosed
 Lxd5mj48/pS1/vjFZ+pr1F5mqJx+8OcLd8OWyOu/eeb08k+SWLN/hdwt++5IVQNjQ+7Ky21n
 y15KvJ1/I/9GUrm7AtOiJ1rFxvuUX33tZ875peHYq8RSnJFoqMVcVJwIAI8m24y8AgAA
X-CMS-MailID: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
X-Msg-Generator: CA
X-RootMTR: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133306eucas1p1ab15386cc4bbcf09052a8175d3660997@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 14/38] drm: mediatek: use common helper
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
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0
aW9uLCBzZWUgJ1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRz
CnZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1pb21tdS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29t
L1QvCi0tLQogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMgfCAyNSArKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAx
OSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCmluZGV4
IGIwNGEzYzIuLjZjMzRjMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5j
CkBAIC0yMTIsMzQgKzIxMiwyMSBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm10a19nZW1fcHJp
bWVfaW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQlzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gsIHN0cnVjdCBzZ190YWJsZSAqc2cpCiB7CiAJc3RydWN0
IG10a19kcm1fZ2VtX29iaiAqbXRrX2dlbTsKLQlpbnQgcmV0OwotCXN0cnVjdCBzY2F0dGVybGlz
dCAqczsKLQl1bnNpZ25lZCBpbnQgaTsKLQlkbWFfYWRkcl90IGV4cGVjdGVkOwogCi0JbXRrX2dl
bSA9IG10a19kcm1fZ2VtX2luaXQoZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7CisJLyogY2hl
Y2sgaWYgdGhlIGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCisJaWYg
KGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHNnKSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXpl
KSB7CisJCURSTV9FUlJPUigic2dfdGFibGUgaXMgbm90IGNvbnRpZ3VvdXMiKTsKKwkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7CisJfQogCisJbXRrX2dlbSA9IG10a19kcm1fZ2VtX2luaXQoZGV2
LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7CiAJaWYgKElTX0VSUihtdGtfZ2VtKSkKIAkJcmV0dXJu
IEVSUl9DQVNUKG10a19nZW0pOwogCi0JZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzZy0+c2ds
KTsKLQlmb3JfZWFjaF9zZyhzZy0+c2dsLCBzLCBzZy0+bmVudHMsIGkpIHsKLQkJaWYgKHNnX2Rt
YV9hZGRyZXNzKHMpICE9IGV4cGVjdGVkKSB7Ci0JCQlEUk1fRVJST1IoInNnX3RhYmxlIGlzIG5v
dCBjb250aWd1b3VzIik7Ci0JCQlyZXQgPSAtRUlOVkFMOwotCQkJZ290byBlcnJfZ2VtX2ZyZWU7
Ci0JCX0KLQkJZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzKSArIHNnX2RtYV9sZW4ocyk7Ci0J
fQotCiAJbXRrX2dlbS0+ZG1hX2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZy0+c2dsKTsKIAltdGtf
Z2VtLT5zZyA9IHNnOwogCiAJcmV0dXJuICZtdGtfZ2VtLT5iYXNlOwotCi1lcnJfZ2VtX2ZyZWU6
Ci0Ja2ZyZWUobXRrX2dlbSk7Ci0JcmV0dXJuIEVSUl9QVFIocmV0KTsKIH0KIAogdm9pZCAqbXRr
X2RybV9nZW1fcHJpbWVfdm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLS0gCjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
