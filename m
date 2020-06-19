Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A86200741
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:50:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5708E665F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:50:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4A889665E8; Fri, 19 Jun 2020 10:50:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73883666D5;
	Fri, 19 Jun 2020 10:38:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1AB43665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B102665D5; Fri, 19 Jun 2020 10:37:17 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B99C0665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:03 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703euoutp01eae3e20fdcaca94a59a1d892cbde2bb2~Z66G2NaVc1680716807euoutp01e
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103703euoutp01eae3e20fdcaca94a59a1d892cbde2bb2~Z66G2NaVc1680716807euoutp01e
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103702eucas1p14e7a598cf79bb058dee154e1946a2c9c~Z66GdCl0p0705907059eucas1p1E;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9F.8C.06318.E459CEE5; Fri, 19
 Jun 2020 11:37:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5~Z66F_rJ3n0704707047eucas1p1y;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103701eusmtrp1ccebd68058c16a8bf7a62b76bf5d0462~Z66F4Xp_60959609596eusmtrp1-;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-63-5eec954e7dc0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 98.0B.06017.D459CEE5; Fri, 19
 Jun 2020 11:37:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103701eusmtip230514ba84e3184c5dd6c231d8b83c417~Z66FMKCde3164531645eusmtip2W;
 Fri, 19 Jun 2020 10:37:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:13 +0200
Message-Id: <20200619103636.11974-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO2eXo7g6TdEPk6xpUUFesMtXhtkNTn8yqD8GmStPam1TNrUM
 ItEKm068UI0pZWVq3lObqZg5nTNk8zbNLNNlpeU1b5mJtnlm/Xve5/I+Lx8fgfOb2c5EuCSK
 lkqEIgHHlqVu/m3YdfLeWJCXMsUNKQxvMfRCWcpGK+o0HBnnJjkoa1gP0PNCLYay633RrNGE
 ofKhHjZKq9dzUVdNFgcVN/Vz0fDjBRw1TH1ho/6MJuC/nip6WASouvlsFlWt6udSVfODbGog
 SYdRFTk3qQ/LQziV0ZsHqNr3cRxKV9PHpVIqCwA1U77plN1Z24MhtCg8hpZ6+gXbhmV1VLAj
 VYJrqXotFgf0LnJgQ0ByNxzOLMbkwJbgk/kAlswmAYvAJ2cBzHwZyAgzAOaXaMBaIslgAIyQ
 B6Dq/mecGcyJ8YQ53OLikN5QPi7nWLADeRvAFoWdxYSTKhyOaP6sCvZkAFTmajALZpFbYXqj
 ZpXnkX4wvlpvrXOFhWVvVpfamPnRWw1syyJI9nHhu8FnGGM6BrsztFZsD3/oKrkMdoGtGcks
 JpAAoMlQzGWGZAC74pXWCl/40bBoribM9+2ApTWeDH0YKjuMXAsNyXWwd3yDhcbNMF39AGdo
 Hky8w2fc26BKV/KvtqG9E2cwBXvaFNYHTgMwPVnNSgWuqv9l2QAUACc6WiYOpWU+Evqqh0wo
 lkVLQj0uRojLgfl3tS7r5l6B10sXNIAkgMCON3JmNIjPFsbIYsUaAAlc4MA7om8N4vNChLHX
 aWnEeWm0iJZpwEaCJXDi+Tz5fo5Phgqj6Cs0HUlL11SMsHGOA3d1fZK+R8FdZUUFIalpg017
 pB5JXitfL4kCpy4rkVFuOjHtaNrcGzARNmU/Muc3HfGrYswdfdr/M+C0i58bZ8SxVfT0+EQk
 2Ku3cW9pzDrQZrf9m6GuwXtpcV+TUrvcreksNE5V1zYqDhVrJ2eq0v1Dmo+2CxO3LNwYyJ2f
 EeQIWLIwofdOXCoT/gW9h8I/WQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsVy+t/xe7q+U9/EGbw/Z2nRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLOc/PMlqsXH2UyWLBfmuLL1ceMllsenyN1WLi/rPsFpd3zWGzWHvkLrvF
 84U/mC0OfnjCanF38hFGB36PNfPWMHrs/baAxWPnrLvsHtu/PWD1uN99nMlj85J6j9v/HjN7
 TL6xnNFj980GNo/ju26xe/RtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYml
 nqGxeayVkamSvp1NSmpOZllqkb5dgl7GnIubWQtmKVVMOHuUqYHxrEwXIyeHhICJRPe5c4xd
 jFwcQgJLGSUmX/rKCJGQkTg5rYEVwhaW+HOtiw2i6BOjxMldD5lBEmwChhJdbyESIgKdjBLT
 uj+ygzjMAkuYJfqmXmIDqRIW8JXYffk7WAeLgKrEpMOHwOK8AnYSTTvPQq2Tl1i94QBYDSdQ
 /HXLQbDVQgK2EssXvGeewMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmAsbTv2c8sO
 xq53wYcYBTgYlXh4X4S8jhNiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZT
 oKMmMkuJJucD4zyvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj
 23eX5T1rOq/pTc2681JoufTxmvWur2/Na2eUVjV0m239VKaf6Y8mg3gX011lacM5X4znh0yw
 /nNge0le9tVi/dRVFmdDr901nOay//X7ZU/OnDnQ9OX88Sl3xIz37s5XWsPO/NLe+Nqfz/Wh
 4QbxRdflt6VPdxVIvC1YefPk7/n3lVUPaWwTV2Ipzkg01GIuKk4EAHK7XDC7AgAA
X-CMS-MailID: 20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5
X-Msg-Generator: CA
X-RootMTR: 20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103702eucas1p1c57147013bbac3968f6ba073caec68b5@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 13/36] drm: msm: fix common struct
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
