Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A1E1FF885
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:04:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4CA96659C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:04:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A7CF2665AA; Thu, 18 Jun 2020 16:04:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E7FC666E1;
	Thu, 18 Jun 2020 15:43:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8ACCF6654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7F42A66572; Thu, 18 Jun 2020 15:40:51 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 87CFF66597
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:34 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154033euoutp026509cd30d64d693b52ca17acecb2265c~ZrZ0uGrrU1486314863euoutp02C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154033euoutp026509cd30d64d693b52ca17acecb2265c~ZrZ0uGrrU1486314863euoutp02C
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154033eucas1p1676e3e922d494242ee5bc56824e10314~ZrZ0IiRMn1547315473eucas1p1l;
 Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 49.DE.60679.1FA8BEE5; Thu, 18
 Jun 2020 16:40:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154032eucas1p207c05c83d16e48c5a48ebd1e7d2862d1~ZrZzugruN0607806078eucas1p2h;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154032eusmtrp1e8b53ee40b51b62e4235de887e40e161~ZrZzt5D7O2230622306eusmtrp1G;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-4b-5eeb8af14220
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6E.E9.07950.0FA8BEE5; Thu, 18
 Jun 2020 16:40:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154032eusmtip14ac43baf3309dbdb79015862c26c5318~ZrZzBdlXn0709107091eusmtip1w;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:48 +0200
Message-Id: <20200618153956.29558-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO3fFyXGafmkpDLpYlFmBJxQpCTogRhf/FGTNOmjopuy40n6U
 mUosNU1BkwwxzXKV5mXmrJarXGs5bF7SVErspqJmW1dv7Xi0/j3v87zP9zy8fBQqbcN9qZPK
 FE6llCfKCFdM1/7bumlaMx6zZcZGMblWM8LcL6nFmQVdAcp0f58imNva5whTbghlPr01o4yj
 exhh6kd6caZLf41gcuqacObusyGSafv6AWdeDtnJne7snet3APvoRznGDvY+JNjmH+9x9t0l
 E8I2VJ5jB+ZHULawrxqwrf3pBDv1uIdg8xprAGuv99/ndtg17ASXePIUpwoKP+Yav9DxikzO
 90utKzcg6UDvrQEuFKS3w8ay15gGuFJS+haAZZlPUHFwAHjzfScpDnYAO3uKyGVLQ1YHIQrV
 ABY3aRFBWLRoH3kJmKCDoWZCQwjYi84C8EWum2BA6UwU1hjOLwqedCQ0XG0FAsboNdDaP7uY
 IKHD4Y3MdkRMC4DaOqGTC+Xi5C2mLFx4CNI2Ej4tq0PFpd3wYd43QsSecMzUuFR1FbQU5mCi
 4QKAw9a7pDjkANiVUQLErVA4aP3jdFPOfoGwVh8k0rtgf7UREWhIu8O+CQ+BRp3wiq4YFWkJ
 vJgtFbfXwlLTvX+xbZ22pWosHGyZA+K1CgC0lBjQfBBQ+j+sHIAa4MOpeUUcx29Vcqc383IF
 r1bGbT6epKgHzo9lmTc5HgD9bKwR0BSQuUm+RI/HSHH5KT5NYQSQQmVekogOS4xUckKedoZT
 JR1VqRM53gj8KEzmI9lWMXpESsfJU7gEjkvmVMsqQrn4pgPeM2qlLYHEVJd1sV/2bNySFJY2
 N+vviHBUVZSl+P20F+zPOJQqNX/oMH1+RoyOpf5805M/NNlyttUYQsWnEjPrV3tn57nHRvzy
 eBx5YHKd2dwY7WGbXZHtY8RLdIE7XrYW65Tag4PTTyvVUTkp0bEhtVUDgUUhDeMfm1nt3uxQ
 GcbHy4M3oCpe/hdEryDvVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7oful7HGew6qGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl93i
 4IcnrBan7n5md+DzWDNvDaPH3m8LWDzuXNvD5rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPN4v+8qm0ffllWMHp83yQXwROnZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8da
 GZkq6dvZpKTmZJalFunbJehl/D97hr1ggnTFhgX7mRoYd4l1MXJySAiYSGxuPcvWxcjFISSw
 lFFi48GLzBAJGYmT0xpYIWxhiT/XuqCKPjFKLF24ix0kwSZgKNH1FiIhItDJKDGt+yM7iMMs
 0MMscWnhF0aQKmEBb4n9M3eD2SwCqhLnbv4B6+YVsJNY3HKMCWKFvMTqDQfAVnMCxU8fbwVb
 LSRgK/H8QxvbBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQIjaNuxn1t2MHa9Cz7E
 KMDBqMTD+yLkdZwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAh01kVlK
 NDkfGN15JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYNY2kn/jX
 eJjZv1G/xOj2WNk+va7I/9OGvHeeTlVS/FMVX/s7vi4tvVQc1HYl+7Sbrb3+n+u+5munaaz9
 dZflbIHkgqw6sWPfFp1xuetzZdXiXfPfP2I+9cZmh+seA62XuftePMnbdNvp31rum78SZOQj
 Log+WpAdk3WE913HtvcaM14UG21kUGIpzkg01GIuKk4EADm1sOS2AgAA
