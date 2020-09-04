Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90925D9FD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:36:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17C486676E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:36:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 062186676F; Fri,  4 Sep 2020 13:36:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0948A6174E;
	Fri,  4 Sep 2020 13:35:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E265866743
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CDA8266744; Fri,  4 Sep 2020 13:34:59 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id F068860EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:55 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133454euoutp02e47a35c1a9fbf3fd65a145e84822a4ad~xmAYb7Mcp2842328423euoutp02r
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133454euoutp02e47a35c1a9fbf3fd65a145e84822a4ad~xmAYb7Mcp2842328423euoutp02r
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133454eucas1p1b6537e563b069b7e52f9053b287f6c78~xmAYNhaAt1679216792eucas1p1Z;
 Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 66.01.06456.E72425F5; Fri,  4
 Sep 2020 14:34:54 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133453eucas1p2266abd01467aea6af137eba9fa6af9c1~xmAXvLUsY0781307813eucas1p2o;
 Fri,  4 Sep 2020 13:34:53 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133453eusmtrp2366004d0f5092987f509efd37f5116bb~xmAXugCB90905809058eusmtrp2R;
 Fri,  4 Sep 2020 13:34:53 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-26-5f52427e049a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1A.90.06017.D72425F5; Fri,  4
 Sep 2020 14:34:53 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133453eusmtip16524db2d11f15eb60f77980c48d36a1f~xmAXHqyT91944019440eusmtip1f;
 Fri,  4 Sep 2020 13:34:53 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:42 +0200
Message-Id: <20200904131711.12950-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzvd8/z3D1uTk/H5heW7VY2bcjKeiSKaT1/9EeZPxqiK88w7tid
 k7fyViev0cscs3Oa8p4czksqjI7MS5g0lUR/MFbusB2N7jxH/32+n5fv57vffjjCH8Ds8Chx
 PC0RC2MEbC6q+WAYdbnnFxB2qmeQIAtGh1hks6IJI3c1xQg5tfGbTdbWD7BI1Xsvcn1qnkWq
 F6YxcrKrnE029n/jkJVrbSgpz3mJkb1/FjGydaUYu2hFNSgbAPV2U4VS6rocNtW++QOjlEPX
 qLk8LYtqqUqjZncWEOrJTDWg3nxJZ1OFrXWAahlOofTqY1d5Qdzz4XRMVAItcfO5yY3sN2jR
 uHKHRJ3uESsdVNjmAgscEmdg1kAekgu4OJ+oAXCoKhswwzqAhpUas6IHsKOxlLMfebrajDJC
 NYA7GVr0IKJf2kVMLjbhDnNXc9kmbEM8AHCwwNJkQggVAg16OTAJ1kQQ/KzuQk0YJU7A4rbp
 vQCP8IbqhVWMqXOE9a979pZaED6wTbGImRZBYpoD9ZNz5pv84bv7Y4DB1nBZ22rmHeBuZwWL
 CWQBOD/ayGGGfAAnMxXmhBf8OrplrMaN9znDpi43hvaFf9fa92hIWMGZ1SMmGjHCx5oShKF5
 8KGcz7idYJn21UFt7/gEwmAK9s5OmR+1GMBSVQkoAo5l/8tUANQBW1omFUXQUncxfcdVKhRJ
 ZeII19uxIjUwfq7hHa2uA2xM3OoDBA4ElrxDFwLC+JgwQZok6gMQRwQ2PL+R4VA+L1yYlExL
 YsMkshha2gfscVRgyzv9fOkGn4gQxtPRNB1HS/ZVFm5hlw6I7ECF0hnJ8N4Mqdj1UHLLjubL
 169wLynzNbXY2U8a2TlOzrKurdNeFK31q3zxU5GRKujeThlI2v4oCb68PC6yGw+numNGvosT
 0xzii6zSrmOuzwJ9fH9xyns9kj0lLu0nCkNlsce7DqeGDIq3ujGep3eZf/Ddscxg920nfqwA
 lUYK3U8iEqnwH7S5qJ9YAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7q1TkHxBjf2mFr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcKPW1ks2jqXsVoc
 /PCE1WLLm4msDnwea+atYfTY+20Bi8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvTYfLra4/MmuQDeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj
 81grI1MlfTublNSczLLUIn27BL2MIz+PsxTMkan49KmfqYFxvngXIyeHhICJxJS3G1m6GLk4
 hASWMkp0TO5ihUjISJyc1gBlC0v8udbFBlH0iVFiwrQljCAJNgFDia63EAkRgU5GiWndH9lB
 HGaBFcwSr/bNZQGpEhaIkNjUfx5sFIuAqsTErdfYQGxeAVuJTY/fQq2Ql1i94QAziM0pYCex
 dcYTsLgQUM2HOYtZJjDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYR9uO/dyyg7Hr
 XfAhRgEORiUeXgb7oHgh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BTpq
 IrOUaHI+MMbzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwbr2R
 +9vtUkjG95v7rA4Inr97csLkipf1bAVVu30edHMpGK9urv53iOPuuSqzJO7Zl7guL3Soe+mZ
 tuGB/60vedGWp03lHnRZzc42sXDuub7QZvJFK9X+k2f+zDG9Nffclhi2jZzXDk2qua3+hD/8
 CIvdjetWDsleSXd/G9ysEtLdN8fZ8sqpa0osxRmJhlrMRcWJAEfVXn65AgAA
