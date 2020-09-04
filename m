Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D49D725DAC4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:58:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09B1366781
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:58:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDD2166780; Fri,  4 Sep 2020 13:58:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D863166792;
	Fri,  4 Sep 2020 13:37:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5453F665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 48A076660D; Fri,  4 Sep 2020 13:36:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7190B66750
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:11 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133510euoutp0113515a54937d1eb64232a1d9f142e617~xmAnLi9VU0639206392euoutp01S
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133510euoutp0113515a54937d1eb64232a1d9f142e617~xmAnLi9VU0639206392euoutp01S
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133510eucas1p2a61898879ab691c1491ec0b92ef46df1~xmAm3V--U1446414464eucas1p2Z;
 Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5B.11.06456.E82425F5; Fri,  4
 Sep 2020 14:35:10 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133509eucas1p136b805a5927a29ab3f3478b3bfdac6c0~xmAmmIfKb0118801188eucas1p19;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133509eusmtrp2e514c4dcdedcc93a0f9e6f04729fd216~xmAmlWv1c0977009770eusmtrp2Y;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-61-5f52428e7526
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 11.B0.06017.D82425F5; Fri,  4
 Sep 2020 14:35:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133509eusmtip13165c75798c7c2d70bacbdba98b7f12a~xmAlxRgXz1624216242eusmtip1u;
 Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:07 +0200
Message-Id: <20200904131711.12950-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe1CMURjGne+2X42tz5bpTEzGzjCYEU3GHJNxm5o5adz6g9zK4puK3WV2
 VRiXtQktpXVJs0N2lkQbsSpKhcJis7oxbiHrkkuxFSoU2xn893uf93nmmfPO4WnZOzaQT1Rv
 EDVqhVLOeTOlt3qc4zNnRcdNvH+SRxnOOxS6kFPEov5SI40qanslyOp2AdT09TOHUk8UceiM
 9SaFzFfD0E6ThUFdTS0Usrkesqix/CiH9p0vYVF6l4lDZ280S9Ap208KXf/ymkU95bnMDD9c
 mFsI8POqGgZXfjMzuMzULMG2gnQOX/r2ksVXjxVK8Iu9dgpfPLkdP+1z0fjgo3yArzzWcTgj
 tZ3DmcUFAHfagub7LvGeulpUJiaLmgnTVngn1GUW0evf+m7U5S3VgVypAfA8FCbBi23LDMCb
 lwmnAcxy1EvI0AVgf3MLRYZOAI0/LIwBeA0k7qbVc2SRD+DO3hruX6QkrVricXFCCDS0GTgP
 +wtpAN7OGOxhWqhlYG13qIf9hCUw+9WzAQ8jjIJu/ceBBqkwDZrffOZI2whoPX+N9rDXH70k
 5zXrKYNCBg8Pt9ooYgqHO9y/WMJ+8IO9WEJ4OOwvO06RQCqALc6zEjLsA7BRnwOIKww+c/Zy
 nnPQwlhYVD6ByDOhw6pnyZV84KO2IeQBPvBA6RGayFK4Z5eMuEdDk/3cv9rrdQ00YQyfXHbR
 5EBGAMstDXQWGGH6X2YGoAAEiElaVbyoDVGLKcFahUqbpI4PXrVOZQN/vp+jz95xGXxtWFkN
 BB7IB0sHTY+Ok7GKZO0mVTWAPC33l86654iVSVcrNm0WNeviNElKUVsNhvGMPEAaanm/XCbE
 KzaIa0Vxvaj5u6V4r0AdCFIvjtYcqDnKran0PdzYvXb/p9DgKZFzXG6KfnB3S0SYT5lxpWkM
 nfcraor+2JBt85zuBebevB227Ao+X9/ZE7k1scOoVEmHvREClseOrQr6NJsfKtp+XosNPPjg
 e8qhha09MRHFj9tjBN3u9mURtxZtnxyuxAnZI+vuWOduvXA7Ss5oExQh42iNVvEbWv2ynnoD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsVy+t/xu7q9TkHxBt0fjC16z51kstg4Yz2r
 xf9tE5kt9pz5xW6x+uNjRosrX9+zWTQvXs9msXL1USaLBfutLVpmLWKx+HLlIZPFpsfXWC0u
 75rDZtGzYSurReeXWWwWa4/cZbdYtukPk8XBD09YLX7umsfiIOyxZt4aRo97+w6zeOz9toDF
 Y+esu+wem1Z1snls//aA1WP/3DXsHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR2/yOzaNv
 yypGj8+b5AL4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstS
 i/TtEvQyLvStZy54xl/RsDS6gXEebxcjJ4eEgInEqdaLbF2MXBxCAksZJXb1L2OFSMhInJzW
 AGULS/y51gVV9IlRYv/UdhaQBJuAoUTXW4iEiEAno8S07o/sIA6zwA0WiblbPrCDVAkLREgc
 u9rPBGKzCKhKfGx6DdbNK2AnseDpezaIFfISqzccYAaxOYHiW2c8AVstJGAr8WHOYpYJjHwL
 GBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbjtmM/t+xg7HoXfIhRgINRiYeXwT4oXog1
 say4MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA9MFXkl8YamhuYW
 lobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhiXb/7zZrmDi7L0x2+bww545Vnr
 CltfPu334hhzxJQPG4oZuHzOSUeyPJrotbW98PLZXY2Jd/Ib+O8W1s6PZ+bznM6jw2r5JGBa
 kZfYMoP7WZz7NazNmeVXZahl3PO79ClX4urMS6tqDR4JHZsd/CIl/Juj+t3yC/U9mU2a77a1
 iO+K+/Y4q1CJpTgj0VCLuag4EQAfbtMv3QIAAA==
X-CMS-MailID: 20200904133509eucas1p136b805a5927a29ab3f3478b3bfdac6c0
X-Msg-Generator: CA
X-RootMTR: 20200904133509eucas1p136b805a5927a29ab3f3478b3bfdac6c0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133509eucas1p136b805a5927a29ab3f3478b3bfdac6c0
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133509eucas1p136b805a5927a29ab3f3478b3bfdac6c0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 26/30] staging: tegra-vde: fix common
 struct sg_table related issues
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8
ZGlnZXR4QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lv
bW11LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21t
dS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jCmluZGV4IDZhZjg2
M2Q5MjEyMy4uYWRmOGRjN2VlMjVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
dGVncmEtdmRlL2lvbW11LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9p
b21tdS5jCkBAIC0zNiw4ICszNiw4IEBAIGludCB0ZWdyYV92ZGVfaW9tbXVfbWFwKHN0cnVjdCB0
ZWdyYV92ZGUgKnZkZSwKIAogCWFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZ2ZGUtPmlvdmEsIGlvdmEp
OwogCi0Jc2l6ZSA9IGlvbW11X21hcF9zZyh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsCi0JCQkgICAgSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRFKTsKKwlzaXplID0gaW9t
bXVfbWFwX3NndGFibGUodmRlLT5kb21haW4sIGFkZHIsIHNndCwKKwkJCQkgSU9NTVVfUkVBRCB8
IElPTU1VX1dSSVRFKTsKIAlpZiAoIXNpemUpIHsKIAkJX19mcmVlX2lvdmEoJnZkZS0+aW92YSwg
aW92YSk7CiAJCXJldHVybiAtRU5YSU87Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