X-CMS-MailID: 20200618154032eucas1p207c05c83d16e48c5a48ebd1e7d2862d1
X-Msg-Generator: CA
X-RootMTR: 20200618154032eucas1p207c05c83d16e48c5a48ebd1e7d2862d1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154032eucas1p207c05c83d16e48c5a48ebd1e7d2862d1
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154032eucas1p207c05c83d16e48c5a48ebd1e7d2862d1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 27/36] dmabuf: fix common struct sg_table
	related issues
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IEdlcmQgSG9mZm1hbm4gPGtyYXhl
bEByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYyB8
IDEzICsrKysrKy0tLS0tLS0KIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgICAgICAgICAgICB8
ICA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMg
Yi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKaW5kZXggOWY5NjRjYTNmNTlj
Li5kMDY5NmNmOTM3YWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhl
bHBlcnMuYworKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKQEAgLTE0
MCwxMyArMTQwLDEyIEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2hlYXBfbWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCQkgICAgICBlbnVtIGRtYV9k
YXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCiB7CiAJc3RydWN0IGRtYV9oZWFwc19hdHRhY2htZW50
ICphID0gYXR0YWNobWVudC0+cHJpdjsKLQlzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlOwotCi0JdGFi
bGUgPSAmYS0+dGFibGU7CisJc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9ICZhLT50YWJsZTsKKwlp
bnQgcmV0OwogCi0JaWYgKCFkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwg
dGFibGUtPm5lbnRzLAotCQkJZGlyZWN0aW9uKSkKLQkJdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0p
OworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHRhYmxlLCBkaXJlY3Rp
b24sIDApOworCWlmIChyZXQpCisJCXRhYmxlID0gRVJSX1BUUihyZXQpOwogCXJldHVybiB0YWJs
ZTsKIH0KIApAQCAtMTU0LDcgKzE1Myw3IEBAIHN0YXRpYyB2b2lkIGRtYV9oZWFwX3VubWFwX2Rt
YV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCQkgICBzdHJ1
Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVj
dGlvbikKIHsKLQlkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJs
ZS0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2
LCB0YWJsZSwgZGlyZWN0aW9uLCAwKTsKIH0KIAogc3RhdGljIHZtX2ZhdWx0X3QgZG1hX2hlYXBf
dm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYwppbmRleCBhY2IyNmM2Mjdk
MjcuLjg5ZTI5M2JkOTI1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYwor
KysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCkBAIC02MywxMCArNjMsOSBAQCBzdGF0aWMg
c3RydWN0IHNnX3RhYmxlICpnZXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
ZG1hX2J1ZiAqYnVmLAogCQkJCQlHRlBfS0VSTkVMKTsKIAlpZiAocmV0IDwgMCkKIAkJZ290byBl
cnI7Ci0JaWYgKCFkbWFfbWFwX3NnKGRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLCBkaXJlY3Rpb24p
KSB7Ci0JCXJldCA9IC1FSU5WQUw7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2csIGRp
cmVjdGlvbiwgMCk7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCX0KIAlyZXR1cm4gc2c7
CiAKIGVycjoKQEAgLTc4LDcgKzc3LDcgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqZ2V0X3Nn
X3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmJ1ZiwKIHN0YXRpYyB2
b2lkIHB1dF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBzZ190YWJsZSAqc2cs
CiAJCQkgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQogewotCWRtYV91bm1hcF9z
ZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2d0YWJs
ZShkZXYsIHNnLCBkaXJlY3Rpb24sIDApOwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNn
KTsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
