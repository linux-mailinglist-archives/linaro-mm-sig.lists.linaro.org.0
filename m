Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6871BBF31
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:23:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5509E61813
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:23:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 46074618F1; Tue, 28 Apr 2020 13:23:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B88C261951;
	Tue, 28 Apr 2020 13:20:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4DCF86198D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41DC961813; Tue, 28 Apr 2020 13:20:30 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 422DB61813
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:25 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132024euoutp01ff53baba12b17304e81327c46548edc7~J-l4s6MP81886118861euoutp010
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132024euoutp01ff53baba12b17304e81327c46548edc7~J-l4s6MP81886118861euoutp010
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132023eucas1p22608a33dbb73c19b9e6e4c9e1cfc7ef3~J-l4WkzdE2651826518eucas1p2K;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DF.B1.60679.79D28AE5; Tue, 28
 Apr 2020 14:20:23 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43~J-l4FznJX1084510845eucas1p2Q;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132023eusmtrp2bcac38ecf53e28df3183908ba73ff661~J-l4FF7Zw2140221402eusmtrp2B;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-88-5ea82d974d9d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F7.96.08375.79D28AE5; Tue, 28
 Apr 2020 14:20:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132022eusmtip2eb2ef3f32b45fad3d3e3bf7df616d25f~J-l3VS6cB0876008760eusmtip2h;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:50 +0200
Message-Id: <20200428132005.21424-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzf7557XlxOT8fmNynbbbXKkGr1KzI2rWfNH72stbVFTzzDOOwe
 lFpLyjE6owzRSnZyDp2QckJudGHDkMlLea3lZVqkkcjTg/77vP4+23c/ClM04g5UaEQ0p45g
 w5WETFr9brHdJdtF779/qngP0ra3SFCh8TaJXuQYcZRgbiXQanUGhnp+zhKouKRZgvLSKyUo
 v8EDzfeMSFDFWC+Ouk2PCFTWNESixu/jOGodmiO9tzKlj0sBU7eQL2UGe98QzKuFYZz5nGqR
 MJW6W8zAyhjGPOgrAkztx3iCSasyAGauYufpLRdlnkFceGgsp3bzuiwLWTZr8SiN/bWZ5SQ8
 HhhsU4AVBelDMK+3mEwBMkpB6wFMTNMBkcwDWJNajolkDsCpcY1ko/Kl2ygVjSIAG4bnsM1K
 YlamVEgRtDtMmUkhBGxHJwL4XmsthDC6GoPjRU2kYNjSp+BikuFfSErvggVa09o4Rcnp41BX
 GieuOcGS8reYgK1oL1g4OkEI70C6l4SVdZNADPnCp9NpuIht4aSlihSxI1yteSIRC3cAHGkv
 I0VyD8DuhJz1tgccbF8ihGWM3guNJjdR9oEJqW2kIEPaBvbNbBNkbA3er87GRFkOkzUKMb0b
 5lqeb842dnZhImbgxELH+oEzANTqnoB04JT7fywfAAOw52J4VTDHH4jgrrryrIqPiQh2DYxU
 VYC1j9W2Ypl/DUzLV8yApoDSWl5urfdX4GwsH6cyA0hhSjv5aMgzf4U8iI27zqkjA9Qx4Rxv
 BtspqdJefrDg2yUFHcxGc2EcF8WpN1wJZeUQD6IzfWyY2eaCMOOvSrZDetdsCQpIGMiIdr7Z
 0+e5nMz49debxlVWBr+8VqcLRzUPi8/6tpyJ7OpkPY/lZiGZ82/NuRNk95Ldj9QQpzabTs+c
 qfPTw3+O7Ki98aH+8CJrtNb0RzH+gU2f9Ir0qZP8V7OjEXiTtjiXW0+gl7pRpZQPYd33YWqe
 /QuTM2vnVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rTdVfEGZw4KGDRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQy/hzqZS1oE694+6edtYFxlXAXIyeHhICJxLPL61m6GLk4hASW
 Mko8m3GQHSIhI3FyWgMrhC0s8edaFxtE0SdGie8LX7OAJNgEDCW63kIkRAQ6GSWmdX9kB3GY
 BQ4wS3SfP8kEUiUs4CXxs30VG4jNIqAqsah3F2MXIwcHr4CtxJI1lRAb5CVWbzjADGJzCthJ
 LH30lA2kRAio5HJL7gRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECo2fbsZ+bdzBe
 2hh8iFGAg1GJh3cDz4o4IdbEsuLK3EOMEhzMSiK8jzKWxQnxpiRWVqUW5ccXleakFh9iNAU6
 aSKzlGhyPjCy80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MBaU
 /PjeeVsqlPNZQ6Po07lvZPJdHYqKvhyWfb3BSctZZ1p4ln7aX9WOkJQdDyR/rpwmVq6fwM5i
 c1hwlcwG52ltX7ouTHknf/LYtP9FU3xUa5/mahwXvXx486mFjV5pM5/vUdnkJXTj0iQ/B9OE
 47N8Gfkm8y7jDNjFwH/Pm6/8XXyUztQlbEosxRmJhlrMRcWJAITrShy0AgAA
