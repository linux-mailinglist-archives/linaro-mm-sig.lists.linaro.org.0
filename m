Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD61CF1DA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:45:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64BA260723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:45:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 57F0A618C8; Tue, 12 May 2020 09:45:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EB0B6653E;
	Tue, 12 May 2020 09:07:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 035C465F97
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EB65A6650E; Tue, 12 May 2020 09:07:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1688B65F97
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090125euoutp01967ade38698130d1b82159a72d9ff3ce~OPFw5NALl2628826288euoutp01i
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090125euoutp01967ade38698130d1b82159a72d9ff3ce~OPFw5NALl2628826288euoutp01i
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090124eucas1p2ec1525b3ac2455ce984ccb1ea0183d4c~OPFwXTnB22180321803eucas1p28;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E6.7B.60698.4E56ABE5; Tue, 12
 May 2020 10:01:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090124eucas1p1f96fac067834c139fe1095a63b4dc2f0~OPFwCxWCp1182411824eucas1p1B;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090124eusmtrp2e644540b357af188330c72d982f38497~OPFwCBK-C0472704727eusmtrp2T;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-4b-5eba65e49ccf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5A.45.08375.4E56ABE5; Tue, 12
 May 2020 10:01:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eusmtip137b08d0e8a85e04ec9bb6f00accea5d0~OPFvZjtnE1352513525eusmtip1N;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:49 +0200
Message-Id: <20200512090058.14910-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c5tR9nqNI2+LLImBhppmtlHlhWEHCShqL+6mKc8meS22pxW
 Bi21WCvLS2IXy5WWecnL8pJbN0c2UzCxEMVKTYs0NEsdXdbM7Zj997y/93l5Hj4+Gpe+JL3o
 eEUir1JwCTLKnah78bNt5SBvil6Vb/ZDGW0vMVR9pZJEU3VZOHoz+ZVCJWVNGDI8DUPfO88D
 dC6rSIQm3vRjyDjQSaLXpnwKXaiqJVHt0CiG7j9/J0J3jXYMNY4NkpsYtvxmOWAf2wwEe113
 lWSNpecott7WR7K9560Y+6DoFNvjGMDZnK5iwJq7tRR7saYUsOPGJdvEu9zXx/IJ8Um8KjA8
 xv3QWNon/MjowmOtNUWEFnTN1wM3GjIhMNV2GtMDd1rK3APwT5aDEIYJAA3vW3BhGAfw4+di
 0b+TfkfjzKIYwN+FDWD2RKtvcbkoJgjqR/SUU3syZwBszhA7Nc7YcZiXv1EPaNqD2QEdo6FO
 TDC+MLXzqciJJUw4/JaPC1nesKzqmUu7TePeArurHWQ+iGCJ2UQIpi0w7UcLKWgPOGytmSm6
 GE41FGDCQRqA/W33RcJwAcDXqVeA4AqDb9t+Uc5knPGDlaZAAW+GD6aaXRgyc2DXyDyh/hyY
 XZeHC1gCdWelgns5vGatmI1tbO+Y6c/Cn+MOUnieJgALum+IMoH3tf9hBgBKwQJeo5bH8erV
 Cj45QM3J1RpFXMABpdwIpj9Yq8M6+RA8se+3AIYGMrFEF9wQLSW5JPVxuQVAGpd5StLjp5Ek
 ljt+glcp96k0CbzaAhbRhGyBZPXtob1SJo5L5A/z/BFe9W+L0W5eWqC8vMwvfX96R0R2zMF1
 kSmBOdxWj0vVGT5RS2seUZ7f1p/dXWbciVVk7wsNT97QYiopbx/ObQ85Ghk2d3v3Hv8OaRQV
 jYK3V5hzmgzKgT7ZF91k5iOLJn5zimLNWk1hfewrr8q1oDWKq/cV65Z88nnVM3Kr1ztiYsWZ
 k3cCg225hIxQH+KC/HGVmvsLz89v4FwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7pPUnfFGXy5L2LRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8elaN6NF58Ql7BZfrjxkstj0+BqrxeVdc9gsejZsZbXY
 +vIdk8XaI3fZLZZt+sNkcfDDE1YHAY8189Yweuz9toDFY3bHTFaPTas62Ty2f3vA6nG/+ziT
 x+Yl9R63/z1m9ph8Yzmjx+6bDWwefVtWMXp83iQXwBOlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hp
 oWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl/Gh+RlzwTvJitNblrA0MN4Q7WLk5JAQMJF4
 +O8gcxcjF4eQwFJGiUcLFzNCJGQkTk5rYIWwhSX+XOtigyj6xCjR/+UFG0iCTcBQoustREJE
 oJNRYlr3R3YQh1mghUXiw6eHLCBVwgKBEp/XNIB1sAioSjRd2w9UxMHBK2An8XEOM8QGeYnV
 Gw6A2ZxA4fvz/4C1CgkUSjy6+pZlAiPfAkaGVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIEx
 te3Yz807GC9tDD7EKMDBqMTD22G0M06INbGsuDL3EKMEB7OSCG9LJlCINyWxsiq1KD++qDQn
 tfgQoynQTROZpUST84HxnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+J
 g1OqgVH9z4mj+z2jhM3yVRm3vXD7qvfq09OnXp9TJk63WmPt765+99PE4sDLkeF903dcE5rp
 emzWzR1rL9fvYtS9913/6srKBWs7Z8bZ/tVp2m6rl3zkibmdxBXfwiu1Pyo39Ic4T/I6uqb/
 S4m8fpSbdo9mj0Hhms2fGJeI702+2P/sA8PWqCS2e9xKLMUZiYZazEXFiQDLa3DlvwIAAA==
