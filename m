Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D83D41D167C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:53:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F74A65F8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:53:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0091465F94; Wed, 13 May 2020 13:53:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45814664E3;
	Wed, 13 May 2020 13:35:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E980265F87
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D4FE865F94; Wed, 13 May 2020 13:34:36 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id C512665F87
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:12 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312euoutp02e3474d015d2fc6b6bff5289dd7cca11d~OmcV-eDmn0033500335euoutp02Q
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133312euoutp02e3474d015d2fc6b6bff5289dd7cca11d~OmcV-eDmn0033500335euoutp02Q
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133311eucas1p1b5912233949edfc862c9bf62174d30b5~OmcVtYY1N2350623506eucas1p1N;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E9.D8.60698.717FBBE5; Wed, 13
 May 2020 14:33:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133311eucas1p261d84f947b03e4fc733137048aab55fb~OmcVSC_Vt1009610096eucas1p2D;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133311eusmtrp1cbc89a111ded0b5b1626fb75b1957bba~OmcVRGpG61011910119eusmtrp1S;
 Wed, 13 May 2020 13:33:11 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-dc-5ebbf7178c56
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5F.37.07950.717FBBE5; Wed, 13
 May 2020 14:33:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133310eusmtip15a961a7c1de5f2c3e3944c8c366b7dfe~OmcUlWgKD3222032220eusmtip18;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:27 +0200
Message-Id: <20200513133245.6408-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURTN60ynQ6FkKJg+0YjWqIFEoAGTSVii0Y8xUYPKl4lghbGgtJCW
 RYxRVjUVDNKwFRcgbLJVAStS2ZrKGvbVCJZNjQ0EDZsYBFtGkb9zzj0n592bhyN8I9sRD5VF
 0nKZOEyIcVFt61rPUcGqLsB9XXOETO3pYJGZ4zo2WaSJ55CvsjVsct5oppvaxwg5tLyAkS/K
 37PIvCYvcmloikVWz4ywycH6JxhZaZjgkC3fZ9nHbankgd8YVfGsAlANK3ko9WZlkk0ZH7ax
 qJrCu9THjRmEUo2VAEr3IQ6jHtWWAWqxep+f9SWudzAdFhpNy918r3BD8rtK0YhZwc3ujW5O
 HNi0VwIch4QnNGS4KAEX5xOlAGZNKzGGLAE4MfMWZcgigEu5k0AJrLYSVZmdHGZQAuBA+3Ow
 HVHFazGLCyNEUDmv3MIORDKA7ak2FhNCFCKwcLwRtQzsiQswM62PZcEocQiOdFdyLJhH+MCE
 bgPK1DnB8pfNiAVbmXXTeBPKeOxgR87sFkbMnsTXuYilABJrHKiqa8CY8ClYq/7KZrA9NLXV
 chi8F3apUlAmkAjgVE8lhyEpAA4mZP/d1AuO9/zCLHdCCGeoqXdj5BNwtTgfMOezhWPzdswj
 bGG6NgthZB58cI/PuA9DdVvVdm1L3wDCYAoO9yZhaeCAesc66h3rqP/35gGkDAjoKIVUQis8
 ZHSMq0IsVUTJJK5B4dJqYP52XRtty3Wgcf2qHhA4ENrwJkd1AXy2OFoRK9UDiCNCB945jVni
 BYtjb9Hy8EB5VBit0IM9OCoU8DwKvl3mExJxJH2DpiNo+b8pC7dyjAP4Hb0/uOjqcubpbtHp
 8oikH6kiI7fgZP6gYU5lss/xkfjEzRmy/Kz51wP3/2zNKP0S1J88Wpz6CZcFDDXjcwd8vfu1
 AeBYnqlJqIt1918uHO28b7wWuCs3o6J32LmoRrhwcFJXILgdNi01cT1bEjucYs72f06Xqdzf
 8XvheZEQVYSIRS6IXCH+AzVrLwJyAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7ri33fHGXyfxWvRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWaw9
 cpfd4uCHJ6wOfB6tl/6yeayZt4bRY++3BSwe2789YPW4332cyWPzknqP2/8eM3tMvrGc0WP3
 zQY2j74tqxg9Pm+SC+CO0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJ
 Sc3JLEst0rdL0MtYeHoFS8ET8Yqz/86yNzD+F+5i5OSQEDCRWDftFDuILSSwlFFi/UxfiLiM
 xMlpDawQtrDEn2tdbF2MXEA1nxglTjRdYwNJsAkYSnS9hUiICHQySkzr/sgO4jALrGGWuPd9
 OdhYYYEAiT27roLZLAKqEtfOrgWzeQVsJZrOHmGBWCEvsXrDAWYQmxMo/urOfhaIk/Il9i7e
 xwZRLyhxcuYToDgH0AJ1ifXzhEDCzECtzVtnM09gFJyFpGoWQtUsJFULGJlXMYqklhbnpucW
 G+kVJ+YWl+al6yXn525iBEbwtmM/t+xg7HoXfIhRgINRiYfX4tbuOCHWxLLiytxDjBIczEoi
 vH7rgUK8KYmVValF+fFFpTmpxYcYTYFem8gsJZqcD0wueSXxhqaG5haWhubG5sZmFkrivB0C
 B2OEBNITS1KzU1MLUotg+pg4OKUaGJ0aNndxn3w6fe+Ma8ccraL2z7mWFOfQr3pjn7tT5a9o
 FR/hNe/srzRKTWd/+iD3xbrvbxzC2TcHcn0uDrm1XT7xLIPnbpO/f7d4poec35XUnsKVYhl4
 +Ovi5uvrJgZuDygQErtf6dLiyMaa1fDF4qDM/B/FG5d/S00NzPs+r/j2mQ6VHT18okosxRmJ
 hlrMRcWJAP1Nkov2AgAA
