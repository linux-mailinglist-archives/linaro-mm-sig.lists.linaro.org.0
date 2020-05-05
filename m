Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 178F61C5166
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:55:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39C8766169
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:55:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2B556661BF; Tue,  5 May 2020 08:55:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6948664F9;
	Tue,  5 May 2020 08:47:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A61BE66076
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7F21B6624C; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id E09CF66079
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:31 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084631euoutp02c3821d8a971173876bc356a5bff0fdfd~MFXwNj8r62636626366euoutp02T
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084631euoutp02c3821d8a971173876bc356a5bff0fdfd~MFXwNj8r62636626366euoutp02T
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eucas1p134838c57e397207e33c78befc62bd2c5~MFXv68E4c2431324313eucas1p19;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6D.32.60679.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577~MFXvfSh-z2423024230eucas1p19;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eusmtrp1fc951c59a5daa795417930504b517572~MFXvehUzt0942309423eusmtrp1a;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-40-5eb127e65a39
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B8.14.08375.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eusmtip1760cc1a58ba7ef8bd5730cf657401aee~MFXu0oKrJ0309403094eusmtip1R;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:00 +0200
Message-Id: <20200505084614.30424-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XYuO1vOTrPLx5LEQYVFmhVxyJAMoSMERXQVslYedORmbE2r
 P3JWy5gXSjFNxaympnNtzmU1rZW3GZrWtGGpmGg3a2RtDhPTnKfsv+d93t/D8/LxEYjQhokI
 qfwMo5BLksQ4H61v+9W94ePa2riNBeXrqeyuFxzqxkADRpUb07lUbaERo1xDc+Ns/XWE0nm6
 Map34jtOVelbOVSZLYLy9A5zKPOIE6N6rCU4ZWgZ5FLPx0exHYtpjeM3TteU1gD6ibcMpR96
 32P0UKadQ9fp0uj+mRGEzuurBHTDWzVO51iqAe02r9q7KJa/PZ5JkqYwirDI4/zEnJ4McDo/
 4GztWwuqBrmkFvAISG6BVU4d0AI+ISTvAThxswJnBw+AnlI98FFC0g1gZeuefwmTYQphoUoA
 x0xe7kLCqH2E+iicDIdalxb36aWkBsD2bD8fhJDtCPye2T+/CCD3QVtn/nwAJVfD/ukGTAsI
 QkBGQs2rGLYtCOpNzxCf5s3ZI46B+fMg6eRCq7obYaFoaGv/hLE6AI7ZLVxWB8KOvCyUDVwC
 cLjLwGWHLAB7LhYCloqAA11TuK8ZIUOg0RrG2lGwYNQ7b0PSH/a5lvhsZE7m1hcgrC2AV68I
 WXoNLLLfX6h9/srx9zQa1mV/wNlXbAWw+HLsNRBU9L+rDIBqsIJRKWUJjHKTnEkNVUpkSpU8
 IfRksswM5r5Vx4zd8whYp080AZIAYj/BYbcxTohJUpTnZE0AEoh4qaBi0hQnFMRLzp1nFMnH
 FKokRtkEVhKoeIVg850vR4VkguQMc4phTjOKf1sOwROpwXKdyTHYubVzMjD1gssgmEkOOcTz
 PxVTrG5udH2xp9mmDi7+0fK6RTSa8TlatlP1lPmUkrtN59VHVb7TFOn33/2m2hXtntzNvHY0
 FjDSmlW8dLMzeJlAa3xza0oTfOTB46yHogN16xXNdzZLgy19H1+WxI+jbat/fn2TORu5SXJb
 jCoTJeHrEIVS8gdZRgIeUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7rP1DfGGey6yWPRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWR
 qZK+nU1Kak5mWWqRvl2CXkbf5XbGgqnCFRtvbmFpYJwk0MXIySEhYCKxYe0v5i5GLg4hgaWM
 Eid2TGaBSMhInJzWwAphC0v8udbFBlH0iVFietNfdpAEm4ChRNdbiISIQCejxLTuj+wgDrPA
 BWaJP5/2M4NUCQsESHz+swRsLIuAqsTtP7uBxnJw8ArYSbRe8ITYIC+xesMBsHJOoPDjS3fY
 QGwhgUKJD+e/s05g5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMH62Hfu5eQfjpY3B
 hxgFOBiVeHgjPq+PE2JNLCuuzD3EKMHBrCTCu+zHhjgh3pTEyqrUovz4otKc1OJDjKZAN01k
 lhJNzgfGdl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbA8303
 Juv88v++quYm8yel6AeB68vEm4UtTsnWOQieXOV9Ibje4vdMm2p5wf8bFBgb1GsttY87fDtg
 vmLRaRZ+/cd3a3b0r2eW7FJbr9r1tvJx/xtt1d07Hjbyf13qX6wvvqCu8i8z56ZTc1fdyFCq
 Pqkfm6z+QPhb0uLTXU82PFHY7B0mfV2JpTgj0VCLuag4EQCEtQT6tQIAAA==
