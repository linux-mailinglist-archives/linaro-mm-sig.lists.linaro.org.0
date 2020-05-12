Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E190F1CF1B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:36:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B789617CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:36:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F06C661885; Tue, 12 May 2020 09:36:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6CF265F9A;
	Tue, 12 May 2020 09:07:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BCD3565F9A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ACDB366506; Tue, 12 May 2020 09:06:57 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 8801065F9A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:19 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118euoutp02b3180d1bf732805cb706a52a1e952a5a~OPFqhaR2r0453404534euoutp02P
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090118euoutp02b3180d1bf732805cb706a52a1e952a5a~OPFqhaR2r0453404534euoutp02P
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eucas1p198633515d1bbe299cc514d15142e04df~OPFqS3qDA3053130531eucas1p1o;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5E.6B.60698.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3~OPFp2cLDX1612716127eucas1p1g;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eusmtrp15c58dbf9459f63539ed08635a4f7afeb~OPFp1zwhK0188101881eusmtrp1L;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-28-5eba65de16bb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EA.F2.07950.DD56ABE5; Tue, 12
 May 2020 10:01:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eusmtip1d62f8b1449dbdc944fcec14d9a1115b7~OPFpVX97m1148011480eusmtip1W;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:38 +0200
Message-Id: <20200512090058.14910-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djP87r3UnfFGRxdzm3Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGWsXPuDpWC9aMWvY5tYGhhPCHYxcnJICJhI/HvRyAhiCwms
 YJTYd5G7i5ELyP7CKLHj5mYWCOczo8SXhvWsMB0HN/1ggkgsZ5TY8H0vO1zLtp5/7CBVbAKG
 El1vu9hAbBGBVkaJE708IEXMAoeYJLa0XmUBSQgLBEvcnvUGzGYRUJWYc/06E4jNK2AnMXXP
 MmaIdfISqzccALM5geL35/9hgYjvY5c499cawnaRmLZ1FhOELSzx6vgWdghbRuL05B6wHyQE
 mhklHp5byw7h9DBKXG6awQhRZS1x59wvoFM5gM7TlFi/Sx8i7ChxqqsXLCwhwCdx4y04wJiB
 zEnbpjNDhHklOtqEIKrVJGYdXwe39uCFS1Dne0h0PtrBBgnfo4wSk25XTGCUn4WwawEj4ypG
 8dTS4tz01GLjvNRyveLE3OLSvHS95PzcTYzAdHT63/GvOxj3/Uk6xCjAwajEw9thtDNOiDWx
 rLgy9xCjBAezkghvSyZQiDclsbIqtSg/vqg0J7X4EKM0B4uSOK/xopexQgLpiSWp2ampBalF
 MFkmDk6pBsbYnZ93hH6aKnFnyZfzf6efMPdhixCofOnbvFvO4E7Z/oVPk++e+v6uxD/R0DdO
 hyf2auP2b6pHUqfx+qlXlpnvnVh641OjoZSein3cfslry/TEVD6E9z5Nvz3FtePJZCenVgaL
 i9+T5+jwrjtY0lwf1zTz6Ibfyz5sKrZearJdiHnpE8+1P1YqsRRnJBpqMRcVJwIAF+opq0MD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7p3U3fFGWzq1LLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DJWrv3BUrBetOLXsU0sDYwnBLsYOTkkBEwkDm76wdTFyMUhJLCUUaKh6wUzREJG4uS0BlYI
 W1jiz7UuNoiiT4wSN2ceYwJJsAkYSnS9hUiICHQySkzr/sgO4jALnGCSuLd3PiNIlbBAoMSz
 vc1go1gEVCXmXL8O1s0rYCcxdc8yqHXyEqs3HACzOYHi9+f/YQGxhQQKJR5dfcsygZFvASPD
 KkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAY2Xbs55YdjF3vgg8xCnAwKvHwdhjtjBNiTSwr
 rsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGD85pXEG5oamltYGpob
 mxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYHTcuSfJ/uvu9JVcBTKX3Pdvmllw+2+D
 ytZp2zLrLi2//ljm37Sgn6KpShH3DBtubXZpOqFvd69u2wvXGKeHOW/kpxy+ktDxmDMgOf7V
 LckJHevS0iWyFHT4JHp2HZi70mX53ugPX8oEdY+9+LhiunXUhd88V7g3vjhq0lit3l8kq//3
 zVWe+ElKLMUZiYZazEXFiQBoAy1dpwIAAA==
