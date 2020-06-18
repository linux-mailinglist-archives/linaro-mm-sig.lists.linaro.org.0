Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A671FF85E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:59:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C976766572
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:59:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B87176658C; Thu, 18 Jun 2020 15:59:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66E9D6663B;
	Thu, 18 Jun 2020 15:42:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8D8C066558
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8087B66588; Thu, 18 Jun 2020 15:40:45 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E2E096657F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:29 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154029euoutp019eecd1080006a1d7f140f1396e254806~ZrZwY5W741845018450euoutp01-
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154029euoutp019eecd1080006a1d7f140f1396e254806~ZrZwY5W741845018450euoutp01-
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154028eucas1p298772d549e3a859b6b4ba709977166fb~ZrZwH_3eT0608706087eucas1p2X;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 05.DE.60679.CEA8BEE5; Thu, 18
 Jun 2020 16:40:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e~ZrZv0jSaS0074000740eucas1p1A;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154028eusmtrp2af7f5bc6041ccaff3f0713cee8f0fbbc~ZrZvz7xmB0370403704eusmtrp2o;
 Thu, 18 Jun 2020 15:40:28 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-3f-5eeb8aec3f16
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 30.FE.08375.CEA8BEE5; Thu, 18
 Jun 2020 16:40:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eusmtip15ce9e44c79f4de95e367bb34237bf02d~ZrZvOvOnU0864308643eusmtip1L;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:42 +0200
Message-Id: <20200618153956.29558-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO2fneJxbHOfADwuldYGKvGTRIUUq/HF+REkXgqjpyoOKTmWb
 lv0oM2a5NPJCipmKLrzNvN+mpa7ptJlZmprOWwZlZkbe8ILm8Sz799ze94WHl0BF5ZgTERKu
 YhThsjAJzufVti+/P/xTMy11H2o9RiV1dyJURUYZRm3UJqNU38IsTrXc6wVUUUkbQuU2e1Hz
 fRMIVTnZj1G9+iycKjWO2FCtv79iJwV03Gw7TuuydYB+tZjLo+sWxzF67JEJoau0d+nh9UmU
 Th0sAHTj51icflxdDOi5Smc/uyt870AmLCSaUbj5BPCDm9ZKschu8S1NSz4eCzLsNYAgIHkU
 zpmFGsAnRGQhgClTNShH5gHcyKyzkjkACxPGeRpguzUx8dSIcEYBgJbqVLA9srw2irApnPSA
 mhkNzmIxqQawI0nAhlCyAYF5CU2ANRzIc/B53YANi3nkPtiob0BZLCR9YMUSp0PSBZaUt2zp
 tpu62aTG2EWQfG0DRwbKrCFfaFptxjnsAH+Yqq36LrjRkINwA/cBnOguteFIIoC9cRmAS3lB
 S/cKzvaBkgdgmd6Nq+YUHFu9zMEdcHDGng2jmzClNh3lZCF8GC/iduyHmaaX21dbez5aIzRM
 s4i4fpIBVKd9wZ4Al8z/p3IBKAaOTJRSHsQoj4QzN12VMrkyKjzI9UaEvBJs/pF53TRfD/Rr
 1w2AJIBEIPx+cVoqwmTRyhi5AUAClYiFp9+ZpSJhoCzmNqOI8FdEhTFKA9hJ8CSOQs+8qWsi
 MkimYkIZJpJR/HMRwtYpFkgXLR3+XfGJe2af2dd4X611TrfNtlu65BaKNnoZP6gVQ71rQwHu
 L4ZjHmxou8RTnd8Iff2ADl/QqT1yZ1ovRLzxnXHoOtGVNdh/6A8uf6tCI48bEO1qzpnUqmH+
 nb3niz61Nat8nFZ6fjmYU0ZHd8f5eQ4YvdIbtNP5ghqD41kJTxks8ziIKpSyv+ITIt5DAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7pvul7HGfzar2DRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehl7/qxlLTgnUtF1YDFbA+MMwS5GTg4JAROJh9OOMHUxcnEICSxllJh25ywzREJG4uS0BlYI
 W1jiz7UuNoiiT4wSR/d2MYIk2AQMJbreQiREBDqBurs/soM4zAL7mSQuHznFDlIlLOArcfrT
 JLBRLAKqErt37QRbwStgJ7Hx+3V2iBXyEqs3HACLcwLFTx9vBasXErCVeP6hjW0CI98CRoZV
 jCKppcW56bnFhnrFibnFpXnpesn5uZsYgTGy7djPzTsYL20MPsQowMGoxMP7IuR1nBBrYllx
 Ze4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Yv3kl8YamhuYWlobm
 xubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhit8qRNF+1xbZRbuCC9QrCscPcch57c
 3Nf+i9le5p7/dfVl5WPDG79Lbh7fN/Mef45rXWrs8ju/1R1vrZQpjZBfL9RsdOG76hEpM6OO
 nCuH+f0TROP/T69k1HoTk5GicTp62devG/eabfZOM/j3qExI67jyPa2IG01rn/VYyt7wCbKw
 P5Q5oVqJpTgj0VCLuag4EQD+fVZepwIAAA==
