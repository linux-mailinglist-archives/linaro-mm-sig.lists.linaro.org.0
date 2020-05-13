Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD51D1702
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:06:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EF1965F8A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:06:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6F0EA65F8F; Wed, 13 May 2020 14:06:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A14566553;
	Wed, 13 May 2020 13:37:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C41F165F9F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B5CD265FA9; Wed, 13 May 2020 13:36:45 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 89D4865FA9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:24 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323euoutp02840762fa8b0c5e93b36fbcbcd9e4ecfd~Omcg9rsFy3216632166euoutp02V
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133323euoutp02840762fa8b0c5e93b36fbcbcd9e4ecfd~Omcg9rsFy3216632166euoutp02V
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eucas1p167560f10137968d51959b06f96d18508~OmcgqQDwP0384603846eucas1p1k;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 49.11.60679.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515~OmcgULNyA0785007850eucas1p1G;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eusmtrp12afaeda27ef00a9d1e53f0fb03dfb511~OmcgTZQiB1050710507eusmtrp1a;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-77-5ebbf723f197
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 77.2A.08375.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133322eusmtip15b0156e78861f281e5548f723b5c1813~OmcfiHzeD0693406934eusmtip1d;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:42 +0200
Message-Id: <20200513133245.6408-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH+/4e7n5uzn6dq/sOYzvVli2i/vhtqmVa/WqtefirRF35DeOO
 7hBt6nIeLypkhGSyeY4QcuMikbRLSITkqSGSeU6jOz/03+vz/nze38/DvgQq0OBmhJ8smJHL
 JAFiDg+rblnVHbJe1ngdfjRhRiXq2hBqpKgXpV6kl+HURnUSSnUvznKowuK3CJWjdaQWuocR
 qmK0B6e66rI4VGnzIJdK/biMUo2/x/CTfLokuwTQ9Us5GP0qY5BLJ0xH4XTN0necHrrXitCV
 eXfo/vVRlE7pzQe0pk/Joe9XFQF6vsLSxfgS75g3E+AXysjtTlzl+fbHWwSphGHK3DlcCb6R
 amBEQPIobCuoBGrAIwRkAYDlymiMDRYA7FTPIWwwD+CziSSwbRlOTeWyiXwAJz5koTuWns/F
 iKGKQ9pD9YyaY2AhGQ3gu0RjA6PkLwQ2z9sY2JQ8D7ti6jEDY+R+2KHJ3PTyyeOwu3YRY7tZ
 weLy16iBjfT61IB2cz5IvufCkfYGDlt0CmYsx6Esm8Kp1iouyxawPSVhy6ACcFhXymWDBAC7
 ItO3FnKEA7o/+pcI/XgHYVmdHSs7wRVNAWKQIWkCe2d2swuYwOTqNJSV+TAuRsBWH4AZrc93
 2jZ2dG6NQ8PBvuytA70BMDIrB38IrDL+N8sBoAiImBCF1IdROMiYm7YKiVQRIvOxvR4orQD6
 L9W+3rpQC+r+XmsCJAHExnzqq8ZLgEtCFeHSJgAJVCzkXyjTS3xvSfgtRh54RR4SwCiagDmB
 iUX8I7mTngLSRxLM+DNMECPfziKEkZkS7Bl1D2ux/ZEWafNTtld0zs/STXs2BZud1ob2Cevp
 M5gzL+y2W7yLr/dkedPQg8I1lcPq4yd55nLPiA0Rddp1fEM1cHdf0pez/mvODWGxLQ7uL5ko
 c1Xn5bFOr6he0tHiotDLNdOaZ1LjsZJmIooQPHW6ERj8ibIfLtPG7hpP9hBjCl+JvQ0qV0j+
 AZ22r+JOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7rK33fHGbxtZrboPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv43anTEGzSEXDoo+sDYz3BLoYOTkkBEwkHk6dyt7FyMUhJLCUUeL2wyvM
 EAkZiZPTGlghbGGJP9e62CCKPjFKtLafYwdJsAkYSnS9hUiICHQySkzr/gg2ilngG5PEpKW3
 2ECqhAV8JC637WUBsVkEVCUu7J7NBGLzCthKXNnxlQVihbzE6g0HwFZzAsVf3dkPFhcSyJfY
 u3gf2wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECo2bbsZ+bdzBe2hh8iFGAg1GJ
 h9fi1u44IdbEsuLK3EOMEhzMSiK8fuuBQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOi8
 knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M89T2LWmXyqwpTXhQ
 qdMzLX/tv2UFv7dERKhOt/iaw8FgdWRJituRJzkqE7ymC/5dzOB/4HHcGv7q+oZiN9/HZk+n
 Pk/L+c0e2nNNUu/Y/wKFwLhZ9/Lk3pzl4e35KWdeMynnHofXK8+dq+M5ePZoSpw/ca6y3SJR
 8leopMznuvzpx2axXCtUYinOSDTUYi4qTgQAssdja7ACAAA=
X-CMS-MailID: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
X-Msg-Generator: CA
X-RootMTR: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133323eucas1p1344fe42c8710f0ed84cf3c9fdb5ca515@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 35/38] rapidio: fix common struct
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
ZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYyB8IDggKysrLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYyBiL2RyaXZlcnMvcmFw
aWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMKaW5kZXggNDAyOTYzNy4uOTJkODc0MiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYworKysgYi9k
cml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCkBAIC01NzQsOCArNTc0LDcg
QEAgc3RhdGljIHZvaWQgZG1hX3JlcV9mcmVlKHN0cnVjdCBrcmVmICpyZWYpCiAJc3RydWN0IG1w
b3J0X2NkZXZfcHJpdiAqcHJpdiA9IHJlcS0+cHJpdjsKIAl1bnNpZ25lZCBpbnQgaTsKIAotCWRt
YV91bm1hcF9zZyhyZXEtPmRtYWNoLT5kZXZpY2UtPmRldiwKLQkJICAgICByZXEtPnNndC5zZ2ws
IHJlcS0+c2d0Lm5lbnRzLCByZXEtPmRpcik7CisJZG1hX3VubWFwX3NndGFibGUocmVxLT5kbWFj
aC0+ZGV2aWNlLT5kZXYsIHJlcS0+c2d0LCByZXEtPmRpciwgMCk7CiAJc2dfZnJlZV90YWJsZSgm
cmVxLT5zZ3QpOwogCWlmIChyZXEtPnBhZ2VfbGlzdCkgewogCQlmb3IgKGkgPSAwOyBpIDwgcmVx
LT5ucl9wYWdlczsgaSsrKQpAQCAtOTI3LDkgKzkyNiw4IEBAIHN0YXRpYyBpbnQgZG9fZG1hX3Jl
cXVlc3Qoc3RydWN0IG1wb3J0X2RtYV9yZXEgKnJlcSwKIAkJCQl4ZmVyLT5vZmZzZXQsIHhmZXIt
Pmxlbmd0aCk7CiAJfQogCi0JbmVudHMgPSBkbWFfbWFwX3NnKGNoYW4tPmRldmljZS0+ZGV2LAot
CQkJICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNndC5uZW50cywgZGlyKTsKLQlpZiAobmVudHMgPT0g
MCkgeworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShjaGFuLT5kZXZpY2UtPmRldiwgcmVxLT5zZ3Qs
IGRpciwgMCk7CisJaWYgKHJldCkgewogCQlybWNkX2Vycm9yKCJGYWlsZWQgdG8gbWFwIFNHIGxp
c3QiKTsKIAkJcmV0ID0gLUVGQVVMVDsKIAkJZ290byBlcnJfcGc7Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
