Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5781C3AF3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:10:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5319866056
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:10:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4805966072; Mon,  4 May 2020 13:10:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2DF766054;
	Mon,  4 May 2020 12:55:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 82A8560B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72ABA66048; Mon,  4 May 2020 12:55:31 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 2B75366048
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:24 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125423euoutp025456c6bfc5c545fb12eab3186c795a35~L1G428A8J1839718397euoutp023
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125423euoutp025456c6bfc5c545fb12eab3186c795a35~L1G428A8J1839718397euoutp023
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125423eucas1p2ebcf5bcb67d9e5a919928ba62f968d29~L1G4f_XI52250922509eucas1p29;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 7C.12.60698.E7010BE5; Mon,  4
 May 2020 13:54:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0~L1G4HMxes1833418334eucas1p2H;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125422eusmtrp23b7055eba07f8554b4f4ee1eae479a56~L1G4GhHu82826928269eusmtrp2b;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-61-5eb0107e72b4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3F.69.08375.E7010BE5; Mon,  4
 May 2020 13:54:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125421eusmtip25b5c1e2266031611705f4c5013c31891~L1G3WvG4w0241002410eusmtip2J;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:56 +0200
Message-Id: <20200504125359.5678-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTYRSF/WfrUCkOhcQ/uECqYjRhExNHcE14mEQfUBPXWCw6AQIt2qFu
 D4pQFatVFAkIRBqiQQsKlLaixqUFLQpUQDRQRSGgphqiWChRtNhxXN6+e+65OTc3l0SlT/Ew
 MkOVw6pViiwZIcasj785o45Q9fJYj2UZrXc+QeiG0jqc7io5jtFT1vMo3TP+maCv1zxCaMOD
 RLqibwk91jOI0Kahlzj9/E4FQd9o6RfRti/DOF1zM4WeMBcha2YwtZdrAXPPa8AYk/EUwdzy
 DuDM29MOhGm8cpR55RtCmaLeasA0f+nBmLt9uQQz+s6FMWfNRsDUmV9gjMc0Nzlou3jFHjYr
 Yz+rjlm1S5x+rnzd3kvBB0vdVXgumJToAElCail0WLfpQAAppa4B+PG1RgfEfh4D8HTFW0wo
 PAC6Cl0I7+IHLF3FiNCoBrBTX439GzEOngC8i6DioG5ER/AcSh0HsFUfyJtQqgmFlcVuEd8I
 oTbAk/lXf5swagEct53CeZZQK2Fbf+OfuHBYU/8Q5XcN8OuX9AsF2S2CA/WEwEmw0duJChwC
 PzrMIoFnw6nblb83hVQ+gIPOGyKhOAPg87xSILgS4Wvnd4IPQKlFsO5OjCCvhdqvhbhwoyDY
 OxLMy6gfL1hLUEGWwIITUsEdCcscN//F2jq7/6zDQOtwh0i4TzOA2u4CtBCEl/0PMwBgBDNZ
 DadMY7l4FXsgmlMoOY0qLXp3ttIE/B/W5nOMN4H7P1LtgCKBLFCy1VMnl+KK/dwhpR1AEpWF
 Spq0fkmyR3HoMKvOTlFrsljODmaRmGymJL7KvVNKpSly2EyW3cuq/3YRMiAsF6x3f46iSrg5
 F5Nt9nK5ZoMvMXkeYt8RSU6LxV+stgwvj5i0G8zeUUlB6m4T1Yo86/ikqUcSOHTqYlh2HqVJ
 +Pk+KSnKlxNBOMvm9q7cqLWLpzcEbrK+KjZY5PKhCeXmVGX7mjxXrdZ1rGP+G2b9h30tmYqR
 lC33BxrG2vtDZRiXrohbjKo5xS+3tDAHXQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xe7p1AhviDDa1K1r0njvJZLFxxnpW
 i4vTW1ks/m+byGxx5et7NouVq48yWSzYb20x56aRxZcrD5ksNj2+xmpxedccNou1R+6yWxz8
 8ITVYvW6eIvvWyYzOfB7rJm3htFj77cFLB6bVnWyeWz/9oDV4373cSaPzUvqPW7/e8zsMfnG
 ckaPwx+usHjsvtnA5vHx6S0Wj74tqxg91m+5yuLxeZNcAF+Unk1RfmlJqkJGfnGJrVK0oYWR
 nqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXkb/bO+CmYIVM14uYm1g/M3bxcjJISFg
 IrH14lSmLkYuDiGBpYwSK2b/ZINIyEicnNbACmELS/y51sUGUfSJUWLr0y1MIAk2AUOJrrcQ
 CRGBTkaJad0f2UESzAKHmCW2XpcEsYUF/CU+/JoG1sAioCrx9WAn2FReAVuJ03c3M0FskJdY
 veEAcxcjBwcnUHxmrzpIWEggX+Lu038sExj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/d
 xAiMqm3Hfm7ewXhpY/AhRgEORiUe3ojP6+OEWBPLiitzDzFKcDArifDuaAEK8aYkVlalFuXH
 F5XmpBYfYjQFumkis5Rocj4w4vNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQW
 wfQxcXBKNTAG5aWJznJNDp2+8r+Hwtx1YuGPTJsOn7bas4vV/Q7j7W+P17545ymbtJXhlLtq
 f8XKkHsxey8IGdx+c3yVVzTPQQeR7c2rTKp7bXv5vY4a2/7Ufh4ovvvKo3mrfnr3Oomnhwtf
 Lubxj9DU4VwlVSnVzPprml+15pHvPyu+zTL7kHJ5QevZoqNKLMUZiYZazEXFiQChzi19wAIA
 AA==
