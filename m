Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFD1FF82D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:53:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5C1E66588
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:53:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A76D566591; Thu, 18 Jun 2020 15:53:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C935B665B6;
	Thu, 18 Jun 2020 15:41:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8384B6659C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7459F665BB; Thu, 18 Jun 2020 15:40:38 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id DCE776659C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:24 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024euoutp0255ff42f58c1aef18a0e2cea7e880e680~ZrZrqf5ra1250012500euoutp02k
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154024euoutp0255ff42f58c1aef18a0e2cea7e880e680~ZrZrqf5ra1250012500euoutp02k
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eucas1p2c76353986edc8fa47f500f6958cd6ff9~ZrZrXy-wd0500605006eucas1p2v;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E0.DE.60679.7EA8BEE5; Thu, 18
 Jun 2020 16:40:23 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93~ZrZqsjD1q1755717557eucas1p1I;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154023eusmtrp2a3565a5ca2c08fe56a160f1ec7cc0fee~ZrZqr24EP0399203992eusmtrp2Z;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-32-5eeb8ae78786
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7A.EE.08375.6EA8BEE5; Thu, 18
 Jun 2020 16:40:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154022eusmtip17c625ab9615396284a89154a2f9a6468~ZrZp7-JR90742307423eusmtip1R;
 Thu, 18 Jun 2020 15:40:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:34 +0200
Message-Id: <20200618153956.29558-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe1BMYRjG59uz59JOy2kz+SRldjCTW8KMQzIYl2PG0Bj/YMSho2J3NedU
 2qYhJWNWpcsIqyFEd7E1XValVrU12aSarEshmspOMhXSmrKnE/77vc/zvO873zsfgSieoe5E
 qCac5TSMSonJpGWNv16s6NfZAleN/VxOJbU2S6jH14tRaqosFaE6vw9jVGa/BVB5BQ0SKuup
 HzXW+VFCGT51oVTqUwtOdRgzMaqovhun+u+MI1Tdt88o1Z1eDzbPpgtvFQK6+keWlK7Ud+N0
 +Y8PKP3+sllCl2Sfo99OfkLodGsOoJ+8jsVos/ENTieX5gN61OAZ4HxQtjGIVYVGspzPpqOy
 kMyXJWiYXhmVYmmQxAKLhw4QBCTXwpvNWh1wIhRkLoC9hT4ijwGYXXdWB2QOHgWwsX0cCIaQ
 bx20S0QjB8C+6nu4WDg6HuisqJDCSF+oG9JhAs8hEwBsSnIWQgipR+CAyT5tuJJ7YW99yvRY
 KbkYXit4Ps1ychO8MGyTiuu8YMGjWkRgJ4feYk5AhUGQ7MFhQkPNTGgbvDBVhYjsCr+YS3GR
 PeBU5W2J2BAP4MfWIlwsEgHsiLs+8yI/+K51AhOugZDesNjoI8pbYF9OGyYeaRa0DrkIMuLA
 tLJriCjL4aWLCjG9BOrND/+trWtrn4nQsDLRSzxQKoC2K10gBXjp/+/KAiAfzGUjeHUwy6/W
 sGdW8oyaj9AErzx+Wm0Ajq/VMmkeqwDG38dMgCSA0lk+sN8WqECZSF6rNgFIIMo58q2WlkCF
 PIjRRrPc6SNchIrlTWA+IVXOla+5O3hYQQYz4ewplg1jub+uhHByjwUxV5tenVNrksNr8u1J
 0btUGa4B8w5NSBdweRs3VPy+cQDZ6V5Qxa3IfuiivWl9Fddw8s7FhfF7yjHSvq7Hc2DRSA5y
 X8/4p60fBbFRU18zKFOMoWJ3L4ufCPbOtaXvcJN2l2p9oruIwYzztXxccY/b9pGQSa99lf54
 2qPkpGWhSikfwvguRTie+QOgax04VgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7rPul7HGbzstrboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFnOdnGS1Wrj7KZLFgv7XFlysPmSw2Pb7GajFx/1l2i8u75rBZrD1yl93i
 +cIfzBYHPzxhtbg7+QijA7/HmnlrGD32flvA4rFz1l12j+3fHrB63O8+zuSxeUm9x+1/j5k9
 Jt9Yzuix+2YDm8fxXbfYPfq2rGL0+LxJLoAnSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9jzsXNrAWzlComnD3K1MB4VqaLkZNDQsBE4tzL30wg
 tpDAUkaJNdPDIeIyEienNbBC2MISf651sXUxcgHVfGKUmDXtMQtIgk3AUKLrLURCRKCTUWJa
 90d2EIdZYAmzRN/US0AZDg5hAV+JV/1sIA0sAqoS01efYQSxeQXsJFrev2aB2CAvsXrDAWYQ
 mxMofvp4KyvERbYSzz+0sU1g5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMI62Hfu5
 eQfjpY3BhxgFOBiVeHhfhLyOE2JNLCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEh
 RlOgoyYyS4km5wNjPK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dU
 A2Pzbd6pahNm3yq6ylW46XDBYUWPz3WREvfdjzBObXPwSlPq7nZ4xzJZ65Gv/6K2VVqz5knG
 LE+8Pv0k7+81jKX/WHgt/yzzvqD5aH7LhLLdLWdS5Lnbn8efaa1jDvv8+ELxet7I6QdimFc3
 ng+t3BCRe8Bg/5vt867m7RfmMJ/yuHrPPpk7+3YpsRRnJBpqMRcVJwIA7lJ9zrkCAAA=
