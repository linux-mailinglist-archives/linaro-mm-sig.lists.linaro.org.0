Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A674A25DA17
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:39:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7BC566785
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:39:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B82D7667A9; Fri,  4 Sep 2020 13:39:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAED266754;
	Fri,  4 Sep 2020 13:35:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8DB28665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7972C66749; Fri,  4 Sep 2020 13:35:04 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6159E665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:57 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133456euoutp02a9bf104f338a49a7db5401662cd9bf7b~xmAaPUfrr2890028900euoutp02X
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133456euoutp02a9bf104f338a49a7db5401662cd9bf7b~xmAaPUfrr2890028900euoutp02X
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133456eucas1p2fbc872f80f827d0b254fd7920b6a3bd8~xmAZ2NAux0694006940eucas1p2X;
 Fri,  4 Sep 2020 13:34:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B0.39.06318.082425F5; Fri,  4
 Sep 2020 14:34:56 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133455eucas1p24020a2d7f03e20199f08cfb944782d34~xmAZYsz3C1447714477eucas1p2M;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133455eusmtrp24f1d9e3543e5ea32b53b54afd5781212~xmAZYBgWL0905809058eusmtrp2V;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-87-5f524280de64
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2D.90.06017.F72425F5; Fri,  4
 Sep 2020 14:34:55 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133455eusmtip18c0a30f774a199f3cb8cbe61d5ad3f8b~xmAY2pwpD1941819418eusmtip1F;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:45 +0200
Message-Id: <20200904131711.12950-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djPc7oNTkHxBi2T2Sx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWRyaupfRYu2Ru+wWBz88YXXg
 8Vgzbw2jx+VrF5k99n5bwOKx/dsDVo/73ceZPDYvqfe4/e8xs8fkG8sZPXbfbGDz6NuyitHj
 8ya5AO4oLpuU1JzMstQifbsEroxdXc4F32UqHt1cytTAeEG8i5GTQ0LAROLMzBNsXYwcHEIC
 Kxglvgt0MXIBmV8YJWZ1TWaGcD4zSpx7N5cRpuH9s1dMEInljBLLrrexw7W86HrHBlLFJmAo
 0fW2C8wWEWhllDjRywNSxCxwgEmi7d1rJpCEsECwxIyjc8DGsgioSrxsfAMW5xWwleiZOIUN
 Yp28xOoNB5hBbE4BO4mtM56wggySENjHLjF17xeoIheJJa8WQ90nLPHq+BZ2CFtG4v/O+UwQ
 Dc2MEg/PrWWHcHoYJS43zYDqsJa4c+4XOAiYBTQl1u/Shwg7SizvXsYKEpYQ4JO48VYQJMwM
 ZE7aNp0ZIswr0dEmBFGtJjHr+Dq4tQcvXGKGsD0kZj14xggJoYmMElu/HGCawCg/C2HZAkbG
 VYziqaXFuempxcZ5qeV6xYm5xaV56XrJ+bmbGIHp6PS/4193MO77k3SIUYCDUYmHl8E+KF6I
 NbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxilOViUxHmNF72MFRJITyxJzU5N
 LUgtgskycXBKNTCaF1dzWjm+X2GbP+937bXCSi2l00Iv27R996c8Xb1hamWck/vcpB9BodV+
 5Q0hRV5fTm+K47Ba/fvm/HPlq+bdXi4cGTtrS528FdeTl1+3/n/NeEupQ8tAfIp85G3nt4u5
 NPbs/t8kaabn52GpK2o/1+FXXfTrzIVCF0yMrU5bvP+0W2TedWUlluKMREMt5qLiRAA4FaYH
 QwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7r1TkHxBusualj0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszg0dS+jxdojd9ktDn54wurA
 47Fm3hpGj8vXLjJ77P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehm7upwLvstUPLq5lKmB8YJ4FyMnh4SAicT7Z6+Yuhi5OIQEljJK9E26zQ6RkJE4Oa2BFcIW
 lvhzrYsNougTo0TvlIPMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFjTBILf31kAakSFgiUmPT2
 KthYFgFViZeNb5hAbF4BW4meiVPYIFbIS6zecABsKqeAncTWGU/AVgsB1XyYs5hlAiPfAkaG
 VYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIERsu3Yzy07GLveBR9iFOBgVOLhZbAPihdiTSwr
 rsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucDozevJN7Q1NDcwtLQ
 3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAPjnG3Sl061i9TJz7MQlmDKFfy2w6vq
 d6Bb4qyzycue7F/E+UZmW559XVDDq2aVCY1xr18Yqy9f6x6pK3o8/+wu9z2+iZzF7g5fImrP
 iHId2SoeEba0JsVeZfOvu88PtH1XnVL5983OqIA3mktZMht2hy3P+l5VmGwlX8wVsMLu9twZ
 3HIZMy2VWIozEg21mIuKEwGA83SFpgIAAA==
