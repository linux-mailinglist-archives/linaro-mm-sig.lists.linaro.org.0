Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA21BBFA8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:35:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A48861951
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:35:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BC1461994; Tue, 28 Apr 2020 13:35:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A9CA66053;
	Tue, 28 Apr 2020 13:21:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C45661868
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3974E66039; Tue, 28 Apr 2020 13:21:41 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7A4E561997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:33 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132032euoutp017c0ba2ab3d7d22565f9d13133e306b35~J-mAyT3nq1886118861euoutp01H
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132032euoutp017c0ba2ab3d7d22565f9d13133e306b35~J-mAyT3nq1886118861euoutp01H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132032eucas1p1781cc080b8d75eed20c2e8377492af14~J-mAbZYKd1362813628eucas1p1L;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5D.26.60698.0AD28AE5; Tue, 28
 Apr 2020 14:20:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132031eucas1p25bf6d0d1f24a69cc3692b2001ac0ebd1~J-mAFGnfz1082710827eucas1p2W;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132031eusmtrp214019cd67d683af32c16a42eb4afff05~J-mAEdncH2140321403eusmtrp2X;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-99-5ea82da062b2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 86.E3.07950.F9D28AE5; Tue, 28
 Apr 2020 14:20:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132031eusmtip2ede9f87ed322aa7eb656f70d33798961~J-l-ebRoC1180911809eusmtip2E;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:20:04 +0200
Message-Id: <20200428132005.21424-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURT1zdYpUh0LCQ9wSxOImrAJH2MgKBFl3PkxGg3VIhOKUCAtoCDR
 UgWxbrgrKgKCIGCLhRRlUSBoBUllk0VZC36oQY1sIgrSTtW/c8+S83LySFRYizuREdFxrDxa
 EiUibDD9y2mjW7ZbodjzWrGQPm9sROh8bQqPfnxTi9Oq+iaCntNfQumOia8E/bD4BULfzihD
 6OznvvR4xxBC64Y7cbq98g5BP2ro49F130ZwuqlvjLdhMVOSVQKYmslsjOntrCaYislBnBk4
 a0CYsrwTzPvZYZS50l0AmKoeJcFcKC8CzJhuefDCfTZ+YWxURAIr9/A/aCNt0U9isdfsj9aa
 EpQgjVIDkoSUD+xp9lADG1JIFQKo7GpHuGMcwKuz/Rh3jAGY2WRC1YBvSXwZHiA4oQDAG99/
 4/8iFRk1uNlFUF5QPaomzNieSgXw1Xlbswml9CgcKWjgmQU7aiucbTxtCWCUCxzQ5Vl4AeUP
 y3IM1roVsLi01oL583y+6YOlGlJGHtQM3bWaAuGpz1M8DtvBT4ZyK14K557eQ7jASQCHjI94
 3HEOwHbVTcC5fGGv8Sdh3gOlVkNtpQdHB8CZViXCzbQIdo8uMdPoPLysv4FytACmpwk5tyvM
 NGj+1da1tFmfxsA3zdPWHS8BWHq/H8sAKzL/l2UDUAQc2HiFLJxVeEezR9wVEpkiPjrc/VCM
 TAfm/9XrWcPEE/DsV2g9oEggshWU2haKhbgkQZEoqweQREX2ApP0gVgoCJMkJrHymAPy+ChW
 UQ+cSUzkIPDO/RgipMIlcWwky8ay8r8qQvKdlMD57Z6p6c7H27e9ywndL2k9k7S73FPqkmvy
 t+uPlAZtwVI04o2N65Nx4Y6LI8UHjxnHFnocT21TuQff6vEP4Vcnd8hWNngv8hMc3lB13fWH
 OGRZus86++Q1m6sn2mY6yYys79Ordq3VYM7tg6oqx65YbXWQY2DApnRmL7pzwVeNji/CFFKJ
 1xpUrpD8Aev8+gVTAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rzdVfEGbz7Y27Re+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyLmz7xlIwVaTiwKOyBsY2gS5GTg4JAROJd4/vs3UxcnEICSxl
 lLh6aQ4TREJG4uS0BlYIW1jiz7UuqKJPjBKd7zrZQRJsAoYSXW8hEiICnYwS07o/soM4zAIH
 mCW6z58EGyUs4CXx72Q72CgWAVWJ+5uWgHXzCthJbF54nBlihbzE6g0HwGxOoPjSR0+BpnIA
 rbOVuNySO4GRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzA6Nl27OeWHYxd74IPMQpw
 MCrx8G7gWREnxJpYVlyZe4hRgoNZSYT3UcayOCHelMTKqtSi/Pii0pzU4kOMpkA3TWSWEk3O
 B0Z2Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxssNE6ZJ6Mfq
 NvmVLmdk+KG95pfLSb4ddepBXY57tLNqD96UXhNUOnn+daOAjkUl7g91T2hPj5ZrnhfrZHbr
 KcP6o9cOxc02ntGw/uxay/Ke/B3FTfMNnghJxbpu+L7raqmN3qr32lsD2dK3X7Co+xxyd8Z5
 E8+oRWwmiTmd3yZlt6jozNawVmIpzkg01GIuKk4EAGUr1+e0AgAA
