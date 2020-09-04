Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E625DAE4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 16:04:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B91206677F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 14:04:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A4B0866786; Fri,  4 Sep 2020 14:04:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 525F4667A5;
	Fri,  4 Sep 2020 13:38:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 75B5D60DC1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67D2666750; Fri,  4 Sep 2020 13:36:31 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id EB71566751
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133511euoutp014f9a6c80c34e9ffbf77d200bde2c44f7~xmAn1ubTj0722007220euoutp013
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133511euoutp014f9a6c80c34e9ffbf77d200bde2c44f7~xmAn1ubTj0722007220euoutp013
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133510eucas1p28cb3ab11e0cd8252df9971f2b6538bb0~xmAnisOUN0694006940eucas1p2r;
 Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E1.76.05997.E82425F5; Fri,  4
 Sep 2020 14:35:10 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133510eucas1p1e737f5cbb9b95846806766bd7b813bf9~xmAnJ01ij1156611566eucas1p1N;
 Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133510eusmtrp211be072e4bd9dc8f560679e64325523b~xmAnJLXC90977009770eusmtrp2Z;
 Fri,  4 Sep 2020 13:35:10 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-7e-5f52428e5c8e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 43.B0.06017.E82425F5; Fri,  4
 Sep 2020 14:35:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133509eusmtip126e2d5705c6ff916666e9063e629bd26~xmAmkb-_D1683216832eusmtip1Z;
 Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:08 +0200
Message-Id: <20200904131711.12950-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzu3Lu7XYeT25Q8WSoMeqj4jrygaKnQJXuY/wRF2sqbim7aro+U
 KMtezAdTCZ/ZCsXynelMw9Tlq8wVKmrp0qUJxkzJpRTl2rqz/vvO7/u+833nx8FRYQfmgMdJ
 k2mZVJwg4vI5qv4fGve84IgoL32BL5mreYWQn2omUfJJcSNGGlX5KDn2fZlLPq7tQ0hllz9p
 GNMhZPPcOEaOdpRzyfpeLY+8+3YdJXtW5rEDAqquog5QnWtKDtVequVROfobGNW2NotRM9kD
 CPW08io1tTGHUoWT1YB6/j6TS+W11ABqtdkp3PoUPyCaTohLpWWegWf5sYXGeiwpb9ulaxNa
 LBNUCeXACofEPmjIyubIAR8XEo8A1JZNIWZCSBgA1H0DLLEK4OfBbnTTcS9nGGWJagDfdI1a
 VCbHeJOCY1ZxCW8oX5JzzdiOuAngYK61GaPEVwT2rrqasS1xHFYVT/29lUPsgtmLLBYQgbCh
 fILDpjnD2iY22co0by2ex8xhkHjNgz1dGoQVhULj7TxLPVv4ZaCFx+Kd0Nh+H2ENWab3aOp5
 7CEHwNHrxYBV+cNpzU9TVdxUzwU2dniaISQOQkX/BRbawMmlrWx/G1igKkLZsQDeuWVZ425Y
 OtDwL7Xn3YilDQX1fTrLfvIBrPy9gCqAc+n/LCUANcCeTmEkMTTjI6XTPBixhEmRxnicT5Q0
 A9OPGtoYMDwDHb/OqQGBA5G1YEtQRJQQE6cy6RI1gDgqshMEDw9FCgXR4vQMWpYYJUtJoBk1
 2IFzRPYC34eLZ4REjDiZjqfpJFq2ySK4lUMmcIt0CKc8/S8eHhpacWpTrAU06FXLM15Gbgnj
 ta5zWrm8vTWkKEP1QX2yCwkcmQ4NKxKUfIxGlNnGHFWYW4ALGeEuda6O1ce3V/A6y2Tdjmn9
 I/sXrhT6yMsUubl7ZtP8SpQ2R4IcrblK/d6llpd+h1wqTzwI6Tn2ou7o6UZ1p4jDxIq9XVEZ
 I/4DUX+Zmk0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7p9TkHxBqvmSFn0njvJZPFo1Q1m
 i40z1rNa/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxdojd9ktpp7/zmxx
 8MMTVgdejzXz1jB67P22gMVj56y77B49b1pYPbZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH
 7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
 k5Kak1mWWqRvl6CXMfn/WtaCPrGKxut3WRsYlwp1MXJySAiYSMztOcvcxcjFISSwlFHiWNdp
 FoiEjMTJaQ2sELawxJ9rXWwQRZ8YJSZdXQtWxCZgKNH1FiIhItDJKDGt+yM7iMMs8I1JYtLS
 W2wgVcICvhI7vneBjWIRUJXofnmbGcTmFbCTWDfnOtQ6eYnVGw6AxTmB4ltnPAGrFxKwlfgw
 ZzHLBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQLjZtuxn1t2MHa9Cz7EKMDBqMTD
 y2AfFC/EmlhWXJl7iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4HxnRe
 SbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGtujVfkKbjgZeeiWg
 PyF3wYfOSXzNXFEzbcSEu1ziz8Q7XBbmYG2wdEryFSp99PCXxPpP3isyX/Hfcb4q7djrW3Jy
 8YKU5R5FJguan6Zz/Vh7S2CeudDOU/t1N3BVuV6dEPgv8Ju88x6m6QtDT3XZRa6dN/v8Dsbt
 DjUOiR3uDltXbyg6pZuqxFKckWioxVxUnAgABjvtbLECAAA=
