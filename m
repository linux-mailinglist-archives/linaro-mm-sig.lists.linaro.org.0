Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 485101D16BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:01:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61CCA60866
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:01:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C5E060BD9; Wed, 13 May 2020 14:01:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C17B66521;
	Wed, 13 May 2020 13:36:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 56EA465F90
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40EDB664EC; Wed, 13 May 2020 13:35:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 8DD0065F90
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:18 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317euoutp0291edb606752d207155da13029c534dd4~OmcbaPTCY0033500335euoutp02c
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133317euoutp0291edb606752d207155da13029c534dd4~OmcbaPTCY0033500335euoutp02c
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133317eucas1p299a49b47f71bac78fea6cdfaf3c9b17e~OmcbEBCfm2972029720eucas1p2_;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C2.11.60679.D17FBBE5; Wed, 13
 May 2020 14:33:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eucas1p25446bcdce5220030c16477e1992385ff~Omcat18eK0616406164eucas1p2l;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317eusmtrp1ae806ab66313837a29a5ee77f4e6ff9e~OmcatETTT1050610506eusmtrp1W;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-62-5ebbf71d9cb9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 76.47.07950.D17FBBE5; Wed, 13
 May 2020 14:33:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133316eusmtip16e4d1fb0d597e3e3f2e4c9d92de5b030~OmcaD90ae3222032220eusmtip1C;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:35 +0200
Message-Id: <20200513133245.6408-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGe89tx9XiOC1fXCWMClLyUn44YGVR0CEzIj9VpC07qaUrdtS0
 IKdDyUtSrcxmrBF287KpmZeJ2aa1YrUsV1p5W8YiQ0qcphna5ln17fn/nud/4eUlUXETHkim
 yNNZhVyWKiWEWNPTGdv6lT/b4sMr1BL6gu05QteXG3B6vukSStsnvxP0/eonCK3riKJddgdC
 N4y8w+ke4w2CLnRpCLq2a0BAm358xukZoxbbKmJqtDWAaZ/SYUyrZkDANE8N48xQsQVhHlTm
 MB/nRlBG3XcXMG3vlQRT2lgFmImGVXsXHxBuOsqmpmSyirAth4XJ+u+dxCn1yiy7VkUowaOA
 IuBDQioSmoq7iCIgJMXUPQArK8YFHkNMuQDUXV3CGxMA3uh7hf3t6HdoUN64C+CdWSvCF+6O
 7krtQoqgImDRWBHh0f5UPoDPLiyMQqlPCCzsfY16DD9qHxw0fME9GqPWwKdDjgUuojbD69Z6
 lF8XBKvrHi9oHzcf7e/APIMgZRbAm1PzAj60A+ZalN4GPzhqafTyFdCqLvE2qAB02GoFfFEC
 YE9eOeBTUbDf9st9K+m+bx00GMN4vA3aG4sRD4bUUtg35uvBqFtebrqG8lgEzxeI+fRaqLHo
 /601db/xRhjY2hvDP1AngCp9J3ERBGn+79IBUAUC2AwuLYnlNsjZ06GcLI3LkCeFJp5MawDu
 32Sds7hagPH3ETOgSCBdIqI/tMWLcVkml51mBpBEpf6iPQY3Eh2VZZ9hFScTFBmpLGcGEhKT
 Bog23vp6SEwlydLZEyx7ilX8dRHSJ1AJDoSzccbgl85B36GK6OlxZH+Mc3D7lpTc2kLLDnIW
 LcGrd942Tap2NZvmzvkVSEo3J+Y8OdsrqTvxor39/Zv8Zd9e2Mp2RlzBuodjp8PiQlbrd6uj
 yxIe5D3K2jA7Y+LCtW/xg+8ehsQujVx+TEX6ZzqfdQ2Wv43StRwvLXSOLWqVYlyyLCIYVXCy
 Pz+4h6tJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7qy33fHGfz4wGzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl7Hu/WG2gsmyFVfmNbM1MO4T72Lk5JAQMJG483AWM4gtJLCUUeLbaleIuIzEyWkN
 rBC2sMSfa11sXYxcQDWfGCXmnzzPBpJgEzCU6HoLkRAR6GSUmNb9kR3EYRZ4xSTx4U8rI0iV
 sECAxKmni9hBbBYBVYlj9x+CreMVsJWYeXojM8QKeYnVGw6A2ZxA8Vd39rNAnJQvsXfxPrYJ
 jHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbKtmM/t+xg7HoXfIhRgINRiYfX4tbu
 OCHWxLLiytxDjBIczEoivH7rgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zjvJJ4Q1ND
 cwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjH0BfWWLqy9ld8vI7JfIepIU
 8utUXkTrNs30i5uT5y9Ie/Nk1o6Iaft5BHwjM6TcgjYdF7r40dRwW/fGRjc2lVz+rrZ3R39p
 JW2tvG9WF1jX96X9kVBaRrrYLC1G1TDXEq946xUCjPH83qVxX7w7n1om3A5V2sy0+aame7S6
 iPu1Z0WLV1gpsRRnJBpqMRcVJwIAGOX5WasCAAA=
