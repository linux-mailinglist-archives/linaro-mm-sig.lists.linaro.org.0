Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1E71CF19C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89D2961994
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:29:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C575619AC; Tue, 12 May 2020 09:29:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F04A8661C5;
	Tue, 12 May 2020 09:06:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6E9065F8D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C88EA66218; Tue, 12 May 2020 09:05:59 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1FFCE65F8F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:15 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090114euoutp01948a8d3ad43f18420ddd91b1c4e27684~OPFmtlpLR2628826288euoutp01O
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090114euoutp01948a8d3ad43f18420ddd91b1c4e27684~OPFmtlpLR2628826288euoutp01O
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090113eucas1p1678531a352901ebf12c22e466b008a64~OPFmOBb4W1610016100eucas1p1Y;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A6.6B.60698.9D56ABE5; Tue, 12
 May 2020 10:01:13 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090113eucas1p254a8b23dd0ee63411df200f66d193203~OPFl_eaol2661826618eucas1p2P;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090113eusmtrp2f4fbc61e9c7f34e6202a8543d1888c5f~OPFl9zZv80472504725eusmtrp2D;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-0f-5eba65d9c6e2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3B.35.08375.9D56ABE5; Tue, 12
 May 2020 10:01:13 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090112eusmtip1bd56442fffa27ceb46aae681620039bb~OPFlXufgb1257212572eusmtip1n;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:31 +0200
Message-Id: <20200512090058.14910-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjm2zk7OxubnKaxLxOlQdEFNbUfB7SRFHR+WVgWSl6WHnTlpux4
 LSopE1k6vGSZeMNE835faqg5tBXWrLykpampiIEX8kLa1LYds3/P87zP814+PhwRN3PtcYUq
 hlar5JFSTIDq3mz0O4/S7UEnO5bcyHTjOw7ZkFvHJXd0mQg5uLaEkRVVvRwyayIDJYu7PMnV
 wSkO2Tg9zCUH2vMxMre/k0PW9IzzyO7lGS6Zmz2PnbGhqgurAdWxXoxSL9cnudTEIwOHaiq9
 R33bnkao7JFyQL0aTcIobXMloFYaHS8KAgReYXSkIo5Wu8pCBBFr/d7RBruEMe0GlgTK9mkA
 H4fEKfjs/RJPAwS4mHgB4JR2k8uSVQA/ZebvkhUAtaYeM8GtkYK5s6xeDqBubQvdS2jralFL
 X4xwg5oFDWbBdsRDAN+mCy0mhEhF4HBmEbAUbAlfOD5VaDWhxGG49URnDYsIGTRWpfHYBZ1g
 Vf1rxIL5Zn2iyGSdBgk9D25+yEFY0zk425LKYbEt/Glo3g07wJ22Ig4beGC+zljDY0kagAP3
 cwHr8oRjxk3MchxCHIN17a7snd5ww+TCQhs4smB9MMQMs3RPEVYWwdQUMdvjCMwz1O5N7f74
 eXczCv7Y+WrFYqIXwKbewAzglPd/VDEAlUBCxzLKcJrxUNHxLoxcycSqwl1Co5SNwPyX+rYN
 a62g03RdDwgcSIWiVPe2IDFXHsckKvUA4ojUTpSsMEuiMHniLVodFayOjaQZPTiIo1KJyKNk
 PlBMhMtj6Js0HU2r/1U5ON8+CbgPufs4/D7k7wG5TiEBQ9cS+ip+LStkJ0RHW0rTvcpaF2cl
 I/UpoUSos4/fVf/OpAPM5uOhLzdmChKDjQu+xskem9s5l4SX78j9xw13hbbt/NOA6NCs1M/q
 O9GusJLu5O+yrv3Un6u65ore4PNpV5YlDX7P+U1zFza6HBeDq+OlKBMhdzuOqBn5X24SffxH
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7o3U3fFGVz4J2/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PreceC4yIVd/p+sjUwLhPsYuTgkBAwkZj73LmLkYtDSGApo8SF3l+MXYycQHEZ
 iZPTGlghbGGJP9e62CCKPjFKrLt8hQUkwSZgKNH1FiIhItDJKDGt+yM7iMMsMIFZ4n7LarBR
 wgIBEkea17GB2CwCqhJ/p20D6+YVsJM4t7qHHWKFvMTqDQeYQWxOoPj9+X/AaoQECiUeXX3L
 MoGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzASNl27OfmHYyXNgYfYhTgYFTi4e0w
 2hknxJpYVlyZe4hRgoNZSYS3JRMoxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnAKM4riTc0
 NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cAouNhf0GdGQIPehLuy1QeO
 t0+JfvlSxrE3jceruNquRvb/s3z9rsOx8g8mA9XYyF4PiHDa96mZf9vvyTcY0uJsBdRqzrYv
 XXlB2lz0d9bLnzMVBXtuqJ5g+tLI/v6i/5bA3JU3tJzdEqt7S/I/K1cYli9qejor5t2/GLZf
 Odycr14nB/lcUmIpzkg01GIuKk4EAHnl4oGqAgAA
