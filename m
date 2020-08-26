Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC39252746
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:36:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3113666DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:36:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B4C0B666DD; Wed, 26 Aug 2020 06:36:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87888619D1;
	Wed, 26 Aug 2020 06:35:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 978A060749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81964617DE; Wed, 26 Aug 2020 06:35:31 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 8D9B060749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:29 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063528euoutp0254005769cf7151bc8af3e5c7d32e61c5~uvemEC14v1293512935euoutp02k
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063528euoutp0254005769cf7151bc8af3e5c7d32e61c5~uvemEC14v1293512935euoutp02k
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063528eucas1p17aee62b7c9f7ab73d0c399539d8dfa51~uvelzGFPf1480714807eucas1p1I;
 Wed, 26 Aug 2020 06:35:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BE.9D.05997.0B2064F5; Wed, 26
 Aug 2020 07:35:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48~uveli2xBH1474114741eucas1p1b;
 Wed, 26 Aug 2020 06:35:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063527eusmtrp29179cc95e6c3d2559c9d36bf123c17bc~uveliI-NV0396003960eusmtrp2f;
 Wed, 26 Aug 2020 06:35:27 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-b3-5f4602b0cec5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 59.43.06017.FA2064F5; Wed, 26
 Aug 2020 07:35:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063527eusmtip2a6650922ead90b48834553f5ca67743c~uvek3IQJF0302303023eusmtip2t;
 Wed, 26 Aug 2020 06:35:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:45 +0200
Message-Id: <20200826063316.23486-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVcRjH+51zz7nHnavTZfyGZbuVVctrNWcjS6Wd9U/a2lpvuHLGFZfu
 QV7aSGO58l7zUuNm5paXvFNkIVwmalHkLcLIS8jL0kROB/33eb7f7/N79jz7EaikATMm5IpA
 RqmQ+UpxkaCqZbXTogQ562Y99klAxXe2IVRpejFGbVQlo1T38hxOPS9oRij1G3tqqXsEocpG
 P2NUV80TnCpqGhRSTxcqBVRMbB5GNcyPYVTFTDJ2Uo8uzCoEdN2KWkCX5cfidPXKMEZntV2g
 v8ZpEbo8N4LuXx9F6dReDaBrv0TidEJFPqDL28PpxbK9LuIrIgdPxlcezCitHN1F3kOVg8KA
 KZOQ8oVRYST4aagCBAHJYzBxwkQFRISEfAZgRbwG8MUSgKnjfQhfLAK4MN6Ebne8/uOhAjqb
 ugbAuIKQnYa8qG8YZ+CkDVTNqnCODchoAFvjdbkQSqpRuLoYAzhDn7wMU97+EnAsIA/ApvEf
 /3QxeQJ29dchHEPSDBaU1KMc65COUBuXiHMPQXJICJMe5wj50BlYHfsO41kfTmkrtnRTuPEq
 G+Eb7gE40lkk5IsHAHZFpQM+ZQ8HOn/j3G4oeQgW11jxshNc7RkT8ivrwd7ZPZyMbmJKVdrW
 JcTwfoyET5vDTO2LnbENHz6iPNPwUWQfyl8rGcCpKjYJmGX+n6UGIB8YMUGsnxfD2iqY25as
 zI8NUnhZ3vD3KwObH6t9Xbv0EtSseTQCkgBSXbEad3aTYLJgNtSvEUAClRqIT3W0u0rEnrLQ
 MEbp76YM8mXYRmBCCKRG4qM5369LSC9ZIHOTYQIY5baLEDrGkcA1wjc62cpHVmtnlD3tLp/D
 6piZtIEmW8/Gcxm5KXOtlteW1abBLiKLsY4SnYT6ieniUM34wF31xbaidvtSoY857rx/eLeW
 su+Te8iHXWImmx374vWPHL+zqyes/6rhvlS3h9YH7cIznDSTl3KRxfnyKIX72nnlrdGRlqL3
 px0GpALWW2ZzGFWysr8cNXMKVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7rrmdziDdbu07HoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4Uft7JYtHUuY7U4
 +OEJq8WWNxNZHfg81sxbw+ix99sCFo9NqzrZPLZ/e8DqMe9koMf97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1Zxeix+XS1x+dNcgG8UXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG
 5rFWRqZK+nY2Kak5mWWpRfp2CXoZ97beZS94JV2x+eNj9gbGT2JdjBwcEgImEnv+JnUxcnEI
 CSxllDi1/QpbFyMnUFxG4uS0BlYIW1jiz7UuNoiiT4wS1/68YQJJsAkYSnS9hUiICHQySkzr
 /sgO4jALrGCWeLVvLgtIlbBAuETr+1VgNouAqsSRp+8YQWxeAVuJy7f3MkGskJdYveEAM4jN
 KWAncby7H+wMIaCa02tnME9g5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMIq2Hfu5
 ZQdj17vgQ4wCHIxKPLwL2FzjhVgTy4orcw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyI
 0RToqInMUqLJ+cAIzyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnV
 wDj7tHTzR4aF/mJCEQv2+KwujBFvv/LoS3nZ9dwHmss9drBt+NTfxDb534f3PyuPBjSruXhw
 al9fuNriRw7/N62tC/bb8nFEGl7KPSJzkLvpx2penbLlNu0PNWfdZGUqeHCzeW7A8zUHLq8L
 mNp0+Vqw+J/+RqW0Gbv11i3/cdFva8pu1uQyj9NKLMUZiYZazEXFiQBDcb39uAIAAA==