X-CMS-MailID: 20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43
X-Msg-Generator: CA
X-RootMTR: 20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 02/17] drm: amdgpu: fix sg_table nents vs.
	orig_nents misuse
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jIHwgNyArKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdHRtLmMgICAgIHwgOCArKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMKaW5kZXggNDNkOGVkNy4uNGRmODEzZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCkBAIC0zMDcsOCArMzA3LDkgQEAgc3RhdGlj
IHN0cnVjdCBzZ190YWJsZSAqYW1kZ3B1X2RtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCwKIAkJaWYgKElTX0VSUihzZ3QpKQogCQkJcmV0dXJuIHNndDsKIAotCQlp
ZiAoIWRtYV9tYXBfc2dfYXR0cnMoYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBk
aXIsCi0JCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpCisJCXNndC0+bmVudHMgPSBk
bWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAor
CQkJCQkgICAgICBkaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCQlpZiAoIXNndC0+bmVu
dHMpCiAJCQlnb3RvIGVycm9yX2ZyZWU7CiAJCWJyZWFrOwogCkBAIC0zNDksNyArMzUwLDcgQEAg
c3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoLAogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2
KGJvLT50Ym8uYmRldik7CiAKIAlpZiAoc2d0LT5zZ2wtPnBhZ2VfbGluaykgewotCQlkbWFfdW5t
YXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOworCQlkbWFfdW5t
YXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsIGRpcik7CiAJCXNn
X2ZyZWVfdGFibGUoc2d0KTsKIAkJa2ZyZWUoc2d0KTsKIAl9IGVsc2UgewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCmluZGV4IGQ1NTQzYzIuLjVmMzE1ODUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKQEAgLTEwNDMsNyArMTA0Myw2IEBAIHN0
YXRpYyBpbnQgYW1kZ3B1X3R0bV90dF9waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiB7
CiAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRtX2FkZXYodHRtLT5iZGV2
KTsKIAlzdHJ1Y3QgYW1kZ3B1X3R0bV90dCAqZ3R0ID0gKHZvaWQgKil0dG07Ci0JdW5zaWduZWQg
bmVudHM7CiAJaW50IHI7CiAKIAlpbnQgd3JpdGUgPSAhKGd0dC0+dXNlcmZsYWdzICYgQU1ER1BV
X0dFTV9VU0VSUFRSX1JFQURPTkxZKTsKQEAgLTEwNTksOCArMTA1OCw5IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3R0bV90dF9waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiAKIAkvKiBNYXAg
U0cgdG8gZGV2aWNlICovCiAJciA9IC1FTk9NRU07Ci0JbmVudHMgPSBkbWFfbWFwX3NnKGFkZXYt
PmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsKLQlpZiAobmVu
dHMgPT0gMCkKKwl0dG0tPnNnLT5uZW50cyA9IGRtYV9tYXBfc2coYWRldi0+ZGV2LCB0dG0tPnNn
LT5zZ2wsCisJCQkJICAgIHR0bS0+c2ctPm9yaWdfbmVudHMsIGRpcmVjdGlvbik7CisJaWYgKHR0
bS0+c2ctPm5lbnRzID09IDApCiAJCWdvdG8gcmVsZWFzZV9zZzsKIAogCS8qIGNvbnZlcnQgU0cg
dG8gbGluZWFyIGFycmF5IG9mIHBhZ2VzIGFuZCBkbWEgYWRkcmVzc2VzICovCkBAIC0xMDkxLDcg
KzEwOTEsNyBAQCBzdGF0aWMgdm9pZCBhbWRncHVfdHRtX3R0X3VucGluX3VzZXJwdHIoc3RydWN0
IHR0bV90dCAqdHRtKQogCQlyZXR1cm47CiAKIAkvKiB1bm1hcCB0aGUgcGFnZXMgbWFwcGVkIHRv
IHRoZSBkZXZpY2UgKi8KLQlkbWFfdW5tYXBfc2coYWRldi0+ZGV2LCB0dG0tPnNnLT5zZ2wsIHR0
bS0+c2ctPm5lbnRzLCBkaXJlY3Rpb24pOworCWRtYV91bm1hcF9zZyhhZGV2LT5kZXYsIHR0bS0+
c2ctPnNnbCwgdHRtLT5zZy0+b3JpZ19uZW50cywgZGlyZWN0aW9uKTsKIAogCXNnX2ZyZWVfdGFi
bGUodHRtLT5zZyk7CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
