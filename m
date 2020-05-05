Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C76731C5175
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:01:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E88FE61999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:01:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D5C6666055; Tue,  5 May 2020 09:01:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 908F066534;
	Tue,  5 May 2020 08:48:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B8ACB66078
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ACD5D66227; Tue,  5 May 2020 08:46:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 785FE66078
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:36 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084635euoutp028c5d3e64d21b0f0c1bb733eb421a5138~MFX0OwFJK2628726287euoutp02n
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084635euoutp028c5d3e64d21b0f0c1bb733eb421a5138~MFX0OwFJK2628726287euoutp02n
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084634eucas1p2f13263895e2ba3729986bd6357ca169d~MFXz1gw1L2338223382eucas1p2F;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 90.42.60679.AE721BE5; Tue,  5
 May 2020 09:46:34 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0~MFXzSEDHK2423624236eucas1p18;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084634eusmtrp126aba354bba07622efd7ab30120ded8d~MFXzRS61A0942309423eusmtrp1j;
 Tue,  5 May 2020 08:46:34 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-4a-5eb127eab0cc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4D.21.07950.AE721BE5; Tue,  5
 May 2020 09:46:34 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084633eusmtip1d32281152fa44131a67ab45c0c0a5134~MFXyomUX20309503095eusmtip1w;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:07 +0200
Message-Id: <20200505084614.30424-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTYRztu3f37ipOrtP0Q0Nr9CAhTY24spIkqUsFCv1RCGlLr1N0Uza1
 VKJhKs5H+CCbFmHh++18lE7xgTZNGuELLR/TWaDhI2emIprzqv13fud3zu8cPj4C5fdh9kSY
 NJqRSUURAtyc0/xpU3dh4Vx9wMX83ctUpq4foepVtRi125yNUsN/lnGqvLIXoQo7hNTqaDqg
 lNlFXGpteAah1IZRjBpqfYNTGXVNGNU0v4RQ1T2TXKpEvY1QXStz2DWSrnpbBej29UIO/To1
 H6PVFUqc/rCux+jpdC1CNxQ9o7/vGFA6d6wU0JpxBU6/aKwAtFHt6Gfhb34lmIkIi2Vkrl4P
 zUNbNLeipsknwzlCBcizTANmBCQvwaSsUk4aMCf4ZBmAZQ3JODusAdhXn4yygxHA3hINfmjp
 L9cfLEoBLFhqw44sFd9SuSYVTrrBtMW0fYcNmbx3K9PCJELJbRQm/TLdJQhr8i5sf+lgghzy
 DGxJSTDJeaQX1I02ImyYE6ys60RN2GyPNwxO7NeD5BQXGhNrDhr5wE717AG2hgvaRi6LT8CB
 3AwOa3gO4IyumssOGQAOJaoAqxLCCd0WbmqBkudhbasrS3vDlVnVPg1JSzi2aGWi0T2Y0/wK
 ZWkeTE3hs+qzsEBbcxTb9XUQZTEN9fofgH2fXgCLN5XcLOBU8D+sEIAKYMfEyCViRu4uZR67
 yEUSeYxU7BIUKVGDvf81sKNd+whatx91A5IAAgvefWNtAB8TxcrjJN0AEqjAhleyURfA5wWL
 4uIZWWSgLCaCkXcDB4IjsON5vJ9/wCfFomgmnGGiGNnhFiHM7BWgSD+y4uPhu5TTjt5715eU
 P1Ta/cVqcHq5JyTcc+TOcc0NR7/PsqncBJWz61OlU+DVk6ktUVnt7prQ28U1bTvW173H8m7a
 i4OmV1ulc6ij0HemJyFjpuFnwVAAlM7ZbJ3KmTS62P6WbZxGbBVSjZUz8BQf84fxIVmgwzCu
 dfor4MhDRW7OqEwu+gcVeaL4WwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xu7qv1DfGGay6I2LRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8elaN6NF58Ql7BZfrjxkstj0+BqrxeVdc9gsejZsZbXY
 +vIdk8XaI3fZLZZt+sNkcfDDE1YHAY8189Yweuz9toDFY3bHTFaPTas62Ty2f3vA6nG/+ziT
 x+Yl9R63/z1m9ph8Yzmjx+6bDWwefVtWMXp83iQXwBOlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hp
 oWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl7Fzt1fBfYGKK5OsGxin8XUxcnJICJhInFz5
 gBnEFhJYyihxdz43RFxG4uS0BlYIW1jiz7Uuti5GLqCaT4wSd87eYQNJsAkYSnS9hUiICHQy
 Skzr/sgO4jALtLBILO25DtYuLBAosa/7BJDNwcEioCqxs60aJMwrYCdx7toWJogN8hKrNxwA
 u4ITKP74EsQCIYFCiQ/nv7NOYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzCath37
 uWUHY9e74EOMAhyMSjy8G76ujxNiTSwrrsw9xCjBwawkwrvsx4Y4Id6UxMqq1KL8+KLSnNTi
 Q4ymQDdNZJYSTc4HRnpeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5O
 qQbGa+t5C1pub5nEF8C18XKowK6j8Z3vvzgrnmne6rw3UzLh0Prw/tV+c6a4zbpyoeyix9t1
 zVMcZicGHdw2JXjv5Hm2e6s+7n2jVOWZGXT41y7X/8b/eVOPftp2/sry255/tK0mKv47XZX9
 YW97tP4Ei6PvhJZ3TYya/npHk19fuHloichtzzlb25RYijMSDbWYi4oTAS4gPqG8AgAA
