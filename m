Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F36242006EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:42:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20C85665E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:42:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1146D66710; Fri, 19 Jun 2020 10:42:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D2C4665E4;
	Fri, 19 Jun 2020 10:37:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A53BA6659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8CF5C665BB; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id C200E6659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:56 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656euoutp0269bb7b88341883b651f7ba962c76c008~Z66AVIJLW2242422424euoutp02H
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103656euoutp0269bb7b88341883b651f7ba962c76c008~Z66AVIJLW2242422424euoutp02H
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103655eucas1p172c30596ee81baf79357a567e28e7db3~Z65--4fK10294402944eucas1p17;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A9.9C.06456.7459CEE5; Fri, 19
 Jun 2020 11:36:55 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103655eucas1p1b01cbe67526e2b2f8254eb20ccac1858~Z65-dd0Gn0294102941eucas1p1E;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103655eusmtrp183e9c02e9925bcf6e12951e028d2c8aa~Z65-c1oV20959609596eusmtrp1t;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-39-5eec95475aca
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5F.FA.06017.6459CEE5; Fri, 19
 Jun 2020 11:36:55 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103654eusmtip2b8e323334975574601bcbaf46c75e112~Z65_uto5t0244902449eusmtip2k;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:03 +0200
Message-Id: <20200619103636.11974-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djPc7ruU9/EGXQeVLLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4Uft7JYtHUuY7U4
 +OEJq8WWNxNZHfg81sxbw+ix99sCFo9NqzrZPLZ/e8DqMe9koMf97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1Zxeix+XS1x+dNcgG8UVw2Kak5mWWpRfp2CVwZT04nFOxVrdh++xprA+NU
 +S5GTg4JAROJv5Pes3UxcnEICaxglFh5aQYThPOFUeJF41NmCOczo8Tie5NYYVr2NP9gh0gs
 Z5TYPOMcK1zLhReb2ECq2AQMJbredoHZIgKtjBInenlAipgFFjBL/PzcxgiSEBYIkHg6dyM7
 iM0ioCpx+fIuFhCbV8BWYuOyRSwQ6+QlVm84wAxicwrYSbxuOQi2TULgGrvE1v7fTBBFLhJv
 m2YwQtjCEq+Ob2GHsGUkTk/uYYFoaGaUeHhuLTuE08MocRmuw1rizrlfQLdyAN2nKbF+lz6I
 KSHgKLF8qTqEySdx460gSDEzkDlp23RmiDCvREebEMQMNYlZx9fBbT144RIzhO0hcef2I2iY
 TmSUeP7vI8sERvlZCLsWMDKuYhRPLS3OTU8tNsxLLdcrTswtLs1L10vOz93ECExap/8d/7SD
 8eulpEOMAhyMSjy8DuGv44RYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iFGa
 g0VJnNd40ctYIYH0xJLU7NTUgtQimCwTB6dUA+O0WOEPVm+sa3m/54l+X/W1KOkRw8L4CSeT
 uKqcXXenHXCfWZz8qvzVYva2y4XvlfLdFvikKf98qLralqnSV7q782jF57Tvx/kWn1d7NyH4
 Ueoz3j3Tz5rNnVOWyJWs3Ln5Qeld9/b/Wi7i2uIyJ7Y69bbnVRT0cQkKT33q8ePkvmvi96vn
 b1ZiKc5INNRiLipOBAD7GP0RVgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xe7ruU9/EGczIsOg9d5LJYuOM9awW
 /7dNZLa48vU9m8XK1UeZLBbst7b4cuUhk8Wmx9dYLS7vmsNmsfbIXXaLhR+3sli0dS5jtTj4
 4QmrxZY3E1kd+DzWzFvD6LH32wIWj02rOtk8tn97wOox72Sgx/3u40wem5fUe9z+95jZY/KN
 5Yweu282sHn0bVnF6LH5dLXH501yAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbm
 sVZGpkr6djYpqTmZZalF+nYJehlPTicU7FWt2H77GmsD41T5LkZODgkBE4k9zT/Yuxi5OIQE
 ljJKnJxylB0iISNxcloDK4QtLPHnWhcbRNEnRonXD1eBFbEJGEp0vYVIiAh0MkpM6/4INopZ
 YAWzxKt9c1lAqoQF/CRWXv8D1sEioCpx+fIusDivgK3ExmWLWCBWyEus3nCAGcTmFLCTeN1y
 EGy1EFDN8gXvmScw8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGEPbjv3csoOx613w
 IUYBDkYlHt4XIa/jhFgTy4orcw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyI0RToqInM
 UqLJ+cD4ziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwMi1elm/
 +GWrix98hL7v4L9sFb+E7drxlcuZTp428Clc/jE8SuxC/sWII1ft9ZOUZC8v2ma5hL/Hrejs
 s5h/rjprb4jPMPRerOjyqZ3DR3ChwDnuqy/miE5Ivsa2+XTHVdWnm6wXnJkw//gEHrmc3NOC
 ZwTssiZ7KLjfCVi1dKLAnK3nFvscac9TYinOSDTUYi4qTgQAPFPccrcCAAA=