X-CMS-MailID: 20200428132031eucas1p25bf6d0d1f24a69cc3692b2001ac0ebd1
X-Msg-Generator: CA
X-RootMTR: 20200428132031eucas1p25bf6d0d1f24a69cc3692b2001ac0ebd1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132031eucas1p25bf6d0d1f24a69cc3692b2001ac0ebd1
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132031eucas1p25bf6d0d1f24a69cc3692b2001ac0ebd1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 16/17] drm: host1x: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMg
fCAxNyArKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMgYi9k
cml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKaW5kZXggYTEwNjQzYS4uM2VhMTg1ZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2Iu
YwpAQCAtMTY2LDggKzE2Niw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3Qg
aG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8gdW5waW47CiAJ
CQl9CiAKLQkJCWVyciA9IGRtYV9tYXBfc2coZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGly
KTsKLQkJCWlmICghZXJyKSB7CisJCQlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZyhkZXYsIHNndC0+
c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJCQkJCQlkaXIpOworCQkJaWYgKCFzZ3QtPm5lbnRzKSB7
CiAJCQkJZXJyID0gLUVOT01FTTsKIAkJCQlnb3RvIHVucGluOwogCQkJfQpAQCAtMjE3LDcgKzIx
OCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBz
dHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKCFJU19FTkFCTEVEKENPTkZJR19U
RUdSQV9IT1NUMVhfRklSRVdBTEwpICYmIGhvc3QtPmRvbWFpbikgewotCQkJZm9yX2VhY2hfc2co
c2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQorCQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNn
LCBzZ3QtPm9yaWdfbmVudHMsIGopCiAJCQkJZ2F0aGVyX3NpemUgKz0gc2ctPmxlbmd0aDsKIAkJ
CWdhdGhlcl9zaXplID0gaW92YV9hbGlnbigmaG9zdC0+aW92YSwgZ2F0aGVyX3NpemUpOwogCkBA
IC0yMzEsNyArMjMyLDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBwaW5fam9iKHN0cnVjdCBob3N0
MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAKIAkJCWVyciA9IGlvbW11X21hcF9z
Zyhob3N0LT5kb21haW4sCiAJCQkJCWlvdmFfZG1hX2FkZHIoJmhvc3QtPmlvdmEsIGFsbG9jKSwK
LQkJCQkJc2d0LT5zZ2wsIHNndC0+bmVudHMsIElPTU1VX1JFQUQpOworCQkJCQlzZ3QtPnNnbCwg
c2d0LT5vcmlnX25lbnRzLCBJT01NVV9SRUFEKTsKIAkJCWlmIChlcnIgPT0gMCkgewogCQkJCV9f
ZnJlZV9pb3ZhKCZob3N0LT5pb3ZhLCBhbGxvYyk7CiAJCQkJZXJyID0gLUVJTlZBTDsKQEAgLTI0
MSw5ICsyNDIsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAq
aG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3Vu
cGluc10uc2l6ZSA9IGdhdGhlcl9zaXplOwogCQkJcGh5c19hZGRyID0gaW92YV9kbWFfYWRkcigm
aG9zdC0+aW92YSwgYWxsb2MpOwogCQl9IGVsc2UgaWYgKHNndCkgewotCQkJZXJyID0gZG1hX21h
cF9zZyhob3N0LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCQkgRE1BX1RPX0RFVklD
RSk7Ci0JCQlpZiAoIWVycikgeworCQkJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2coaG9zdC0+ZGV2
LCBzZ3QtPnNnbCwKKwkJCQkJCXNndC0+b3JpZ19uZW50cywgRE1BX1RPX0RFVklDRSk7CisJCQlp
ZiAoIXNndC0+bmVudHMpIHsKIAkJCQllcnIgPSAtRU5PTUVNOwogCQkJCWdvdG8gdW5waW47CiAJ
CQl9CkBAIC02NDcsNyArNjQ4LDcgQEAgdm9pZCBob3N0MXhfam9iX3VucGluKHN0cnVjdCBob3N0
MXhfam9iICpqb2IpCiAJCX0KIAogCQlpZiAodW5waW4tPmRldiAmJiBzZ3QpCi0JCQlkbWFfdW5t
YXBfc2codW5waW4tPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCisJCQlkbWFfdW5tYXBfc2co
dW5waW4tPmRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKIAkJCQkgICAgIHVucGluLT5k
aXIpOwogCiAJCWhvc3QxeF9ib191bnBpbihkZXYsIHVucGluLT5ibywgc2d0KTsKLS0gCjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
