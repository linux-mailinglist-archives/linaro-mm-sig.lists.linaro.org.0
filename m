Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F401D1676
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:51:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDA9165FAA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:51:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C9B3465FB6; Wed, 13 May 2020 13:51:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3247E66240;
	Wed, 13 May 2020 13:34:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3B5A865F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 26F4565F91; Wed, 13 May 2020 13:34:33 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id F240265F95
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:10 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133310euoutp020128b0e6eada47a32ac470d5712d4d81~OmcUWxILE0033500335euoutp02O
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133310euoutp020128b0e6eada47a32ac470d5712d4d81~OmcUWxILE0033500335euoutp02O
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133309eucas1p25b78bef1ca867a71b40fd91e10da607b~OmcUDOjQW0616406164eucas1p2Z;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2D.C5.61286.517FBBE5; Wed, 13
 May 2020 14:33:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133309eucas1p1b5b2505556566570e6fb3433397c6168~OmcTxGNQj0876608766eucas1p1_;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133309eusmtrp1e68a8c1c6d83efe321f433230237ed3a~OmcTwck3M1050610506eusmtrp1K;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-57-5ebbf71525ea
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 27.1A.08375.517FBBE5; Wed, 13
 May 2020 14:33:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133308eusmtip18920ac7684f9687e1d8df62e18e53f73~OmcTEa_MK0131701317eusmtip1E;
 Wed, 13 May 2020 13:33:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:25 +0200
Message-Id: <20200513133245.6408-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djP87qi33fHGcy7aGHRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGVsnHiIrWCDaMW3m8/ZGxhPCnYxcnJICJhIvFq3lrWLkYtD
 SGAFo8SnJdeYIJwvjBJbb/SwQDifGSWatm1kgmlZ9OIjM0RiOaPEi2e9bHAt3+Y+BKtiEzCU
 6HrbxQZiiwi0Mkqc6OUBKWIWOMQksaX1KgtIQlggWOLj+8dgRSwCqhINLxrBbF4BW4lXW9ez
 QayTl1i94QAziM0JEr+zH+wmCYFd7BLP511hhyhykfjSs4sVwhaWeHV8C1RcRuL05B6ohmZG
 iYfn1rJDOD2MEpebZjBCVFlL3Dn3C2gdB9B9mhLrd+lDhB0lts1fyAoSlhDgk7jxFhxkzEDm
 pG3TmSHCvBIdbUIQ1WoSs46vg1t78MIlqBIPia3zbSEBdJhRYu37H6wTGOVnIexawMi4ilE8
 tbQ4Nz212DAvtVyvODG3uDQvXS85P3cTIzAlnf53/NMOxq+Xkg4xCnAwKvHwWtzaHSfEmlhW
 XJl7iFGCg1lJhNdvPVCINyWxsiq1KD++qDQntfgQozQHi5I4r/Gil7FCAumJJanZqakFqUUw
 WSYOTqkGRlP/x7O2vMtKt2ma8H3D1qbUGPW8pSqPbxav1+7IsnSsP8ujIyhtqjY/9VeC4ZqE
 23JZF23NfidGf7jH8mKyvma7rf8uodwii/lRhyPlb1Xx+mwSvb7mMsPz6p3zNtVLf9153qnV
 Q02Pq/jcuv7uCpMv4Ymrd6xMvMYxu/aysLG/Y2jpc7MfSizFGYmGWsxFxYkAeOGoR0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7qi33fHGZz5Im/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GVsnHiIrWCDaMW3m8/ZGxhPCnYxcnJICJhILHrxkbmLkYtDSGApo8T2DxfZIBIyEienNbBC
 2MISf651sUEUfWKUaLg6lx0kwSZgKNH1FiIhItDJKDGt+yM7iMMscIJJ4t7e+YwgVcICgRKr
 +1vBbBYBVYmGF41gK3gFbCVebV0PtU5eYvWGA8wgNidI/M5+FhBbSCBfYu/ifWwTGPkWMDKs
 YhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyRbcd+bt7BeGlj8CFGAQ5GJR5ei1u744RYE8uK
 K3MPMUpwMCuJ8PqtBwrxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjB+80riDU0NzS0sDc2N
 zY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MOpuTO4Wlcl9odToFeM1ITjs7Zy9RxqM
 vq8Olk+//HRnw4JPk/x2ibQaGqjmV69W1p8Ud9qp2Gf2WoNZx5uTL2f296Ynnv2xvXmy4JQG
 vnbmeVONnrl57xSc+GxJqcov+9V2Cxu+aAcdZYnX3OHUY8KYfm25v/Xi0zH59x7XfSp1fPyS
 OfnkRyWW4oxEQy3mouJEAOXWc2CnAgAA