X-CMS-MailID: 20200904133453eucas1p2266abd01467aea6af137eba9fa6af9c1
X-Msg-Generator: CA
X-RootMTR: 20200904133453eucas1p2266abd01467aea6af137eba9fa6af9c1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133453eucas1p2266abd01467aea6af137eba9fa6af9c1
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133453eucas1p2266abd01467aea6af137eba9fa6af9c1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 01/30] drm: prime: add common helper to
 check scatterlist contiguity
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

SXQgaXMgYSBjb21tb24gb3BlcmF0aW9uIGRvbmUgYnkgRFJNIGRyaXZlcnMgdG8gY2hlY2sgdGhl
IGNvbnRpZ3VpdHkKb2YgdGhlIERNQS1tYXBwZWQgYnVmZmVyIGRlc2NyaWJlZCBieSBhIHNjYXR0
ZXJsaXN0IGluIHRoZQpzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIg
Zm9yIHRoaXMgb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpk
YUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFy
bS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jIHwgMjMgKysr
LS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAg
fCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2RybS9kcm1fcHJpbWUu
aCAgICAgICAgICAgICAgfCAgMiArKwogMyBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCsp
LCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9j
bWFfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKaW5kZXgg
ODIyZWRlYWRiYWIzLi41OWI5Y2EyMDdiNDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2NtYV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVs
cGVyLmMKQEAgLTQ3MSwyNiArNDcxLDkgQEAgZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3Rh
YmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiB7CiAJc3RydWN0IGRybV9nZW1fY21hX29iamVj
dCAqY21hX29iajsKIAotCWlmIChzZ3QtPm5lbnRzICE9IDEpIHsKLQkJLyogY2hlY2sgaWYgdGhl
IGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCi0JCWRtYV9hZGRyX3Qg
bmV4dF9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwotCQlzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnM7Ci0JCXVuc2lnbmVkIGludCBpOwotCi0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzLCBz
Z3QtPm5lbnRzLCBpKSB7Ci0JCQkvKgotCQkJICogc2dfZG1hX2FkZHJlc3MocykgaXMgb25seSB2
YWxpZCBmb3IgZW50cmllcwotCQkJICogdGhhdCBoYXZlIHNnX2RtYV9sZW4ocykgIT0gMAotCQkJ
ICovCi0JCQlpZiAoIXNnX2RtYV9sZW4ocykpCi0JCQkJY29udGludWU7Ci0KLQkJCWlmIChzZ19k
bWFfYWRkcmVzcyhzKSAhPSBuZXh0X2FkZHIpCi0JCQkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7
Ci0KLQkJCW5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKLQkJ
fQotCX0KKwkvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRp
Z3VvdXMgKi8KKwlpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFj
aC0+ZG1hYnVmLT5zaXplKQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKIAogCS8qIENyZWF0
ZSBhIENNQSBHRU0gYnVmZmVyLiAqLwogCWNtYV9vYmogPSBfX2RybV9nZW1fY21hX2NyZWF0ZShk
ZXYsIGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwppbmRleCAxNjkzYWE3YzE0
YjUuLjRlZDVlZDFmMDc4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwpAQCAtODI1LDYgKzgyNSwzNyBAQCBz
dHJ1Y3Qgc2dfdGFibGUgKmRybV9wcmltZV9wYWdlc190b19zZyhzdHJ1Y3QgcGFnZSAqKnBhZ2Vz
LCB1bnNpZ25lZCBpbnQgbnJfcGFnZQogfQogRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVfcGFnZXNf
dG9fc2cpOwogCisvKioKKyAqIGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplIC0gcmV0dXJu
cyB0aGUgY29udGlndW91cyBzaXplIG9mIHRoZSBidWZmZXIKKyAqIEBzZ3Q6IHNnX3RhYmxlIGRl
c2NyaWJpbmcgdGhlIGJ1ZmZlciB0byBjaGVjaworICoKKyAqIFRoaXMgaGVscGVyIGNhbGN1bGF0
ZXMgdGhlIGNvbnRpZ3VvdXMgc2l6ZSBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UKKyAqIG9mIHRo
ZSB0aGUgYnVmZmVyIGRlc2NyaWJlZCBieSB0aGUgcHJvdmlkZWQgc2dfdGFibGUuCisgKgorICog
VGhpcyBpcyB1c2VmdWwgZm9yIGltcGxlbWVudGluZworICogJmRybV9nZW1fb2JqZWN0X2Z1bmNz
LmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUuCisgKi8KK3Vuc2lnbmVkIGxvbmcgZHJtX3ByaW1l
X2dldF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpCit7CisJZG1hX2FkZHJf
dCBleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKKwlzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnNnOworCXVuc2lnbmVkIGxvbmcgc2l6ZSA9IDA7CisJaW50IGk7CisKKwlmb3JfZWFjaF9z
Z3RhYmxlX2RtYV9zZyhzZ3QsIHNnLCBpKSB7CisJCXVuc2lnbmVkIGludCBsZW4gPSBzZ19kbWFf
bGVuKHNnKTsKKworCQlpZiAoIWxlbikKKwkJCWJyZWFrOworCQlpZiAoc2dfZG1hX2FkZHJlc3Mo
c2cpICE9IGV4cGVjdGVkKQorCQkJYnJlYWs7CisJCWV4cGVjdGVkICs9IGxlbjsKKwkJc2l6ZSAr
PSBsZW47CisJfQorCXJldHVybiBzaXplOworfQorRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVfZ2V0
X2NvbnRpZ3VvdXNfc2l6ZSk7CisKIC8qKgogICogZHJtX2dlbV9wcmltZV9leHBvcnQgLSBoZWxw
ZXIgbGlicmFyeSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZXhwb3J0IGNhbGxiYWNrCiAgKiBAb2Jq
OiBHRU0gb2JqZWN0IHRvIGV4cG9ydApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3ByaW1l
LmggYi9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAppbmRleCA5YWY3NDIyYjQ0Y2YuLjQ3ZWYxMTYx
NDYyNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKKysrIGIvaW5jbHVkZS9k
cm0vZHJtX3ByaW1lLmgKQEAgLTkyLDYgKzkyLDggQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fcHJp
bWVfcGFnZXNfdG9fc2coc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IG5yX3BhZ2UK
IHN0cnVjdCBkbWFfYnVmICpkcm1fZ2VtX3ByaW1lX2V4cG9ydChzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiwKIAkJCQkgICAgIGludCBmbGFncyk7CiAKK3Vuc2lnbmVkIGxvbmcgZHJtX3ByaW1l
X2dldF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpOworCiAvKiBoZWxwZXIg
ZnVuY3Rpb25zIGZvciBpbXBvcnRpbmcgKi8KIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZHJtX2dl
bV9wcmltZV9pbXBvcnRfZGV2KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkJCQlzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hX2J1ZiwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
