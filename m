Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6842A1C3A3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 14:55:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FE6E66055
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 12:55:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 844FD66513; Mon,  4 May 2020 12:55:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F02466056;
	Mon,  4 May 2020 12:54:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E287D60B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D563C66052; Mon,  4 May 2020 12:54:13 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E88D360B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125410euoutp010c413078949de2c539232f2ecfd82cd6~L1GtPM_Bn2809928099euoutp016
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125410euoutp010c413078949de2c539232f2ecfd82cd6~L1GtPM_Bn2809928099euoutp016
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125410eucas1p1424d1bddb2fdbd37118a13a49f218101~L1Gs9u_Tb0159301593eucas1p16;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 69.61.61286.27010BE5; Mon,  4
 May 2020 13:54:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3~L1GsXPcpC2226922269eucas1p2n;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125409eusmtrp1ffd21b736e32b3480030799b3c707e4d~L1GsWQGG_2497724977eusmtrp1R;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ee-5eb01072b78f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 32.06.07950.17010BE5; Mon,  4
 May 2020 13:54:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125409eusmtip2d4ce3360799e751dcef40defd5ef9c3d~L1Grt2Ja_0241002410eusmtip2F;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:39 +0200
Message-Id: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125017.5494-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0gUURTm7szOjptr02p51NDYSNDIRxpNapJhMBBR0B+ztKYcVstV2VHT
 CLJ8UNsa5gaJlS0pvtM0MzPKfG4lii9SKVNzEx+Jlq6mlOU6Wv++8z3udzhcEpPnie3JiKhY
 Th3FRioIKV7dsti+S009CfWYattBp7e/E9EVWeVi+k/1bYzuMU0TdFFJs4jW1/nScz3DIrpy
 5IOY7q69T9CPmwYkdP2MUXxgA1OaU4qYV/N6nHk+PyRmBm8aRMzTvCvMx+URjNH1FSDmZX8S
 wdyqKkbMbKXjMWmw1C+Mi4yI59Tu/mek4ekDQTFpjgmlmf3iJKSx0yALEihveJ/fTGiQlJRT
 hQhKTDOEWZBTcwjK2oIFYRbB5EMjtp4wNqaIBKEAQX2LDhOGlcTvpk6x2UVQnqCZ0qw+ZUOl
 InibbmnGGJUlgubJOA0iSWvqKNTO8mYap3bA2PcvEjOWUX6QttCIhDInKHnyBjPbLaj9UHfj
 uLkKqDIJ3HthJARPICTnTuICtoYJQ5VEwFuhVafFhUAyguH2xxJh0CLovpa11uALn9qXCHMD
 RrlAea27QAfA2MOxVRooK+ib2iSsbwWZ1XcxgZbB9TS54HaGbEPZv9r6jq61WzHQmD+OC+fJ
 QJAyWoxnIKfs/2V6hIqRLRfHq5Qc7xnFXXTjWRUfF6V0OxetqkQrf6d12fCjBpm6zjYgikQK
 S1nQbHmoXMzG84mqBgQkprCR1aSsULIwNvESp44+rY6L5PgG5EDiCluZ16PxEDmlZGO5CxwX
 w6nXVRFpYZ+EfJ4Zi4YOusQHjp6S9C0mzG2z3+l43uHwA9e9zoO6y1q7MI/aLSGOhpzx6V+F
 vZVBXspCNnZgaeDrnlRXntX6qPadCNb7n8zVvD6EPLVFrlcH9fLhz8sQg/wnvTsWqifuxOhC
 g/CKzUexHO323Z0h0aamky0LAVNHvo1s/Dlm26vA+XDW0xVT8+xfU1n6hTcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4Pd1CgQ1xBjf3m1r0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcEPT1gduD3WzFvD
 6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuix+2YDm0ffllWMHp83yQVwRenZFOWX
 lqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehl9N6NKGiTq1gz
 6SZrA2OXZBcjJ4eEgInEk8MtTF2MXBxCAksZJT4+2cQMkZCRODmtgRXCFpb4c62LDaLoE6PE
 qmU/wBJsAoYSXW8hEiICnYwS07o/soM4zALzmCQWPTzEDlIlLOAr8WrRdUYQm0VAVeLFx0dg
 cV4BG4m274cZIVbIS6zecABoNQcHp4CtxP7OYJCwEFDJxwVLmCcw8i1gZFjFKJJaWpybnlts
 pFecmFtcmpeul5yfu4kRGAvbjv3csoOx613wIUYBDkYlHt4NX9fHCbEmlhVX5h5ilOBgVhLh
 3dECFOJNSaysSi3Kjy8qzUktPsRoCnTTRGYp0eR8YJzmlcQbmhqaW1gamhubG5tZKInzdggc
 jBESSE8sSc1OTS1ILYLpY+LglGpg7O89c0vEvPfWl+2eq9rTj93kLJY6KDJ7VxTHsafvmItD
 XjRUZ7LzOn/ZMVfq+vmS+PbCW4dW3/y8zue36O5o/yVFfipur976z2E4YD23yXmChukjTrNr
 amKv20XmqupfZqvhfZO18nHa8pWBilZPHEwar+0T+lqZFVAQtD9uwT8h6VyF96zlSizFGYmG
 WsxFxYkAEpMMU5sCAAA=