X-CMS-MailID: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
X-Msg-Generator: CA
X-RootMTR: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133317eucas1p25446bcdce5220030c16477e1992385ff
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133317eucas1p25446bcdce5220030c16477e1992385ff@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 28/38] drm: host1x: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIHwgMjIgKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIGIvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jCmlu
ZGV4IGExMDY0M2EuLjQ4MzJiNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2Iu
YworKysgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKQEAgLTE2NiwxMSArMTY2LDkgQEAgc3Rh
dGljIHVuc2lnbmVkIGludCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0
MXhfam9iICpqb2IpCiAJCQkJZ290byB1bnBpbjsKIAkJCX0KIAotCQkJZXJyID0gZG1hX21hcF9z
ZyhkZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOwotCQkJaWYgKCFlcnIpIHsKLQkJCQll
cnIgPSAtRU5PTUVNOworCQkJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2d0LCBkaXIsIDAp
OworCQkJaWYgKGVycikKIAkJCQlnb3RvIHVucGluOwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tq
b2ItPm51bV91bnBpbnNdLmRldiA9IGRldjsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGlu
c10uZGlyID0gZGlyOwpAQCAtMjE3LDcgKzIxNSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGlu
X2pvYihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAK
IAkJaWYgKCFJU19FTkFCTEVEKENPTkZJR19URUdSQV9IT1NUMVhfRklSRVdBTEwpICYmIGhvc3Qt
PmRvbWFpbikgewotCQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQor
CQkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBqKQogCQkJCWdhdGhlcl9zaXplICs9IHNn
LT5sZW5ndGg7CiAJCQlnYXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24oJmhvc3QtPmlvdmEsIGdhdGhl
cl9zaXplKTsKIApAQCAtMjI5LDkgKzIyNyw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pv
YihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8g
dW5waW47CiAJCQl9CiAKLQkJCWVyciA9IGlvbW11X21hcF9zZyhob3N0LT5kb21haW4sCisJCQll
cnIgPSBpb21tdV9tYXBfc2d0YWJsZShob3N0LT5kb21haW4sCiAJCQkJCWlvdmFfZG1hX2FkZHIo
Jmhvc3QtPmlvdmEsIGFsbG9jKSwKLQkJCQkJc2d0LT5zZ2wsIHNndC0+bmVudHMsIElPTU1VX1JF
QUQpOworCQkJCQlzZ3QsIElPTU1VX1JFQUQpOwogCQkJaWYgKGVyciA9PSAwKSB7CiAJCQkJX19m
cmVlX2lvdmEoJmhvc3QtPmlvdmEsIGFsbG9jKTsKIAkJCQllcnIgPSAtRUlOVkFMOwpAQCAtMjQx
LDEyICsyMzksOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAq
aG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3Vu
cGluc10uc2l6ZSA9IGdhdGhlcl9zaXplOwogCQkJcGh5c19hZGRyID0gaW92YV9kbWFfYWRkcigm
aG9zdC0+aW92YSwgYWxsb2MpOwogCQl9IGVsc2UgaWYgKHNndCkgewotCQkJZXJyID0gZG1hX21h
cF9zZyhob3N0LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCQkgRE1BX1RPX0RFVklD
RSk7Ci0JCQlpZiAoIWVycikgewotCQkJCWVyciA9IC1FTk9NRU07CisJCQllcnIgPSBkbWFfbWFw
X3NndGFibGUoaG9zdC0+ZGV2LCBzZ3QsIERNQV9UT19ERVZJQ0UsIDApOworCQkJaWYgKGVycikK
IAkJCQlnb3RvIHVucGluOwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNd
LmRpciA9IERNQV9UT19ERVZJQ0U7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRl
diA9IGhvc3QtPmRldjsKQEAgLTY0Nyw4ICs2NDIsNyBAQCB2b2lkIGhvc3QxeF9qb2JfdW5waW4o
c3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJfQogCiAJCWlmICh1bnBpbi0+ZGV2ICYmIHNndCkK
LQkJCWRtYV91bm1hcF9zZyh1bnBpbi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkg
ICAgIHVucGluLT5kaXIpOworCQkJZG1hX3VubWFwX3NndGFibGUodW5waW4tPmRldiwgc2d0LCB1
bnBpbi0+ZGlyLCAwKTsKIAogCQlob3N0MXhfYm9fdW5waW4oZGV2LCB1bnBpbi0+Ym8sIHNndCk7
CiAJCWhvc3QxeF9ib19wdXQodW5waW4tPmJvKTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