X-CMS-MailID: 20200904133455eucas1p24020a2d7f03e20199f08cfb944782d34
X-Msg-Generator: CA
X-RootMTR: 20200904133455eucas1p24020a2d7f03e20199f08cfb944782d34
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133455eucas1p24020a2d7f03e20199f08cfb944782d34
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133455eucas1p24020a2d7f03e20199f08cfb944782d34@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 04/30] drm: armada: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2Fy
bWFkYV9nZW0uYyB8IDI0ICsrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1h
ZGFfZ2VtLmMKaW5kZXggODAwNTYxNGQyZTZiLi5hNjMwMDhjZTI4NGQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
cm1hZGEvYXJtYWRhX2dlbS5jCkBAIC0zNzksNyArMzc5LDcgQEAgYXJtYWRhX2dlbV9wcmltZV9t
YXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJc3RydWN0IGFy
bWFkYV9nZW1fb2JqZWN0ICpkb2JqID0gZHJtX3RvX2FybWFkYV9nZW0ob2JqKTsKIAlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnOwogCXN0cnVjdCBzZ190YWJsZSAqc2d0OwotCWludCBpLCBudW07CisJ
aW50IGk7CiAKIAlzZ3QgPSBrbWFsbG9jKHNpemVvZigqc2d0KSwgR0ZQX0tFUk5FTCk7CiAJaWYg
KCFzZ3QpCkBAIC0zOTUsMjIgKzM5NSwxOCBAQCBhcm1hZGFfZ2VtX3ByaW1lX21hcF9kbWFfYnVm
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAogCQltYXBwaW5nID0gZG9iai0+
b2JqLmZpbHAtPmZfbWFwcGluZzsKIAotCQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIGNvdW50
LCBpKSB7CisJCWZvcl9lYWNoX3NndGFibGVfc2coc2d0LCBzZywgaSkgewogCQkJc3RydWN0IHBh
Z2UgKnBhZ2U7CiAKIAkJCXBhZ2UgPSBzaG1lbV9yZWFkX21hcHBpbmdfcGFnZShtYXBwaW5nLCBp
KTsKLQkJCWlmIChJU19FUlIocGFnZSkpIHsKLQkJCQludW0gPSBpOworCQkJaWYgKElTX0VSUihw
YWdlKSkKIAkJCQlnb3RvIHJlbGVhc2U7Ci0JCQl9CiAKIAkJCXNnX3NldF9wYWdlKHNnLCBwYWdl
LCBQQUdFX1NJWkUsIDApOwogCQl9CiAKLQkJaWYgKGRtYV9tYXBfc2coYXR0YWNoLT5kZXYsIHNn
dC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDApIHsKLQkJCW51bSA9IHNndC0+bmVudHM7CisJ
CWlmIChkbWFfbWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKIAkJCWdvdG8g
cmVsZWFzZTsKLQkJfQogCX0gZWxzZSBpZiAoZG9iai0+cGFnZSkgewogCQkvKiBTaW5nbGUgY29u
dGlndW91cyBwYWdlICovCiAJCWlmIChzZ19hbGxvY190YWJsZShzZ3QsIDEsIEdGUF9LRVJORUwp
KQpAQCAtNDE4LDcgKzQxNCw3IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCiAJCXNnX3NldF9wYWdlKHNndC0+c2dsLCBk
b2JqLT5wYWdlLCBkb2JqLT5vYmouc2l6ZSwgMCk7CiAKLQkJaWYgKGRtYV9tYXBfc2coYXR0YWNo
LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDApCisJCWlmIChkbWFfbWFwX3Nn
dGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKIAkJCWdvdG8gZnJlZV90YWJsZTsKIAl9
IGVsc2UgaWYgKGRvYmotPmxpbmVhcikgewogCQkvKiBTaW5nbGUgY29udGlndW91cyBwaHlzaWNh
bCByZWdpb24gLSBubyBzdHJ1Y3QgcGFnZSAqLwpAQCAtNDMyLDggKzQyOCw5IEBAIGFybWFkYV9n
ZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAog
CXJldHVybiBzZ3Q7CiAKICByZWxlYXNlOgotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgbnVt
LCBpKQotCQlwdXRfcGFnZShzZ19wYWdlKHNnKSk7CisJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3Qs
IHNnLCBpKQorCQlpZiAoc2dfcGFnZShzZykpCisJCQlwdXRfcGFnZShzZ19wYWdlKHNnKSk7CiAg
ZnJlZV90YWJsZToKIAlzZ19mcmVlX3RhYmxlKHNndCk7CiAgZnJlZV9zZ3Q6CkBAIC00NDksMTEg
KzQ0NiwxMiBAQCBzdGF0aWMgdm9pZCBhcm1hZGFfZ2VtX3ByaW1lX3VubWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCWludCBpOwogCiAJaWYgKCFkb2JqLT5s
aW5lYXIpCi0JCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMs
IGRpcik7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwgMCk7CiAK
IAlpZiAoZG9iai0+b2JqLmZpbHApIHsKIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKLQkJZm9y
X2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBpKQorCisJCWZvcl9lYWNoX3NndGFi
bGVfc2coc2d0LCBzZywgaSkKIAkJCXB1dF9wYWdlKHNnX3BhZ2Uoc2cpKTsKIAl9CiAKLS0gCjIu
MTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