X-CMS-MailID: 20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0
X-Msg-Generator: CA
X-RootMTR: 20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 18/25] drm: rcar-du: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dnNwMS92c3AxX2RybS5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92c3AxL3ZzcDFfZHJtLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0u
YwppbmRleCBhNGE0NWQ2Li44YTI2MjRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZzcDEvdnNwMV9kcm0uYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNw
MV9kcm0uYwpAQCAtOTEyLDggKzkxMiw5IEBAIGludCB2c3AxX2R1X21hcF9zZyhzdHJ1Y3QgZGV2
aWNlICpkZXYsIHN0cnVjdCBzZ190YWJsZSAqc2d0KQogCSAqIHNraXAgY2FjaGUgc3luYy4gVGhp
cyB3aWxsIG5lZWQgdG8gYmUgcmV2aXNpdGVkIHdoZW4gc3VwcG9ydCBmb3IKIAkgKiBub24tY29o
ZXJlbnQgYnVmZmVycyB3aWxsIGJlIGFkZGVkIHRvIHRoZSBEVSBkcml2ZXIuCiAJICovCi0JcmV0
dXJuIGRtYV9tYXBfc2dfYXR0cnModnNwMS0+YnVzX21hc3Rlciwgc2d0LT5zZ2wsIHNndC0+bmVu
dHMsCi0JCQkJRE1BX1RPX0RFVklDRSwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJcmV0dXJu
IGRtYV9tYXBfc2d0YWJsZV9hdHRycyh2c3AxLT5idXNfbWFzdGVyLCBzZ3QsIERNQV9UT19ERVZJ
Q0UsCisJCQkJICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKKwlyZXR1cm4gc2d0LT5uZW50
czsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKHZzcDFfZHVfbWFwX3NnKTsKIApAQCAtOTIxLDggKzky
Miw4IEBAIHZvaWQgdnNwMV9kdV91bm1hcF9zZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBz
Z190YWJsZSAqc2d0KQogewogCXN0cnVjdCB2c3AxX2RldmljZSAqdnNwMSA9IGRldl9nZXRfZHJ2
ZGF0YShkZXYpOwogCi0JZG1hX3VubWFwX3NnX2F0dHJzKHZzcDEtPmJ1c19tYXN0ZXIsIHNndC0+
c2dsLCBzZ3QtPm5lbnRzLAotCQkJICAgRE1BX1RPX0RFVklDRSwgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQyk7CisJZG1hX3VubWFwX3NndGFibGVfYXR0cnModnNwMS0+YnVzX21hc3Rlciwgc2d0LCBE
TUFfVE9fREVWSUNFLAorCQkJCURNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwogfQogRVhQT1JUX1NZ
TUJPTF9HUEwodnNwMV9kdV91bm1hcF9zZyk7CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