X-CMS-MailID: 20200513133311eucas1p261d84f947b03e4fc733137048aab55fb
X-Msg-Generator: CA
X-RootMTR: 20200513133311eucas1p261d84f947b03e4fc733137048aab55fb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133311eucas1p261d84f947b03e4fc733137048aab55fb
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133311eucas1p261d84f947b03e4fc733137048aab55fb@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 20/38] drm: radeon: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgfCAxMSArKysrKy0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX3R0bS5jCmluZGV4IDVkNTBjOWUuLjBlM2ViMGQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX3R0bS5jCkBAIC00ODEsNyArNDgxLDcgQEAgc3RhdGljIGludCByYWRlb25f
dHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKIHsKIAlzdHJ1Y3QgcmFkZW9u
X2RldmljZSAqcmRldiA9IHJhZGVvbl9nZXRfcmRldih0dG0tPmJkZXYpOwogCXN0cnVjdCByYWRl
b25fdHRtX3R0ICpndHQgPSAodm9pZCAqKXR0bTsKLQl1bnNpZ25lZCBwaW5uZWQgPSAwLCBuZW50
czsKKwl1bnNpZ25lZCBwaW5uZWQgPSAwOwogCWludCByOwogCiAJaW50IHdyaXRlID0gIShndHQt
PnVzZXJmbGFncyAmIFJBREVPTl9HRU1fVVNFUlBUUl9SRUFET05MWSk7CkBAIC01MjEsOSArNTIx
LDggQEAgc3RhdGljIGludCByYWRlb25fdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQg
KnR0bSkKIAlpZiAocikKIAkJZ290byByZWxlYXNlX3NnOwogCi0JciA9IC1FTk9NRU07Ci0JbmVu
dHMgPSBkbWFfbWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywg
ZGlyZWN0aW9uKTsKLQlpZiAobmVudHMgPT0gMCkKKwlyID0gZG1hX21hcF9zZ3RhYmxlKHJkZXYt
PmRldiwgdHRtLT5zZywgZGlyZWN0aW9uLCAwKTsKKwlpZiAocikKIAkJZ290byByZWxlYXNlX3Nn
OwogCiAJZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXModHRtLT5zZywgdHRtLT5wYWdl
cywKQEAgLTU1NCw5ICs1NTMsOSBAQCBzdGF0aWMgdm9pZCByYWRlb25fdHRtX3R0X3VucGluX3Vz
ZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQogCQlyZXR1cm47CiAKIAkvKiBmcmVlIHRoZSBzZyB0
YWJsZSBhbmQgcGFnZXMgYWdhaW4gKi8KLQlkbWFfdW5tYXBfc2cocmRldi0+ZGV2LCB0dG0tPnNn
LT5zZ2wsIHR0bS0+c2ctPm5lbnRzLCBkaXJlY3Rpb24pOworCWRtYV91bm1hcF9zZ3RhYmxlKHJk
ZXYtPmRldiwgdHRtLT5zZywgZGlyZWN0aW9uLCAwKTsKIAotCWZvcl9lYWNoX3NnX3BhZ2UodHRt
LT5zZy0+c2dsLCAmc2dfaXRlciwgdHRtLT5zZy0+bmVudHMsIDApIHsKKwlmb3JfZWFjaF9zZ3Rh
YmxlX3BhZ2UodHRtLT5zZywgJnNnX2l0ZXIsIDApIHsKIAkJc3RydWN0IHBhZ2UgKnBhZ2UgPSBz
Z19wYWdlX2l0ZXJfcGFnZSgmc2dfaXRlcik7CiAJCWlmICghKGd0dC0+dXNlcmZsYWdzICYgUkFE
RU9OX0dFTV9VU0VSUFRSX1JFQURPTkxZKSkKIAkJCXNldF9wYWdlX2RpcnR5KHBhZ2UpOwotLSAK
MS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