X-CMS-MailID: 20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48
X-Msg-Generator: CA
X-RootMTR: 20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 01/32] drm: prime: add common helper to
 check scatterlist contiguity
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

SXQgaXMgYSBjb21tb24gb3BlcmF0aW9uIGRvbmUgYnkgRFJNIGRyaXZlcnMgdG8gY2hlY2sgdGhl
IGNvbnRpZ3VpdHkKb2YgdGhlIERNQS1tYXBwZWQgYnVmZmVyIGRlc2NyaWJlZCBieSBhIHNjYXR0
ZXJsaXN0IGluIHRoZQpzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIg
Zm9yIHRoaXMgb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpk
YUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMg
fCAyMyArKystLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAg
ICAgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvZHJtL2Ry
bV9wcmltZS5oICAgICAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDM2IGluc2Vy
dGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2NtYV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIu
YwppbmRleCA4MjJlZGVhZGJhYjMuLjU5YjljYTIwN2I0MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2Vt
X2NtYV9oZWxwZXIuYwpAQCAtNDcxLDI2ICs0NzEsOSBAQCBkcm1fZ2VtX2NtYV9wcmltZV9pbXBv
cnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIHsKIAlzdHJ1Y3QgZHJtX2dlbV9j
bWFfb2JqZWN0ICpjbWFfb2JqOwogCi0JaWYgKHNndC0+bmVudHMgIT0gMSkgewotCQkvKiBjaGVj
ayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3VvdXMgKi8KLQkJZG1h
X2FkZHJfdCBuZXh0X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7Ci0JCXN0cnVjdCBz
Y2F0dGVybGlzdCAqczsKLQkJdW5zaWduZWQgaW50IGk7Ci0KLQkJZm9yX2VhY2hfc2coc2d0LT5z
Z2wsIHMsIHNndC0+bmVudHMsIGkpIHsKLQkJCS8qCi0JCQkgKiBzZ19kbWFfYWRkcmVzcyhzKSBp
cyBvbmx5IHZhbGlkIGZvciBlbnRyaWVzCi0JCQkgKiB0aGF0IGhhdmUgc2dfZG1hX2xlbihzKSAh
PSAwCi0JCQkgKi8KLQkJCWlmICghc2dfZG1hX2xlbihzKSkKLQkJCQljb250aW51ZTsKLQotCQkJ
aWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IG5leHRfYWRkcikKLQkJCQlyZXR1cm4gRVJSX1BUUigt
RUlOVkFMKTsKLQotCQkJbmV4dF9hZGRyID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19kbWFfbGVu
KHMpOwotCQl9Ci0JfQorCS8qIGNoZWNrIGlmIHRoZSBlbnRyaWVzIGluIHRoZSBzZ190YWJsZSBh
cmUgY29udGlndW91cyAqLworCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZ3Qp
IDwgYXR0YWNoLT5kbWFidWYtPnNpemUpCisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwogCiAJ
LyogQ3JlYXRlIGEgQ01BIEdFTSBidWZmZXIuICovCiAJY21hX29iaiA9IF9fZHJtX2dlbV9jbWFf
Y3JlYXRlKGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCmluZGV4IDE2
OTNhYTdjMTRiNS4uNGVkNWVkMWYwNzhjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCkBAIC04MjUsNiArODI1
LDM3IEBAIHN0cnVjdCBzZ190YWJsZSAqZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKHN0cnVjdCBwYWdl
ICoqcGFnZXMsIHVuc2lnbmVkIGludCBucl9wYWdlCiB9CiBFWFBPUlRfU1lNQk9MKGRybV9wcmlt
ZV9wYWdlc190b19zZyk7CiAKKy8qKgorICogZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUg
LSByZXR1cm5zIHRoZSBjb250aWd1b3VzIHNpemUgb2YgdGhlIGJ1ZmZlcgorICogQHNndDogc2df
dGFibGUgZGVzY3JpYmluZyB0aGUgYnVmZmVyIHRvIGNoZWNrCisgKgorICogVGhpcyBoZWxwZXIg
Y2FsY3VsYXRlcyB0aGUgY29udGlndW91cyBzaXplIGluIHRoZSBETUEgYWRkcmVzcyBzcGFjZQor
ICogb2YgdGhlIHRoZSBidWZmZXIgZGVzY3JpYmVkIGJ5IHRoZSBwcm92aWRlZCBzZ190YWJsZS4K
KyAqCisgKiBUaGlzIGlzIHVzZWZ1bCBmb3IgaW1wbGVtZW50aW5nCisgKiAmZHJtX2dlbV9vYmpl
Y3RfZnVuY3MuZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZS4KKyAqLwordW5zaWduZWQgbG9uZyBk
cm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzdHJ1Y3Qgc2dfdGFibGUgKnNndCkKK3sKKwlk
bWFfYWRkcl90IGV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOworCXN0cnVjdCBz
Y2F0dGVybGlzdCAqc2c7CisJdW5zaWduZWQgbG9uZyBzaXplID0gMDsKKwlpbnQgaTsKKworCWZv
cl9lYWNoX3NndGFibGVfZG1hX3NnKHNndCwgc2csIGkpIHsKKwkJdW5zaWduZWQgaW50IGxlbiA9
IHNnX2RtYV9sZW4oc2cpOworCisJCWlmICghbGVuKQorCQkJYnJlYWs7CisJCWlmIChzZ19kbWFf
YWRkcmVzcyhzZykgIT0gZXhwZWN0ZWQpCisJCQlicmVhazsKKwkJZXhwZWN0ZWQgKz0gbGVuOwor
CQlzaXplICs9IGxlbjsKKwl9CisJcmV0dXJuIHNpemU7Cit9CitFWFBPUlRfU1lNQk9MKGRybV9w
cmltZV9nZXRfY29udGlndW91c19zaXplKTsKKwogLyoqCiAgKiBkcm1fZ2VtX3ByaW1lX2V4cG9y
dCAtIGhlbHBlciBsaWJyYXJ5IGltcGxlbWVudGF0aW9uIG9mIHRoZSBleHBvcnQgY2FsbGJhY2sK
ICAqIEBvYmo6IEdFTSBvYmplY3QgdG8gZXhwb3J0CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fcHJpbWUuaCBiL2luY2x1ZGUvZHJtL2RybV9wcmltZS5oCmluZGV4IDlhZjc0MjJiNDRjZi4u
NDdlZjExNjE0NjI3IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAorKysgYi9p
bmNsdWRlL2RybS9kcm1fcHJpbWUuaApAQCAtOTIsNiArOTIsOCBAQCBzdHJ1Y3Qgc2dfdGFibGUg
KmRybV9wcmltZV9wYWdlc190b19zZyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQg
bnJfcGFnZQogc3RydWN0IGRtYV9idWYgKmRybV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLAogCQkJCSAgICAgaW50IGZsYWdzKTsKIAordW5zaWduZWQgbG9uZyBk
cm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzdHJ1Y3Qgc2dfdGFibGUgKnNndCk7CisKIC8q
IGhlbHBlciBmdW5jdGlvbnMgZm9yIGltcG9ydGluZyAqLwogc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpkcm1fZ2VtX3ByaW1lX2ltcG9ydF9kZXYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCQkJ
CXN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
