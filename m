Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 230022527AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:47:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A5D6619B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:47:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3CA82665AA; Wed, 26 Aug 2020 06:47:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23256666E1;
	Wed, 26 Aug 2020 06:36:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F3054617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E415160C37; Wed, 26 Aug 2020 06:35:47 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id AE90D60C37
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:36 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063535euoutp01b86a4eac25ae8f16e99ddf34a72150f3~uvetHFd_T1717417174euoutp01d
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063535euoutp01b86a4eac25ae8f16e99ddf34a72150f3~uvetHFd_T1717417174euoutp01d
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063535eucas1p1ec3c07ae73a90da4655bd0b6f633e016~uves0gNAh1479914799eucas1p1c;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 0E.AD.05997.7B2064F5; Wed, 26
 Aug 2020 07:35:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2~uvesPRM8S1480314803eucas1p1i;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063535eusmtrp21794edd135bc8b04c20367fa6c631e7d~uvesOilpN0466204662eusmtrp2K;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-cb-5f4602b7a639
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D2.53.06017.6B2064F5; Wed, 26
 Aug 2020 07:35:34 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063534eusmtip284cd426d5290cc263f07966ec9018e8a~uverllRjy0302303023eusmtip2x;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:56 +0200
Message-Id: <20200826063316.23486-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTURjGOffu7l6Hq9smeVDLHGlZ5Dd4YSUVVpcgjKCgyHTlRS2/2pxm
 /yiJo2ZqU8IlYkssy89cw68IdWir5jR16NRMxcQSrMSPNGW27ar993ue93nPczgcAhUYMDci
 PimVkSZJEkRcHqfx/WrvkSbkdFTA5AMvKq/nI0I1qOsxaqNRhVLmpV9cqnTGBKhX1V0IpWkT
 U4vmSYTSTg1ilKrNhFMDraVcqrZzDKdmnq2gVMfvbxg1VtQJju+ka8pqAP1uWcOhW0rGcLpp
 eQKjx3MNCP2mIpMetU6hdJGlEtBvh7O4tKF1BKfzdVWAXtDuPe98hXc0hkmIT2Ok/mHRvDiV
 cRZL6RLdKdSYkSyw4KEETgQkQ+Dk4hKuBDxCQL4EcGI1B2XFIoA53SaEFQsA5s7ncLdWlEPd
 m6lKAAsGFNztlSGFyZHikoFQOad0sAuZA+CHPGd7CCVLUPhdv+YYCMkIqCs3OphDesORlgbE
 znwyDFZpyzhsnSesft2O2tnJ5htyCxxtkPyKw/zZGYQNhUNdXvEmC+GsQYez7AE3Wp4i7EI2
 gJM9tTgrHgI4cE8N2JQYfun5azuWsN3PF9a3+rP2CTg9qMLtNiR3QMvcLruN2rCwsRhlbT68
 rxCwaR9YYqjbru343I+yTMPV+XrAvpAKwHyrBX0EPEv+l2kAqAKujFyWGMvIgpKYdD+ZJFEm
 T4r1u5GcqAW272W0GhabQev6dT0gCSBy5mu4p6IEmCRNlpGoB5BARS78kybjNQE/RpJxl5Em
 R0nlCYxMD9wJjsiVH1z+I1JAxkpSmVsMk8JIt6YI4eSWBbCzkhj3tav718uMdWmDQS4+A5lY
 e3qvUXgp5sCKtzw65dw+8+jB4dBOl+A++Sh2Zkog3DNdmC20DLUdnl81B7hZOiu8L2QNXz77
 57bw5nP1hhciXnmh9h075tb3qTdch4es6HO7+38qFHz1E8vFCNVuvjU0sio4fVwsT2uufyzi
 yOIkgYdQqUzyD85dRYtaAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xe7rbmNziDWa/tLLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFnOdnGS1Wrj7KZLFgv7XFlysPmSw2Pb7GajFx/1l2i8u75rBZrD1yl93i
 +cIfzBYHPzxhtbg7+QijA7/HmnlrGD32flvA4rFz1l12j+3fHrB63O8+zuSxeUm9x+1/j5k9
 Jt9Yzuix+2YDm8fxXbfYPfq2rGL0+LxJLoAnSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9j4ulXrAVHlSomLbjC1MD4WaaLkZNDQsBEouv6GeYu
 Ri4OIYGljBJrjixlgkjISJyc1sAKYQtL/LnWxQZiCwl8YpT4eVcFxGYTMJToegsS5+IQEehk
 lJjW/ZEdxGEWWMIs0Tf1EliHsICvxL9r3SwgNouAqsStnRvBNvAK2Ems2jSPBWKDvMTqDQeY
 QWxOoPjx7n6obbYSp9fOYJ7AyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYCRtO/Zz
 yw7GrnfBhxgFOBiVeHgXsLnGC7EmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQ
 oynQUROZpUST84FRnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1Oq
 gfH4v3vLZm3yFQq9s3TP/tm9Uv8vrDZ7Uem7J9dgk6zFH5e42ad+fZ+3OLVT1Uox/p7q9aT0
 ZxfYWYQ4bAwDiu7vbZ3hbsd49dRqxf8VE2/P7Eg807Kn9bTnNlaWxokpNdL589Zce1k+aUP3
 y+xpxYZ3TUsvKDz6kP/MdPvMNYum2Fb7v3kjun23EktxRqKhFnNRcSIAlxwXaboCAAA=