X-CMS-MailID: 20200513133309eucas1p1b5b2505556566570e6fb3433397c6168
X-Msg-Generator: CA
X-RootMTR: 20200513133309eucas1p1b5b2505556566570e6fb3433397c6168
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133309eucas1p1b5b2505556566570e6fb3433397c6168
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133309eucas1p1b5b2505556566570e6fb3433397c6168@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 18/38] drm: omapdrm: fix common struct
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
dW5jdGlvbi4KCkZpeCB0aGUgY29kZSB0byByZWZlciB0byBwcm9wZXIgbmVudHMgb3Igb3JpZ19u
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpjaGVja3MgZm9yIGEgYnVmZmVyIGNvbnRpZ3VpdHkg
aW4gRE1BIGFkZHJlc3Mgc3BhY2UsIHNvIGl0IHNob3VsZCB0ZXN0CnNnX3RhYmxlLT5uZW50cyBl
bnRyeS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1z
dW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NSAwMC8zOF0g
RFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhy
ZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS8yMDIwMDUxMzEzMjExNC42
MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQogZHJpdmVycy9ncHUvZHJtL29t
YXBkcm0vb21hcF9nZW0uYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJt
L29tYXBfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jCmluZGV4IGMy
NTk0MTEuLmNiY2IzNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYwpAQCAtNDgsNyAr
NDgsNyBAQCBzdHJ1Y3Qgb21hcF9nZW1fb2JqZWN0IHsKIAkgKiAgIE9NQVBfQk9fTUVNX0RNQV9B
UEkgZmxhZyBzZXQpCiAJICoKIAkgKiAtIGJ1ZmZlcnMgaW1wb3J0ZWQgZnJvbSBkbWFidWYgKHdp
dGggdGhlIE9NQVBfQk9fTUVNX0RNQUJVRiBmbGFnIHNldCkKLQkgKiAgIGlmIHRoZXkgYXJlIHBo
eXNpY2FsbHkgY29udGlndW91cyAod2hlbiBzZ3QtPm9yaWdfbmVudHMgPT0gMSkKKwkgKiAgIGlm
IHRoZXkgYXJlIHBoeXNpY2FsbHkgY29udGlndW91cyAod2hlbiBzZ3QtPm5lbnRzID09IDEpCiAJ
ICoKIAkgKiAtIGJ1ZmZlcnMgbWFwcGVkIHRocm91Z2ggdGhlIFRJTEVSIHdoZW4gZG1hX2FkZHJf
Y250IGlzIG5vdCB6ZXJvLCBpbgogCSAqICAgd2hpY2ggY2FzZSB0aGUgRE1BIGFkZHJlc3MgcG9p
bnRzIHRvIHRoZSBUSUxFUiBhcGVydHVyZQpAQCAtMTI3OSw3ICsxMjc5LDcgQEAgc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHNpemVfdCBzaXplLAogCXVuaW9uIG9tYXBfZ2VtX3NpemUgZ3NpemU7CiAKIAkvKiBXaXRob3V0
IGEgRE1NIG9ubHkgcGh5c2ljYWxseSBjb250aWd1b3VzIGJ1ZmZlcnMgY2FuIGJlIHN1cHBvcnRl
ZC4gKi8KLQlpZiAoc2d0LT5vcmlnX25lbnRzICE9IDEgJiYgIXByaXYtPmhhc19kbW0pCisJaWYg
KHNndC0+bmVudHMgIT0gMSAmJiAhcHJpdi0+aGFzX2RtbSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJ
TlZBTCk7CiAKIAlnc2l6ZS5ieXRlcyA9IFBBR0VfQUxJR04oc2l6ZSk7CkBAIC0xMjkzLDcgKzEy
OTMsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgc2l6ZV90IHNpemUsCiAKIAlvbWFwX29iai0+c2d0ID0gc2d0Owog
Ci0JaWYgKHNndC0+b3JpZ19uZW50cyA9PSAxKSB7CisJaWYgKHNndC0+bmVudHMgPT0gMSkgewog
CQlvbWFwX29iai0+ZG1hX2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7CiAJfSBlbHNl
IHsKIAkJLyogQ3JlYXRlIHBhZ2VzIGxpc3QgZnJvbSBzZ3QgKi8KLS0gCjEuOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