X-CMS-MailID: 20200619103655eucas1p1b01cbe67526e2b2f8254eb20ccac1858
X-Msg-Generator: CA
X-RootMTR: 20200619103655eucas1p1b01cbe67526e2b2f8254eb20ccac1858
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103655eucas1p1b01cbe67526e2b2f8254eb20ccac1858
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103655eucas1p1b01cbe67526e2b2f8254eb20ccac1858@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 03/36] drm: core: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NhY2hl
LmMgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxw
ZXIuYyB8IDE0ICsrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAg
ICAgICAgICB8IDExICsrKysrKy0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2Fj
aGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYwppbmRleCAwM2UwMWIwMDBmN2EuLjBm
ZTNjNDk2MDAyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jYWNoZS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYwpAQCAtMTI3LDcgKzEyNyw3IEBAIGRybV9jbGZs
dXNoX3NnKHN0cnVjdCBzZ190YWJsZSAqc3QpCiAJCXN0cnVjdCBzZ19wYWdlX2l0ZXIgc2dfaXRl
cjsKIAogCQltYigpOyAvKkNMRkxVU0ggaXMgb3JkZXJlZCBvbmx5IGJ5IHVzaW5nIG1lbW9yeSBi
YXJyaWVycyovCi0JCWZvcl9lYWNoX3NnX3BhZ2Uoc3QtPnNnbCwgJnNnX2l0ZXIsIHN0LT5uZW50
cywgMCkKKwkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHN0LCAmc2dfaXRlciwgMCkKIAkJCWRybV9j
bGZsdXNoX3BhZ2Uoc2dfcGFnZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpKTsKIAkJbWIoKTsgLypNYWtl
IHN1cmUgdGhhdCBhbGwgY2FjaGUgbGluZSBlbnRyeSBpcyBmbHVzaGVkKi8KIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwppbmRleCA0YjdjZmJhYzRkYWEuLjQ3ZDgyMTEyMjFm
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKQEAgLTEyNiw4ICsxMjYs
OCBAQCB2b2lkIGRybV9nZW1fc2htZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmopCiAJCWRybV9wcmltZV9nZW1fZGVzdHJveShvYmosIHNobWVtLT5zZ3QpOwogCX0gZWxz
ZSB7CiAJCWlmIChzaG1lbS0+c2d0KSB7Ci0JCQlkbWFfdW5tYXBfc2cob2JqLT5kZXYtPmRldiwg
c2htZW0tPnNndC0+c2dsLAotCQkJCSAgICAgc2htZW0tPnNndC0+bmVudHMsIERNQV9CSURJUkVD
VElPTkFMKTsKKwkJCWRtYV91bm1hcF9zZ3RhYmxlKG9iai0+ZGV2LT5kZXYsIHNobWVtLT5zZ3Qs
CisJCQkJCSAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQkJc2dfZnJlZV90YWJsZShzaG1lbS0+
c2d0KTsKIAkJCWtmcmVlKHNobWVtLT5zZ3QpOwogCQl9CkBAIC00MjQsOCArNDI0LDcgQEAgdm9p
ZCBkcm1fZ2VtX3NobWVtX3B1cmdlX2xvY2tlZChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikK
IAogCVdBUk5fT04oIWRybV9nZW1fc2htZW1faXNfcHVyZ2VhYmxlKHNobWVtKSk7CiAKLQlkbWFf
dW5tYXBfc2cob2JqLT5kZXYtPmRldiwgc2htZW0tPnNndC0+c2dsLAotCQkgICAgIHNobWVtLT5z
Z3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJZG1hX3VubWFwX3NndGFibGUob2JqLT5k
ZXYtPmRldiwgc2htZW0tPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCXNnX2ZyZWVfdGFi
bGUoc2htZW0tPnNndCk7CiAJa2ZyZWUoc2htZW0tPnNndCk7CiAJc2htZW0tPnNndCA9IE5VTEw7
CkBAIC02OTcsMTIgKzY5NiwxNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fc2htZW1fZ2V0
X3BhZ2VzX3NndChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIAkJZ290byBlcnJfcHV0X3Bh
Z2VzOwogCX0KIAkvKiBNYXAgdGhlIHBhZ2VzIGZvciB1c2UgYnkgdGhlIGgvdy4gKi8KLQlkbWFf
bWFwX3NnKG9iai0+ZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJ
T05BTCk7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKG9iai0+ZGV2LT5kZXYsIHNndCwgRE1BX0JJ
RElSRUNUSU9OQUwsIDApOworCWlmIChyZXQpCisJCWdvdG8gZXJyX2ZyZWVfc2d0OwogCiAJc2ht
ZW0tPnNndCA9IHNndDsKIAogCXJldHVybiBzZ3Q7CiAKK2Vycl9mcmVlX3NndDoKKwlzZ19mcmVl
X3RhYmxlKHNndCk7CisJa2ZyZWUoc2d0KTsKIGVycl9wdXRfcGFnZXM6CiAJZHJtX2dlbV9zaG1l
bV9wdXRfcGFnZXMoc2htZW0pOwogCXJldHVybiBFUlJfUFRSKHJldCk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMK
aW5kZXggYjcxN2U1MmU5MDllLi5kNTgzZDY1NDU2NjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTYx
Nyw2ICs2MTcsNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fbWFwX2RtYV9idWYoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogewogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqID0gYXR0YWNoLT5kbWFidWYtPnByaXY7CiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7CisJaW50
IHJldDsKIAogCWlmIChXQVJOX09OKGRpciA9PSBETUFfTk9ORSkpCiAJCXJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOwpAQCAtNjI2LDExICs2MjcsMTIgQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fZ2Vt
X21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAllbHNlCiAJ
CXNndCA9IG9iai0+ZGV2LT5kcml2ZXItPmdlbV9wcmltZV9nZXRfc2dfdGFibGUob2JqKTsKIAot
CWlmICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMs
IGRpciwKLQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CisJcmV0ID0gZG1hX21h
cF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwKKwkJCSAgICAgIERNQV9BVFRSX1NLSVBf
Q1BVX1NZTkMpOworCWlmIChyZXQpIHsKIAkJc2dfZnJlZV90YWJsZShzZ3QpOwogCQlrZnJlZShz
Z3QpOwotCQlzZ3QgPSBFUlJfUFRSKC1FTk9NRU0pOworCQlzZ3QgPSBFUlJfUFRSKHJldCk7CiAJ
fQogCiAJcmV0dXJuIHNndDsKQEAgLTY1Miw4ICs2NTQsNyBAQCB2b2lkIGRybV9nZW1fdW5tYXBf
ZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJaWYgKCFzZ3QpCiAJ
CXJldHVybjsKIAotCWRtYV91bm1hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsIGRpciwKLQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCWRtYV91bm1h
cF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7
CiAJc2dfZnJlZV90YWJsZShzZ3QpOwogCWtmcmVlKHNndCk7CiB9Ci0tIAoyLjE3LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