X-CMS-MailID: 20200512090124eucas1p1f96fac067834c139fe1095a63b4dc2f0
X-Msg-Generator: CA
X-RootMTR: 20200512090124eucas1p1f96fac067834c139fe1095a63b4dc2f0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090124eucas1p1f96fac067834c139fe1095a63b4dc2f0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090124eucas1p1f96fac067834c139fe1095a63b4dc2f0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 29/38] drm: rcar-du: fix common struct
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
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KCmRtYV9tYXBfc2d0YWJsZSgpIGZ1bmN0aW9uIHJldHVy
bnMgemVybyBvciBhbiBlcnJvciBjb2RlLCBzbyBhZGp1c3QgdGhlCnJldHVybiB2YWx1ZSBjaGVj
ayBmb3IgdGhlIHZzcDFfZHVfbWFwX3NnKCkgZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0tLQpGb3IgbW9yZSBpbmZv
cm1hdGlvbiwgc2VlICdbUEFUQ0ggdjQgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBu
ZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvZHJpLWRldmVsLzIwMjAwNTEyMDg1NzEwLjE0Njg4LTEtbS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tL1QvCi0tLQogZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYyAgfCAzICst
LQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMgfCA4ICsrKystLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYwppbmRleCA1ZTRmYWYyLi4yZmMxODE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yY2FyLWR1L3JjYXJfZHVfdnNwLmMKQEAgLTE5Nyw5ICsxOTcsOCBAQCBpbnQgcmNh
cl9kdV92c3BfbWFwX2ZiKHN0cnVjdCByY2FyX2R1X3ZzcCAqdnNwLCBzdHJ1Y3QgZHJtX2ZyYW1l
YnVmZmVyICpmYiwKIAkJCWdvdG8gZmFpbDsKIAogCQlyZXQgPSB2c3AxX2R1X21hcF9zZyh2c3At
PnZzcCwgc2d0KTsKLQkJaWYgKCFyZXQpIHsKKwkJaWYgKHJldCkgewogCQkJc2dfZnJlZV90YWJs
ZShzZ3QpOwotCQkJcmV0ID0gLUVOT01FTTsKIAkJCWdvdG8gZmFpbDsKIAkJfQogCX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdnNwMS92c3AxX2RybS5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMKaW5kZXggYTRhNDVkNi4uODZkNWUzZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMKKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMKQEAgLTkxMiw4ICs5MTIsOCBAQCBp
bnQgdnNwMV9kdV9tYXBfc2coc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFibGUgKnNn
dCkKIAkgKiBza2lwIGNhY2hlIHN5bmMuIFRoaXMgd2lsbCBuZWVkIHRvIGJlIHJldmlzaXRlZCB3
aGVuIHN1cHBvcnQgZm9yCiAJICogbm9uLWNvaGVyZW50IGJ1ZmZlcnMgd2lsbCBiZSBhZGRlZCB0
byB0aGUgRFUgZHJpdmVyLgogCSAqLwotCXJldHVybiBkbWFfbWFwX3NnX2F0dHJzKHZzcDEtPmJ1
c19tYXN0ZXIsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCURNQV9UT19ERVZJQ0UsIERNQV9B
VFRSX1NLSVBfQ1BVX1NZTkMpOworCXJldHVybiBkbWFfbWFwX3NndGFibGUodnNwMS0+YnVzX21h
c3Rlciwgc2d0LCBETUFfVE9fREVWSUNFLAorCQkJICAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZ
TkMpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwodnNwMV9kdV9tYXBfc2cpOwogCkBAIC05MjEsOCAr
OTIxLDggQEAgdm9pZCB2c3AxX2R1X3VubWFwX3NnKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IHNnX3RhYmxlICpzZ3QpCiB7CiAJc3RydWN0IHZzcDFfZGV2aWNlICp2c3AxID0gZGV2X2dldF9k
cnZkYXRhKGRldik7CiAKLQlkbWFfdW5tYXBfc2dfYXR0cnModnNwMS0+YnVzX21hc3Rlciwgc2d0
LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkgICBETUFfVE9fREVWSUNFLCBETUFfQVRUUl9TS0lQX0NQ
VV9TWU5DKTsKKwlkbWFfdW5tYXBfc2d0YWJsZSh2c3AxLT5idXNfbWFzdGVyLCBzZ3QsIERNQV9U
T19ERVZJQ0UsCisJCQkgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwogfQogRVhQT1JUX1NZTUJP
TF9HUEwodnNwMV9kdV91bm1hcF9zZyk7CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