X-CMS-MailID: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
X-Msg-Generator: CA
X-RootMTR: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084630eucas1p1c74cd5d287e1080b85d98edde405a577@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Zhou <David1.Zhou@amd.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 11/25] drm: radeon: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX3R0bS5jIHwgMTEgKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYwppbmRl
eCA1ZDUwYzllLi4xNjZmODRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYwpAQCAt
NDgxLDcgKzQ4MSw3IEBAIHN0YXRpYyBpbnQgcmFkZW9uX3R0bV90dF9waW5fdXNlcnB0cihzdHJ1
Y3QgdHRtX3R0ICp0dG0pCiB7CiAJc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYgPSByYWRlb25f
Z2V0X3JkZXYodHRtLT5iZGV2KTsKIAlzdHJ1Y3QgcmFkZW9uX3R0bV90dCAqZ3R0ID0gKHZvaWQg
Kil0dG07Ci0JdW5zaWduZWQgcGlubmVkID0gMCwgbmVudHM7CisJdW5zaWduZWQgcGlubmVkID0g
MDsKIAlpbnQgcjsKIAogCWludCB3cml0ZSA9ICEoZ3R0LT51c2VyZmxhZ3MgJiBSQURFT05fR0VN
X1VTRVJQVFJfUkVBRE9OTFkpOwpAQCAtNTIxLDkgKzUyMSw4IEBAIHN0YXRpYyBpbnQgcmFkZW9u
X3R0bV90dF9waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiAJaWYgKHIpCiAJCWdvdG8g
cmVsZWFzZV9zZzsKIAotCXIgPSAtRU5PTUVNOwotCW5lbnRzID0gZG1hX21hcF9zZyhyZGV2LT5k
ZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVjdGlvbik7Ci0JaWYgKG5lbnRz
ID09IDApCisJciA9IGRtYV9tYXBfc2d0YWJsZShyZGV2LT5kZXYsIHR0bS0+c2csIGRpcmVjdGlv
bik7CisJaWYgKHIpCiAJCWdvdG8gcmVsZWFzZV9zZzsKIAogCWRybV9wcmltZV9zZ190b19wYWdl
X2FkZHJfYXJyYXlzKHR0bS0+c2csIHR0bS0+cGFnZXMsCkBAIC01NTQsOSArNTUzLDkgQEAgc3Rh
dGljIHZvaWQgcmFkZW9uX3R0bV90dF91bnBpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkK
IAkJcmV0dXJuOwogCiAJLyogZnJlZSB0aGUgc2cgdGFibGUgYW5kIHBhZ2VzIGFnYWluICovCi0J
ZG1hX3VubWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGly
ZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShyZGV2LT5kZXYsIHR0bS0+c2csIGRpcmVjdGlv
bik7CiAKLQlmb3JfZWFjaF9zZ19wYWdlKHR0bS0+c2ctPnNnbCwgJnNnX2l0ZXIsIHR0bS0+c2ct
Pm5lbnRzLCAwKSB7CisJZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2wsICZzZ19pdGVyLCB0
dG0tPnNnLT5vcmlnX25lbnRzLCAwKSB7CiAJCXN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9p
dGVyX3BhZ2UoJnNnX2l0ZXIpOwogCQlpZiAoIShndHQtPnVzZXJmbGFncyAmIFJBREVPTl9HRU1f
VVNFUlBUUl9SRUFET05MWSkpCiAJCQlzZXRfcGFnZV9kaXJ0eShwYWdlKTsKLS0gCjEuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