X-CMS-MailID: 20200904133510eucas1p1e737f5cbb9b95846806766bd7b813bf9
X-Msg-Generator: CA
X-RootMTR: 20200904133510eucas1p1e737f5cbb9b95846806766bd7b813bf9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133510eucas1p1e737f5cbb9b95846806766bd7b813bf9
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133510eucas1p1e737f5cbb9b95846806766bd7b813bf9@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 27/30] rapidio: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+Ci0tLQogZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0
X2NkZXYuYyB8IDExICsrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jp
b19tcG9ydF9jZGV2LmMgYi9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5j
CmluZGV4IGEzMDM0Mjk0MmUyNi4uODllYjNkMjEyNjUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Jh
cGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCisrKyBiL2RyaXZlcnMvcmFwaWRpby9kZXZp
Y2VzL3Jpb19tcG9ydF9jZGV2LmMKQEAgLTU3Myw4ICs1NzMsNyBAQCBzdGF0aWMgdm9pZCBkbWFf
cmVxX2ZyZWUoc3RydWN0IGtyZWYgKnJlZikKIAkJCXJlZmNvdW50KTsKIAlzdHJ1Y3QgbXBvcnRf
Y2Rldl9wcml2ICpwcml2ID0gcmVxLT5wcml2OwogCi0JZG1hX3VubWFwX3NnKHJlcS0+ZG1hY2gt
PmRldmljZS0+ZGV2LAotCQkgICAgIHJlcS0+c2d0LnNnbCwgcmVxLT5zZ3QubmVudHMsIHJlcS0+
ZGlyKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShyZXEtPmRtYWNoLT5kZXZpY2UtPmRldiwgJnJlcS0+
c2d0LCByZXEtPmRpciwgMCk7CiAJc2dfZnJlZV90YWJsZSgmcmVxLT5zZ3QpOwogCWlmIChyZXEt
PnBhZ2VfbGlzdCkgewogCQl1bnBpbl91c2VyX3BhZ2VzKHJlcS0+cGFnZV9saXN0LCByZXEtPm5y
X3BhZ2VzKTsKQEAgLTgxNCw3ICs4MTMsNiBAQCByaW9fZG1hX3RyYW5zZmVyKHN0cnVjdCBmaWxl
ICpmaWxwLCB1MzIgdHJhbnNmZXJfbW9kZSwKIAlzdHJ1Y3QgbXBvcnRfZGV2ICptZCA9IHByaXYt
Pm1kOwogCXN0cnVjdCBkbWFfY2hhbiAqY2hhbjsKIAlpbnQgcmV0OwotCWludCBuZW50czsKIAog
CWlmICh4ZmVyLT5sZW5ndGggPT0gMCkKIAkJcmV0dXJuIC1FSU5WQUw7CkBAIC05MzAsMTUgKzky
OCwxNCBAQCByaW9fZG1hX3RyYW5zZmVyKHN0cnVjdCBmaWxlICpmaWxwLCB1MzIgdHJhbnNmZXJf
bW9kZSwKIAkJCQl4ZmVyLT5vZmZzZXQsIHhmZXItPmxlbmd0aCk7CiAJfQogCi0JbmVudHMgPSBk
bWFfbWFwX3NnKGNoYW4tPmRldmljZS0+ZGV2LAotCQkJICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNn
dC5uZW50cywgZGlyKTsKLQlpZiAobmVudHMgPT0gMCkgeworCXJldCA9IGRtYV9tYXBfc2d0YWJs
ZShjaGFuLT5kZXZpY2UtPmRldiwgJnJlcS0+c2d0LCBkaXIsIDApOworCWlmIChyZXQpIHsKIAkJ
cm1jZF9lcnJvcigiRmFpbGVkIHRvIG1hcCBTRyBsaXN0Iik7CiAJCXJldCA9IC1FRkFVTFQ7CiAJ
CWdvdG8gZXJyX3BnOwogCX0KIAotCXJldCA9IGRvX2RtYV9yZXF1ZXN0KHJlcSwgeGZlciwgc3lu
YywgbmVudHMpOworCXJldCA9IGRvX2RtYV9yZXF1ZXN0KHJlcSwgeGZlciwgc3luYywgcmVxLT5z
Z3QubmVudHMpOwogCiAJaWYgKHJldCA+PSAwKSB7CiAJCWlmIChzeW5jID09IFJJT19UUkFOU0ZF
Ul9BU1lOQykKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