X-CMS-MailID: 20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2
X-Msg-Generator: CA
X-RootMTR: 20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063535eucas1p10cef37d8364216cf57c97e96d3959dd2@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 12/32] drm: msm: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJr
QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyAgICB8IDEzICsr
KysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jIHwgMTQgKysrKysr
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMgIHwgIDIgKy0KIDMgZmls
ZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9nZW0uYwppbmRleCBiMmY0OTE1MmI0ZDQuLjhjN2FlODEyYjgxMyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
Z2VtLmMKQEAgLTUzLDExICs1MywxMCBAQCBzdGF0aWMgdm9pZCBzeW5jX2Zvcl9kZXZpY2Uoc3Ry
dWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2JqKQogCXN0cnVjdCBkZXZpY2UgKmRldiA9IG1zbV9v
YmotPmJhc2UuZGV2LT5kZXY7CiAKIAlpZiAoZ2V0X2RtYV9vcHMoZGV2KSAmJiBJU19FTkFCTEVE
KENPTkZJR19BUk02NCkpIHsKLQkJZG1hX3N5bmNfc2dfZm9yX2RldmljZShkZXYsIG1zbV9vYmot
PnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOwor
CQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZGV2LCBtc21fb2JqLT5zZ3QsCisJCQkJCSAg
ICBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBlbHNlIHsKLQkJZG1hX21hcF9zZyhkZXYsIG1zbV9v
YmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwp
OworCQlkbWFfbWFwX3NndGFibGUoZGV2LCBtc21fb2JqLT5zZ3QsIERNQV9CSURJUkVDVElPTkFM
LCAwKTsKIAl9CiB9CiAKQEAgLTY2LDExICs2NSw5IEBAIHN0YXRpYyB2b2lkIHN5bmNfZm9yX2Nw
dShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmopCiAJc3RydWN0IGRldmljZSAqZGV2ID0g
bXNtX29iai0+YmFzZS5kZXYtPmRldjsKIAogCWlmIChnZXRfZG1hX29wcyhkZXYpICYmIElTX0VO
QUJMRUQoQ09ORklHX0FSTTY0KSkgewotCQlkbWFfc3luY19zZ19mb3JfY3B1KGRldiwgbXNtX29i
ai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7
CisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJRElS
RUNUSU9OQUwpOwogCX0gZWxzZSB7Ci0JCWRtYV91bm1hcF9zZyhkZXYsIG1zbV9vYmotPnNndC0+
c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFf
dW5tYXBfc2d0YWJsZShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwog
CX0KIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMgYi9k
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYwppbmRleCAzMTBhMzFiMDVmYWEuLjMxOWYw
NmMyODIzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMKQEAgLTMwLDIxICszMCwxOSBAQCBz
dGF0aWMgaW50IG1zbV9ncHVtbXVfbWFwKHN0cnVjdCBtc21fbW11ICptbXUsIHVpbnQ2NF90IGlv
dmEsCiB7CiAJc3RydWN0IG1zbV9ncHVtbXUgKmdwdW1tdSA9IHRvX21zbV9ncHVtbXUobW11KTsK
IAl1bnNpZ25lZCBpZHggPSAoaW92YSAtIEdQVU1NVV9WQV9TVEFSVCkgLyBHUFVNTVVfUEFHRV9T
SVpFOwotCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7CisJc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIg
ZG1hX2l0ZXI7CiAJdW5zaWduZWQgcHJvdF9iaXRzID0gMDsKLQl1bnNpZ25lZCBpLCBqOwogCiAJ
aWYgKHByb3QgJiBJT01NVV9XUklURSkKIAkJcHJvdF9iaXRzIHw9IDE7CiAJaWYgKHByb3QgJiBJ
T01NVV9SRUFEKQogCQlwcm90X2JpdHMgfD0gMjsKIAotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBz
Zywgc2d0LT5uZW50cywgaSkgewotCQlkbWFfYWRkcl90IGFkZHIgPSBzZy0+ZG1hX2FkZHJlc3M7
Ci0JCWZvciAoaiA9IDA7IGogPCBzZy0+bGVuZ3RoIC8gR1BVTU1VX1BBR0VfU0laRTsgaisrLCBp
ZHgrKykgewotCQkJZ3B1bW11LT50YWJsZVtpZHhdID0gYWRkciB8IHByb3RfYml0czsKLQkJCWFk
ZHIgKz0gR1BVTU1VX1BBR0VfU0laRTsKLQkJfQorCWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2Uo
c2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJZG1hX2FkZHJfdCBhZGRyID0gc2dfcGFnZV9pdGVyX2Rt
YV9hZGRyZXNzKCZkbWFfaXRlcik7CisKKwkJQlVJTERfQlVHX09OKEdQVU1NVV9QQUdFX1NJWkUg
IT0gUEFHRV9TSVpFKTsKKwkJZ3B1bW11LT50YWJsZVtpZHgrK10gPSBhZGRyIHwgcHJvdF9iaXRz
OwogCX0KIAogCS8qIHdlIGNhbiBpbXByb3ZlIGJ5IGRlZmVycmluZyBmbHVzaCBmb3IgbXVsdGlw
bGUgbWFwKCkgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jCmluZGV4IDNhMzgxYTk2NzRjOS4uNmMz
MWU2NTgzNGM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKQEAgLTM2LDcgKzM2LDcgQEAgc3Rh
dGljIGludCBtc21faW9tbXVfbWFwKHN0cnVjdCBtc21fbW11ICptbXUsIHVpbnQ2NF90IGlvdmEs
CiAJc3RydWN0IG1zbV9pb21tdSAqaW9tbXUgPSB0b19tc21faW9tbXUobW11KTsKIAlzaXplX3Qg
cmV0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKGlvbW11LT5kb21haW4sIGlvdmEsIHNndC0+c2ds
LCBzZ3QtPm5lbnRzLCBwcm90KTsKKwlyZXQgPSBpb21tdV9tYXBfc2d0YWJsZShpb21tdS0+ZG9t
YWluLCBpb3ZhLCBzZ3QsIHByb3QpOwogCVdBUk5fT04oIXJldCk7CiAKIAlyZXR1cm4gKHJldCA9
PSBsZW4pID8gMCA6IC1FSU5WQUw7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