X-CMS-MailID: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
X-Msg-Generator: CA
X-RootMTR: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125422eucas1p206476912d5137bcad804bccbd75ed2f0@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 18/21] xen: gntdev: fix sg_table nents
 vs. orig_nents misuse
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
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgYi9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMK
aW5kZXggNzVkM2JiOS4uZWQ3NDlmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy94ZW4vZ250ZGV2LWRt
YWJ1Zi5jCisrKyBiL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYwpAQCAtMjQ4LDcgKzI0OCw3
IEBAIHN0YXRpYyB2b2lkIGRtYWJ1Zl9leHBfb3BzX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
X2J1ZiwKIAkJaWYgKHNndCkgewogCQkJaWYgKGdudGRldl9kbWFidWZfYXR0YWNoLT5kaXIgIT0g
RE1BX05PTkUpCiAJCQkJZG1hX3VubWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwK
LQkJCQkJCSAgIHNndC0+bmVudHMsCisJCQkJCQkgICBzZ3QtPm9yaWdfbmVudHMsCiAJCQkJCQkg
ICBnbnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGlyLAogCQkJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQyk7CiAJCQlzZ19mcmVlX3RhYmxlKHNndCk7CkBAIC0yODgsOCArMjg4LDEwIEBAIHN0YXRp
YyB2b2lkIGRtYWJ1Zl9leHBfb3BzX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwKIAlz
Z3QgPSBkbWFidWZfcGFnZXNfdG9fc2d0KGdudGRldl9kbWFidWYtPnBhZ2VzLAogCQkJCSAgZ250
ZGV2X2RtYWJ1Zi0+bnJfcGFnZXMpOwogCWlmICghSVNfRVJSKHNndCkpIHsKLQkJaWYgKCFkbWFf
bWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJ
CSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CisJCXNndC0+bmVudHMgPSBkbWFfbWFw
X3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwKKwkJCQkJICAgICAgc2d0LT5vcmlnX25l
bnRzLCBkaXIsCisJCQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCQlpZiAoIXNn
dC0+bmVudHMpIHsKIAkJCXNnX2ZyZWVfdGFibGUoc2d0KTsKIAkJCWtmcmVlKHNndCk7CiAJCQlz
Z3QgPSBFUlJfUFRSKC1FTk9NRU0pOwpAQCAtNjI1LDcgKzYyNyw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
Z250ZGV2X2RtYWJ1ZiAqZG1hYnVmX2ltcF9hbGxvY19zdG9yYWdlKGludCBjb3VudCkKIAogCS8q
IE5vdyBjb252ZXJ0IHNndCB0byBhcnJheSBvZiBwYWdlcyBhbmQgY2hlY2sgZm9yIHBhZ2UgdmFs
aWRpdHkuICovCiAJaSA9IDA7Ci0JZm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJnNnX2l0ZXIs
IHNndC0+bmVudHMsIDApIHsKKwlmb3JfZWFjaF9zZ19wYWdlKHNndC0+c2dsLCAmc2dfaXRlciwg
c2d0LT5vcmlnX25lbnRzLCAwKSB7CiAJCXN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVy
X3BhZ2UoJnNnX2l0ZXIpOwogCQkvKgogCQkgKiBDaGVjayBpZiBwYWdlIGlzIHZhbGlkOiB0aGlz
IGNhbiBoYXBwZW4gaWYgd2UgYXJlIGdpdmVuCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