X-CMS-MailID: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
X-Msg-Generator: CA
X-RootMTR: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090117eucas1p1179ea62b61b45fae70630e66e434ffb3@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 18/38] drm: omapdrm: fix common struct
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
dW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NCAwMC8zOF0g
RFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhy
ZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMDA1MTIwODU3MTAuMTQ2
ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJzL2dwdS9kcm0vb21h
cGRybS9vbWFwX2dlbS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0v
b21hcF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKaW5kZXggYzI1
OTQxMS4uY2JjYjM2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9n
ZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jCkBAIC00OCw3ICs0
OCw3IEBAIHN0cnVjdCBvbWFwX2dlbV9vYmplY3QgewogCSAqICAgT01BUF9CT19NRU1fRE1BX0FQ
SSBmbGFnIHNldCkKIAkgKgogCSAqIC0gYnVmZmVycyBpbXBvcnRlZCBmcm9tIGRtYWJ1ZiAod2l0
aCB0aGUgT01BUF9CT19NRU1fRE1BQlVGIGZsYWcgc2V0KQotCSAqICAgaWYgdGhleSBhcmUgcGh5
c2ljYWxseSBjb250aWd1b3VzICh3aGVuIHNndC0+b3JpZ19uZW50cyA9PSAxKQorCSAqICAgaWYg
dGhleSBhcmUgcGh5c2ljYWxseSBjb250aWd1b3VzICh3aGVuIHNndC0+bmVudHMgPT0gMSkKIAkg
KgogCSAqIC0gYnVmZmVycyBtYXBwZWQgdGhyb3VnaCB0aGUgVElMRVIgd2hlbiBkbWFfYWRkcl9j
bnQgaXMgbm90IHplcm8sIGluCiAJICogICB3aGljaCBjYXNlIHRoZSBETUEgYWRkcmVzcyBwb2lu
dHMgdG8gdGhlIFRJTEVSIGFwZXJ0dXJlCkBAIC0xMjc5LDcgKzEyNzksNyBAQCBzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
c2l6ZV90IHNpemUsCiAJdW5pb24gb21hcF9nZW1fc2l6ZSBnc2l6ZTsKIAogCS8qIFdpdGhvdXQg
YSBETU0gb25seSBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgYnVmZmVycyBjYW4gYmUgc3VwcG9ydGVk
LiAqLwotCWlmIChzZ3QtPm9yaWdfbmVudHMgIT0gMSAmJiAhcHJpdi0+aGFzX2RtbSkKKwlpZiAo
c2d0LT5uZW50cyAhPSAxICYmICFwcml2LT5oYXNfZG1tKQogCQlyZXR1cm4gRVJSX1BUUigtRUlO
VkFMKTsKIAogCWdzaXplLmJ5dGVzID0gUEFHRV9BTElHTihzaXplKTsKQEAgLTEyOTMsNyArMTI5
Myw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb21hcF9nZW1fbmV3X2RtYWJ1ZihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwKIAogCW9tYXBfb2JqLT5zZ3QgPSBzZ3Q7CiAK
LQlpZiAoc2d0LT5vcmlnX25lbnRzID09IDEpIHsKKwlpZiAoc2d0LT5uZW50cyA9PSAxKSB7CiAJ
CW9tYXBfb2JqLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKIAl9IGVsc2Ug
ewogCQkvKiBDcmVhdGUgcGFnZXMgbGlzdCBmcm9tIHNndCAqLwotLSAKMS45LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
