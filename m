Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 309B81CF1BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:39:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4367060723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:39:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 37A7961831; Tue, 12 May 2020 09:39:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA40F65F9C;
	Tue, 12 May 2020 09:07:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 87DC5618D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7B56065F93; Tue, 12 May 2020 09:07:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B8A3D65F9D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:21 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120euoutp01ce633a299e4838f50f908cb5e31976a6~OPFs4Cgm42635826358euoutp01N
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090120euoutp01ce633a299e4838f50f908cb5e31976a6~OPFs4Cgm42635826358euoutp01N
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120eucas1p13ccfe06058a4a1cf34195a93eebcd2f4~OPFsj5kiE0080100801eucas1p1f;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 94.67.61286.0E56ABE5; Tue, 12
 May 2020 10:01:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b~OPFsPfCnV2180321803eucas1p23;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090120eusmtrp29e638fa3d1d94c26652cbc0f1b430c27~OPFsNe7ZW0472704727eusmtrp2M;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-89-5eba65e014b4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 55.45.08375.0E56ABE5; Tue, 12
 May 2020 10:01:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090119eusmtip101ec658c19ed9a44edfdfb44d4ca5c32~OPFrk7kXF1148011480eusmtip1Y;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:42 +0200
Message-Id: <20200512090058.14910-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTcRjG+e9cdlxOTlvkq4XFYqWS1rIPJ5R1QeRAX4qEIMxaeVLJqWzT
 UghXmtlSMYsuo9LMKDXTZmy66GbpEmOWylKs1DSWpmXqFK22XKfLt9/zvO/L8/DnT2GSR0Qg
 lZyq4zSpqhQZKcLNrXMdYQOcNX79zWE5U2RvEzD3LtURjMd8FmO6XV9JpqqmRcB4PnwmmKul
 x5jyx5HMdPeggDENOQimy3qFZCYHPBhT+/ydkHk6MUxs8WPvXLuD2Icz5ThrmRkg2P4zNgHb
 UJnD9rmHMPZczy3EPujVk+xP42OcLb5fjViL4xrGTpmCdvjuEUUlcCnJmZxmnXK/KGnWbiPS
 R4OOWkoLhHrkCDAgHwrojXD6WQNmQCJKQt9GYM3v/COmERS/byJ5MYXAWdRD/D0ZrvmA84Nb
 CIbcn8h/JzdLcpF3i6QVYBg3kF5eQp9E8KLI18sYfQGDaleMl6V0LJh7OnAv47QcrEPXBQZE
 UWJaCc6XO/mwFVBT/wTzss+C3V/2A+f9TiF8KUznORrm+uoQz1IYtd0X8rwcPE1lAm83oHMR
 DNprhbwoRNB14tKfi0h4a58nvcEYHQJ11nW8vRW+O4y/+wDtBz3ji/n6flBqvojxthgK8iX8
 9mow2u7+i336qhPjmYVRqwPxz9OCoH3YRpSgFcb/YeUIVSN/LkOrTuS0ilTuSLhWpdZmpCaG
 H0xTm9DCr2p32yYbkavzQDOiKSTzFRdsaIqXEKpMbZa6GQGFyZaI85IXLHGCKiub06Tt02Sk
 cNpmtIzCZf7iiIqRvRI6UaXjDnNcOqf5OxVQPoF61MidcVp6XwtGVs5lrUreUhISjI2dv6EY
 cxXU5s3N+G0edMdmNpyKnc03KXdX6+KYOI9826PKjbqlP6IKA5ir09JQfWv7rFKaG/EqeM18
 /LeyRXuPF+qdHvmbjqTxqRTRBGQr6u/lh0345GwKW3v546Fdk66Y2sw2eYUDosuqtstwbZJK
 EYpptKpfn9yiw1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xu7oPUnfFGSz4x2XRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GV8P3ecteCVXMX2SR3sDYzXJLsYOTkkBEwknqx+xNLFyMUhJLCU
 UeLzxinMEAkZiZPTGlghbGGJP9e62CCKPjFKnGv6C5ZgEzCU6HoLkRAR6GSUmNb9kR3EYRaY
 xyyxfNVhpi5GDg5hgSCJ+fcSQRpYBFQldj1eCBbmFbCTeH4mEGKBvMTqDQfAFnMChe/P/8MC
 YgsJFEo8uvqWZQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBsbPt2M/NOxgvbQw+
 xCjAwajEw9thtDNOiDWxrLgy9xCjBAezkghvSyZQiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVE
 k/OBcZ1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFR3mK7hH6y
 yDou3nvVO7dMjXxgMccgubFYIZGDUVfj1T+LI2K9U9n+5bg/FFeX+stz9HGxlutr4YK8G3Oj
 ruyxqWZuKTUvW6qgwabn/df8dv2vFz3/BI5/ED33tjolW1r0fsF+VnHZOzI3Hk/5c/p8UJ/F
 D+OEuXlXNwVFGvO/Vk1+fkRyUocSS3FGoqEWc1FxIgCVrMwwswIAAA==