X-CMS-MailID: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
X-Msg-Generator: CA
X-RootMTR: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154028eucas1p140cfc1156ef012ba74f97c5a2a7dc09e@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 21/36] drm: v3d: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmlj
QGFuaG9sdC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgfCAxNyArKysr
KysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgYi9kcml2
ZXJzL2dwdS9kcm0vdjNkL3YzZF9tbXUuYwppbmRleCAzYjgxZWEyOGMwYmIuLjE3NWMyNTc4YWQ3
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3YzZC92M2RfbW11LmMKQEAgLTkwLDE5ICs5MCwxNiBAQCB2b2lkIHYzZF9tbXVf
aW5zZXJ0X3B0ZXMoc3RydWN0IHYzZF9ibyAqYm8pCiAJc3RydWN0IHYzZF9kZXYgKnYzZCA9IHRv
X3YzZF9kZXYoc2htZW1fb2JqLT5iYXNlLmRldik7CiAJdTMyIHBhZ2UgPSBiby0+bm9kZS5zdGFy
dDsKIAl1MzIgcGFnZV9wcm90ID0gVjNEX1BURV9XUklURUFCTEUgfCBWM0RfUFRFX1ZBTElEOwot
CXVuc2lnbmVkIGludCBjb3VudDsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbDsKKwlzdHJ1Y3Qg
c2dfZG1hX3BhZ2VfaXRlciBkbWFfaXRlcjsKIAotCWZvcl9lYWNoX3NnKHNobWVtX29iai0+c2d0
LT5zZ2wsIHNnbCwgc2htZW1fb2JqLT5zZ3QtPm5lbnRzLCBjb3VudCkgewotCQl1MzIgcGFnZV9h
ZGRyZXNzID0gc2dfZG1hX2FkZHJlc3Moc2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7CisJZm9y
X2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzaG1lbV9vYmotPnNndCwgJmRtYV9pdGVyLCAwKSB7CisJ
CWRtYV9hZGRyX3QgZG1hX2FkZHIgPSBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRtYV9pdGVy
KTsKKwkJdTMyIHBhZ2VfYWRkcmVzcyA9IGRtYV9hZGRyID4+IFYzRF9NTVVfUEFHRV9TSElGVDsK
IAkJdTMyIHB0ZSA9IHBhZ2VfcHJvdCB8IHBhZ2VfYWRkcmVzczsKLQkJdTMyIGk7CiAKLQkJQlVH
X09OKHBhZ2VfYWRkcmVzcyArIChzZ19kbWFfbGVuKHNnbCkgPj4gVjNEX01NVV9QQUdFX1NISUZU
KSA+PQotCQkgICAgICAgQklUKDI0KSk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNnX2RtYV9sZW4o
c2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKLQkJCXYzZC0+cHRbcGFnZSsrXSA9IHB0
ZSArIGk7CisJCUJVSUxEX0JVR19PTihWM0RfTU1VX1BBR0VfU0hJRlQgIT0gUEFHRV9TSVpFKTsK
KwkJQlVHX09OKHBhZ2VfYWRkcmVzcyArIDEgPj0gQklUKDI0KSk7CisJCXYzZC0+cHRbcGFnZSsr
XSA9IHB0ZTsKIAl9CiAKIAlXQVJOX09OX09OQ0UocGFnZSAtIGJvLT5ub2RlLnN0YXJ0ICE9Ci0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