X-CMS-MailID: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
X-Msg-Generator: CA
X-RootMTR: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154023eucas1p1613c9cd68f360fdcdaed7adf9d5abf93@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 13/36] drm: msm: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW0uYyAgICB8IDEzICsrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1t
dS5jIHwgMTQgKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMg
IHwgIDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9nZW0uYwppbmRleCAzOGIwYzBlMWY4M2UuLmUwZDVmZDM2ZWE4ZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKQEAgLTUzLDExICs1MywxMCBAQCBzdGF0aWMgdm9pZCBzeW5j
X2Zvcl9kZXZpY2Uoc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2JqKQogCXN0cnVjdCBkZXZp
Y2UgKmRldiA9IG1zbV9vYmotPmJhc2UuZGV2LT5kZXY7CiAKIAlpZiAoZ2V0X2RtYV9vcHMoZGV2
KSAmJiBJU19FTkFCTEVEKENPTkZJR19BUk02NCkpIHsKLQkJZG1hX3N5bmNfc2dfZm9yX2Rldmlj
ZShkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJ
RElSRUNUSU9OQUwpOworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZGV2LCBtc21fb2Jq
LT5zZ3QsCisJCQkJCSAgICBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBlbHNlIHsKLQkJZG1hX21h
cF9zZyhkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1B
X0JJRElSRUNUSU9OQUwpOworCQlkbWFfbWFwX3NndGFibGUoZGV2LCBtc21fb2JqLT5zZ3QsIERN
QV9CSURJUkVDVElPTkFMLCAwKTsKIAl9CiB9CiAKQEAgLTY2LDExICs2NSw5IEBAIHN0YXRpYyB2
b2lkIHN5bmNfZm9yX2NwdShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmopCiAJc3RydWN0
IGRldmljZSAqZGV2ID0gbXNtX29iai0+YmFzZS5kZXYtPmRldjsKIAogCWlmIChnZXRfZG1hX29w
cyhkZXYpICYmIElTX0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewotCQlkbWFfc3luY19zZ19mb3Jf
Y3B1KGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFf
QklESVJFQ1RJT05BTCk7CisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShkZXYsIG1zbV9vYmot
PnNndCwgRE1BX0JJRElSRUNUSU9OQUwpOwogCX0gZWxzZSB7Ci0JCWRtYV91bm1hcF9zZyhkZXYs
IG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNU
SU9OQUwpOworCQlkbWFfdW5tYXBfc2d0YWJsZShkZXYsIG1zbV9vYmotPnNndCwgRE1BX0JJRElS
RUNUSU9OQUwsIDApOwogCX0KIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ3B1bW11LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYwppbmRleCAzMTBh
MzFiMDVmYWEuLjMxOWYwNmMyODIzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ3B1bW11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMKQEAgLTMw
LDIxICszMCwxOSBAQCBzdGF0aWMgaW50IG1zbV9ncHVtbXVfbWFwKHN0cnVjdCBtc21fbW11ICpt
bXUsIHVpbnQ2NF90IGlvdmEsCiB7CiAJc3RydWN0IG1zbV9ncHVtbXUgKmdwdW1tdSA9IHRvX21z
bV9ncHVtbXUobW11KTsKIAl1bnNpZ25lZCBpZHggPSAoaW92YSAtIEdQVU1NVV9WQV9TVEFSVCkg
LyBHUFVNTVVfUEFHRV9TSVpFOwotCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7CisJc3RydWN0IHNn
X2RtYV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CiAJdW5zaWduZWQgcHJvdF9iaXRzID0gMDsKLQl1bnNp
Z25lZCBpLCBqOwogCiAJaWYgKHByb3QgJiBJT01NVV9XUklURSkKIAkJcHJvdF9iaXRzIHw9IDE7
CiAJaWYgKHByb3QgJiBJT01NVV9SRUFEKQogCQlwcm90X2JpdHMgfD0gMjsKIAotCWZvcl9lYWNo
X3NnKHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywgaSkgewotCQlkbWFfYWRkcl90IGFkZHIgPSBz
Zy0+ZG1hX2FkZHJlc3M7Ci0JCWZvciAoaiA9IDA7IGogPCBzZy0+bGVuZ3RoIC8gR1BVTU1VX1BB
R0VfU0laRTsgaisrLCBpZHgrKykgewotCQkJZ3B1bW11LT50YWJsZVtpZHhdID0gYWRkciB8IHBy
b3RfYml0czsKLQkJCWFkZHIgKz0gR1BVTU1VX1BBR0VfU0laRTsKLQkJfQorCWZvcl9lYWNoX3Nn
dGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJZG1hX2FkZHJfdCBhZGRyID0g
c2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7CisKKwkJQlVJTERfQlVHX09OKEdQ
VU1NVV9QQUdFX1NJWkUgIT0gUEFHRV9TSVpFKTsKKwkJZ3B1bW11LT50YWJsZVtpZHgrK10gPSBh
ZGRyIHwgcHJvdF9iaXRzOwogCX0KIAogCS8qIHdlIGNhbiBpbXByb3ZlIGJ5IGRlZmVycmluZyBm
bHVzaCBmb3IgbXVsdGlwbGUgbWFwKCkgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2lvbW11LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jCmluZGV4IDNh
MzgxYTk2NzRjOS4uNmMzMWU2NTgzNGM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9pb21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKQEAgLTM2
LDcgKzM2LDcgQEAgc3RhdGljIGludCBtc21faW9tbXVfbWFwKHN0cnVjdCBtc21fbW11ICptbXUs
IHVpbnQ2NF90IGlvdmEsCiAJc3RydWN0IG1zbV9pb21tdSAqaW9tbXUgPSB0b19tc21faW9tbXUo
bW11KTsKIAlzaXplX3QgcmV0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKGlvbW11LT5kb21haW4s
IGlvdmEsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBwcm90KTsKKwlyZXQgPSBpb21tdV9tYXBfc2d0
YWJsZShpb21tdS0+ZG9tYWluLCBpb3ZhLCBzZ3QsIHByb3QpOwogCVdBUk5fT04oIXJldCk7CiAK
IAlyZXR1cm4gKHJldCA9PSBsZW4pID8gMCA6IC1FSU5WQUw7Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