X-CMS-MailID: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
X-Msg-Generator: CA
X-RootMTR: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <CGME20200504125409eucas1p2225bf61e6a293eb4da81ec26341488f3@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 01/21] drm: core: fix sg_table nents vs.
 orig_nents misuse
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
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NhY2hl
LmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBl
ci5jIHwgNyArKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgICB8
IDkgKysrKystLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jYWNoZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9jYWNoZS5jCmluZGV4IDAzZTAxYjAuLjYzYmQ0OTcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nh
Y2hlLmMKQEAgLTEyNyw3ICsxMjcsNyBAQCBzdGF0aWMgdm9pZCBkcm1fY2FjaGVfZmx1c2hfY2xm
bHVzaChzdHJ1Y3QgcGFnZSAqcGFnZXNbXSwKIAkJc3RydWN0IHNnX3BhZ2VfaXRlciBzZ19pdGVy
OwogCiAJCW1iKCk7IC8qQ0xGTFVTSCBpcyBvcmRlcmVkIG9ubHkgYnkgdXNpbmcgbWVtb3J5IGJh
cnJpZXJzKi8KLQkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm5lbnRz
LCAwKQorCQlmb3JfZWFjaF9zZ19wYWdlKHN0LT5zZ2wsICZzZ19pdGVyLCBzdC0+b3JpZ19uZW50
cywgMCkKIAkJCWRybV9jbGZsdXNoX3BhZ2Uoc2dfcGFnZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpKTsK
IAkJbWIoKTsgLypNYWtlIHN1cmUgdGhhdCBhbGwgY2FjaGUgbGluZSBlbnRyeSBpcyBmbHVzaGVk
Ki8KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwppbmRleCBkZjMxZTU3Li5m
NDdjYWE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwpAQCAtMTE4LDcg
KzExOCw3IEBAIHZvaWQgZHJtX2dlbV9zaG1lbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaikKIAl9IGVsc2UgewogCQlpZiAoc2htZW0tPnNndCkgewogCQkJZG1hX3VubWFw
X3NnKG9iai0+ZGV2LT5kZXYsIHNobWVtLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHNobWVtLT5zZ3Qt
Pm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQkJICAgICBzaG1lbS0+c2d0LT5vcmlnX25l
bnRzLCBETUFfQklESVJFQ1RJT05BTCk7CiAJCQlzZ19mcmVlX3RhYmxlKHNobWVtLT5zZ3QpOwog
CQkJa2ZyZWUoc2htZW0tPnNndCk7CiAJCX0KQEAgLTM5Niw3ICszOTYsNyBAQCB2b2lkIGRybV9n
ZW1fc2htZW1fcHVyZ2VfbG9ja2VkKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCVdBUk5f
T04oIWRybV9nZW1fc2htZW1faXNfcHVyZ2VhYmxlKHNobWVtKSk7CiAKIAlkbWFfdW5tYXBfc2co
b2JqLT5kZXYtPmRldiwgc2htZW0tPnNndC0+c2dsLAotCQkgICAgIHNobWVtLT5zZ3QtPm5lbnRz
LCBETUFfQklESVJFQ1RJT05BTCk7CisJCSAgICAgc2htZW0tPnNndC0+b3JpZ19uZW50cywgRE1B
X0JJRElSRUNUSU9OQUwpOwogCXNnX2ZyZWVfdGFibGUoc2htZW0tPnNndCk7CiAJa2ZyZWUoc2ht
ZW0tPnNndCk7CiAJc2htZW0tPnNndCA9IE5VTEw7CkBAIC02MjMsNyArNjIzLDggQEAgc3RydWN0
IHNnX3RhYmxlICpkcm1fZ2VtX3NobWVtX2dldF9wYWdlc19zZ3Qoc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICpvYmopCiAJCWdvdG8gZXJyX3B1dF9wYWdlczsKIAl9CiAJLyogTWFwIHRoZSBwYWdlcyBm
b3IgdXNlIGJ5IHRoZSBoL3cuICovCi0JZG1hX21hcF9zZyhvYmotPmRldi0+ZGV2LCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCXNndC0+bmVudHMgPSBkbWFfbWFw
X3NnKG9iai0+ZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJCQkJRE1BX0JJ
RElSRUNUSU9OQUwpOwogCiAJc2htZW0tPnNndCA9IHNndDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCmluZGV4
IDI4Mjc3NGUuLmYzZTJkMmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTYyNiw4ICs2MjYsOSBAQCBz
dHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoLAogCWVsc2UKIAkJc2d0ID0gb2JqLT5kZXYtPmRyaXZlci0+Z2VtX3ByaW1l
X2dldF9zZ190YWJsZShvYmopOwogCi0JaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpIHsKKwlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0
LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCQkgICAgICBkaXIsIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpOworCWlmICghc2d0LT5uZW50cykgewogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtm
cmVlKHNndCk7CiAJCXNndCA9IEVSUl9QVFIoLUVOT01FTSk7CkBAIC02NTIsNyArNjUzLDcgQEAg
dm9pZCBkcm1fZ2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLAogCWlmICghc2d0KQogCQlyZXR1cm47CiAKLQlkbWFfdW5tYXBfc2dfYXR0cnMoYXR0YWNo
LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIsCisJZG1hX3VubWFwX3NnX2F0dHJzKGF0
dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLCBkaXIsCiAJCQkgICBETUFfQVRU
Ul9TS0lQX0NQVV9TWU5DKTsKIAlzZ19mcmVlX3RhYmxlKHNndCk7CiAJa2ZyZWUoc2d0KTsKQEAg
LTk3NSw3ICs5NzYsNyBAQCBpbnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc3Ry
dWN0IHNnX3RhYmxlICpzZ3QsIHN0cnVjdCBwYWdlICoqcGFnZXMsCiAJICovCiAJcGFnZV9pbmRl
eCA9IDA7CiAJZG1hX2luZGV4ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+
bmVudHMsIGNvdW50KSB7CisJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm9yaWdfbmVu
dHMsIGNvdW50KSB7CiAJCXBhZ2VfbGVuID0gc2ctPmxlbmd0aDsKIAkJcGFnZSA9IHNnX3BhZ2Uo
c2cpOwogCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