X-CMS-MailID: 20200512090113eucas1p254a8b23dd0ee63411df200f66d193203
X-Msg-Generator: CA
X-RootMTR: 20200512090113eucas1p254a8b23dd0ee63411df200f66d193203
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090113eucas1p254a8b23dd0ee63411df200f66d193203
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090113eucas1p254a8b23dd0ee63411df200f66d193203@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 11/38] drm: exynos: fix common struct
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
cml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMgfCAxMCArKysrKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYwppbmRleCBmY2VlMzNhLi43MDE0YThjIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCkBAIC0zOTUsOCArMzk1LDggQEAg
c3RhdGljIHZvaWQgZzJkX3VzZXJwdHJfcHV0X2RtYV9hZGRyKHN0cnVjdCBnMmRfZGF0YSAqZzJk
LAogCQlyZXR1cm47CiAKIG91dDoKLQlkbWFfdW5tYXBfc2codG9fZG1hX2RldihnMmQtPmRybV9k
ZXYpLCBnMmRfdXNlcnB0ci0+c2d0LT5zZ2wsCi0JCQlnMmRfdXNlcnB0ci0+c2d0LT5uZW50cywg
RE1BX0JJRElSRUNUSU9OQUwpOworCWRtYV91bm1hcF9zZ3RhYmxlKHRvX2RtYV9kZXYoZzJkLT5k
cm1fZGV2KSwgZzJkX3VzZXJwdHItPnNndCwKKwkJCSAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwog
CiAJcGFnZXMgPSBmcmFtZV92ZWN0b3JfcGFnZXMoZzJkX3VzZXJwdHItPnZlYyk7CiAJaWYgKCFJ
U19FUlIocGFnZXMpKSB7CkBAIC01MTEsMTAgKzUxMSwxMCBAQCBzdGF0aWMgZG1hX2FkZHJfdCAq
ZzJkX3VzZXJwdHJfZ2V0X2RtYV9hZGRyKHN0cnVjdCBnMmRfZGF0YSAqZzJkLAogCiAJZzJkX3Vz
ZXJwdHItPnNndCA9IHNndDsKIAotCWlmICghZG1hX21hcF9zZyh0b19kbWFfZGV2KGcyZC0+ZHJt
X2RldiksIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCURNQV9CSURJUkVDVElPTkFMKSkgewor
CXJldCA9IGRtYV9tYXBfc2d0YWJsZSh0b19kbWFfZGV2KGcyZC0+ZHJtX2RldiksIHNndCwKKwkJ
CSAgICAgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAocmV0KSB7CiAJCURSTV9ERVZfRVJS
T1IoZzJkLT5kZXYsICJmYWlsZWQgdG8gbWFwIHNndCB3aXRoIGRtYSByZWdpb24uXG4iKTsKLQkJ
cmV0ID0gLUVOT01FTTsKIAkJZ290byBlcnJfc2dfZnJlZV90YWJsZTsKIAl9CiAKLS0gCjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