X-CMS-MailID: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
X-Msg-Generator: CA
X-RootMTR: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 22/38] drm: rockchip: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIHwgMjMgKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpp
bmRleCAyMWY4Y2IyLi41NjY1NTdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZ2VtLmMKQEAgLTM2LDggKzM2LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1f
aW9tbXVfbWFwKHN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAKIAlya19vYmot
PmRtYV9hZGRyID0gcmtfb2JqLT5tbS5zdGFydDsKIAotCXJldCA9IGlvbW11X21hcF9zZyhwcml2
YXRlLT5kb21haW4sIHJrX29iai0+ZG1hX2FkZHIsIHJrX29iai0+c2d0LT5zZ2wsCi0JCQkgICBy
a19vYmotPnNndC0+bmVudHMsIHByb3QpOworCXJldCA9IGlvbW11X21hcF9zZ3RhYmxlKHByaXZh
dGUtPmRvbWFpbiwgcmtfb2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QsCisJCQkJcHJvdCk7CiAJ
aWYgKHJldCA8IHJrX29iai0+YmFzZS5zaXplKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRvIG1h
cCBidWZmZXI6IHNpemU9JXpkIHJlcXVlc3Rfc2l6ZT0lemRcbiIsCiAJCQkgIHJldCwgcmtfb2Jq
LT5iYXNlLnNpemUpOwpAQCAtOTgsMTEgKzk4LDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2Vt
X2dldF9wYWdlcyhzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogCSAqIFRPRE86
IFJlcGxhY2UgdGhpcyBieSBkcm1fY2xmbHVzaF9zZygpIG9uY2UgaXQgY2FuIGJlIGltcGxlbWVu
dGVkCiAJICogd2l0aG91dCByZWx5aW5nIG9uIHN5bWJvbHMgdGhhdCBhcmUgbm90IGV4cG9ydGVk
LgogCSAqLwotCWZvcl9lYWNoX3NnKHJrX29iai0+c2d0LT5zZ2wsIHMsIHJrX29iai0+c2d0LT5u
ZW50cywgaSkKKwlmb3JfZWFjaF9zZ3RhYmxlX3NnKHJrX29iai0+c2d0LCBzLCBpKQogCQlzZ19k
bWFfYWRkcmVzcyhzKSA9IHNnX3BoeXMocyk7CiAKLQlkbWFfc3luY19zZ19mb3JfZGV2aWNlKGRy
bS0+ZGV2LCBya19vYmotPnNndC0+c2dsLCBya19vYmotPnNndC0+bmVudHMsCi0JCQkgICAgICAg
RE1BX1RPX0RFVklDRSk7CisJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRybS0+ZGV2LCBy
a19vYmotPnNndCwgRE1BX1RPX0RFVklDRSk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMzUwLDggKzM0
OSw4IEBAIHZvaWQgcm9ja2NoaXBfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqKQogCQlpZiAocHJpdmF0ZS0+ZG9tYWluKSB7CiAJCQlyb2NrY2hpcF9nZW1faW9tbXVf
dW5tYXAocmtfb2JqKTsKIAkJfSBlbHNlIHsKLQkJCWRtYV91bm1hcF9zZyhkcm0tPmRldiwgcmtf
b2JqLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHJrX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNU
SU9OQUwpOworCQkJZG1hX3VubWFwX3NndGFibGUoZHJtLT5kZXYsIHJrX29iai0+c2d0LAorCQkJ
CQkgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAkJfQogCQlkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3ko
b2JqLCBya19vYmotPnNndCk7CiAJfSBlbHNlIHsKQEAgLTQ3NiwxNSArNDc1LDEzIEBAIHN0cnVj
dCBzZ190YWJsZSAqcm9ja2NoaXBfZ2VtX3ByaW1lX2dldF9zZ190YWJsZShzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iaikKIAkJCXN0cnVjdCBzZ190YWJsZSAqc2csCiAJCQlzdHJ1Y3Qgcm9ja2No
aXBfZ2VtX29iamVjdCAqcmtfb2JqKQogewotCWludCBjb3VudCA9IGRtYV9tYXBfc2coZHJtLT5k
ZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKLQkJCSAgICAgICBETUFfQklESVJFQ1RJT05BTCk7Ci0J
aWYgKCFjb3VudCkKLQkJcmV0dXJuIC1FSU5WQUw7CisJaW50IGVyciA9IGRtYV9tYXBfc2d0YWJs
ZShkcm0tPmRldiwgc2csIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAoZXJyKQorCQlyZXR1
cm4gZXJyOwogCiAJaWYgKGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHNnKSA8IGF0dGFj
aC0+ZG1hYnVmLT5zaXplKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRvIG1hcCBzZ190YWJsZSB0
byBjb250aWd1b3VzIGxpbmVhciBhZGRyZXNzLlxuIik7Ci0JCWRtYV91bm1hcF9zZyhkcm0tPmRl
diwgc2ctPnNnbCwgc2ctPm5lbnRzLAotCQkJICAgICBETUFfQklESVJFQ1RJT05BTCk7CisJCWRt
YV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBzZywgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQly
ZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
