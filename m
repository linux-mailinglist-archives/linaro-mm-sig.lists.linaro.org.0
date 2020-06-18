Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA421FF800
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:51:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D7C06653E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:51:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5BF7366572; Thu, 18 Jun 2020 15:51:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD6E2665E9;
	Thu, 18 Jun 2020 15:41:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F174866592
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E25DC665AB; Thu, 18 Jun 2020 15:40:33 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 546C566592
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:22 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154021euoutp021c6fec9a16a54eab6b12c4ad8c75a7cd~ZrZpSvj9I1354913549euoutp02u
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154021euoutp021c6fec9a16a54eab6b12c4ad8c75a7cd~ZrZpSvj9I1354913549euoutp02u
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154021eucas1p24f39a100f171d5d25c5ee8d07d8d9418~ZrZo_MlaL2924929249eucas1p2D;
 Thu, 18 Jun 2020 15:40:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E1.1F.61286.5EA8BEE5; Thu, 18
 Jun 2020 16:40:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c~ZrZonBZyE2977729777eucas1p2D;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eusmtrp26d0f44624adb3f9ba83ef666d47b06f2~ZrZomaX4t0399203992eusmtrp2W;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-c8-5eeb8ae51fa0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B7.EE.08375.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eusmtip171024e854b53111fcce79a4f25a51737~ZrZn8u3lF0744107441eusmtip1y;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:31 +0200
Message-Id: <20200618153956.29558-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c7Z2Y6XxWmafixJGiSUeE3hhCUmIuefQDIwAi8zTyrpJjtq
 GpSiGDovZJm3TEdI5mWbN2YqTl3pDHHaFDXTvBVhYlpeQgNtp6P23+97n/d5n5eXD0dF7ZgY
 j5cl0wqZNEHCt+bpBndH3b4qVyM8l5qtyELTe4RsKddi5IGuGCUnttf5ZH3jAEKqev3IzepW
 Prk1sYiQrcuTGDneVcUn1e/mBGT/xheM3FBvIwFCqqm6CVA9Oyoe1Vk5J6A6dhYwaj7fiFBt
 tRnUp/1llHo6XQeo7o+ZfKqovQFQm61nQmxuWV+OoRPiU2mFh3+UdVzftwOQ9Fmctm64kQmq
 HZTACoeED/wwlcdTAmtcRLwGsKVqFmMFEbEFoL4+nhM2AdzfKwJHjr69PQEn1AHYpq8XHDvy
 Rq+xzCe8oHJNyWfZnsgBcKjQljWgxDgCawayeKxgR4TABa0BYZlHnIPdJv2/aCHhD7M0pRiX
 5gwbm/tQlq0s9WFjDsYOgoReAItMWgHXFAQ1k+bD9ezgd2P7Yd0JHnTWIJwhG8BFk1rAPQoA
 HM8qP3T4wVnTnmVX3LLfeajt8mAREldh9poXhyfg9NpJthm14BNdGcqVhTD3kYib4QIrjZrj
 1P4xM8oxBXd+zmDcsYoBLO8rRx8D58r/WSoAGoAjncIkxtKMl4y+585IE5kUWaz7bXliK7D8
 peF94683YNscbQAEDiS2woCw1QgRJk1l0hMNAOKoxF4YODIcIRLGSNPv0wp5pCIlgWYM4DTO
 kzgKL75cCRcRsdJk+i5NJ9GKIxXBrcSZoHHqiuelukEHeVf07+mcah6tzY0vDvft3akzE+Nh
 HeDOVBm5EhksTlOJSyvzU8eY0Iie+bY/jbXGghmdPnO35Pq6MqgiMAoZan+FSm7uFp8Fg8G7
 Tipfh4KHuldyl1MVz0LVNqqMkn3Xtz6y5z+8FQ/cvJtLXUcWNUstzNwLCY+Jk3pdQBWM9C8J
 2LnwRwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7pPul7HGaw+YWDRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PA8/+MBfekKt4fCmlgnCfWxcjJISFgInHg1y/2LkYuDiGBpYwS/+f/YYFIyEic
 nNbACmELS/y51sUGUfSJUaLtzn1mkASbgKFE11uIhIhAJ6PEtO6PYKOYBW4zSZyZOwGsSljA
 T+LyhB1gNouAqsTuc/vAxvIK2Ek0rZsGtUJeYvWGA2A1nEDx08dbweJCArYSzz+0sU1g5FvA
 yLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMFa2Hfu5eQfjpY3BhxgFOBiVeHhfhLyOE2JN
 LCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wPjOK8k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2Ol0V+BnQV3OrQXPzj2UYtL5IYE
 zyU5w6/+vWp5ipUpUmfybNOObTcRLGc8eKOU/X+ep0vKQ6aPMWxhuxc5tBpNKZrYHvHLT/eR
 yIXj8hO/qR80LXXr9Ha59KTJTr65WERk/4FEq5L4H+/cPh2YtsW6+OPdk+Ep3YuW8LV4t19b
 kSZwg/vQGSWW4oxEQy3mouJEAHJLSFCrAgAA
X-CMS-MailID: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
X-Msg-Generator: CA
X-RootMTR: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154020eucas1p2d823db666c8706f63ed352fee3c3c90c@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 10/36] drm: lima: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFFpYW5nIFl1IDx5dXE4MjVA
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgfCAxMSArKysr
KysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV92bS5jICB8ICA1ICsrLS0tCiAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1h
L2xpbWFfZ2VtLmMKaW5kZXggMTU1ZjJiNGI0MDMwLi4xMTIyM2ZlMzQ4ZGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xp
bWEvbGltYV9nZW0uYwpAQCAtNjksOCArNjksNyBAQCBpbnQgbGltYV9oZWFwX2FsbG9jKHN0cnVj
dCBsaW1hX2JvICpibywgc3RydWN0IGxpbWFfdm0gKnZtKQogCQlyZXR1cm4gcmV0OwogCiAJaWYg
KGJvLT5iYXNlLnNndCkgewotCQlkbWFfdW5tYXBfc2coZGV2LCBiby0+YmFzZS5zZ3QtPnNnbCwK
LQkJCSAgICAgYm8tPmJhc2Uuc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFf
dW5tYXBfc2d0YWJsZShkZXYsIGJvLT5iYXNlLnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwog
CQlzZ19mcmVlX3RhYmxlKGJvLT5iYXNlLnNndCk7CiAJfSBlbHNlIHsKIAkJYm8tPmJhc2Uuc2d0
ID0ga21hbGxvYyhzaXplb2YoKmJvLT5iYXNlLnNndCksIEdGUF9LRVJORUwpOwpAQCAtODAsNyAr
NzksMTMgQEAgaW50IGxpbWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBs
aW1hX3ZtICp2bSkKIAkJfQogCX0KIAotCWRtYV9tYXBfc2coZGV2LCBzZ3Quc2dsLCBzZ3QubmVu
dHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCAmc2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkgeworCQlzZ19mcmVlX3RhYmxlKCZz
Z3QpOworCQlrZnJlZShiby0+YmFzZS5zZ3QpOworCQliby0+YmFzZS5zZ3QgPSBOVUxMOworCQly
ZXR1cm4gcmV0OworCX0KIAogCSpiby0+YmFzZS5zZ3QgPSBzZ3Q7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwppbmRleCA1YjkyZmI4MjY3NGEuLjJiMjczOWFkYzdmNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2xpbWEvbGltYV92bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwpAQCAtMTI0LDcgKzEyNCw3IEBAIGludCBsaW1hX3ZtX2JvX2FkZChzdHJ1Y3QgbGltYV92
bSAqdm0sIHN0cnVjdCBsaW1hX2JvICpibywgYm9vbCBjcmVhdGUpCiAJaWYgKGVycikKIAkJZ290
byBlcnJfb3V0MTsKIAotCWZvcl9lYWNoX3NnX2RtYV9wYWdlKGJvLT5iYXNlLnNndC0+c2dsLCAm
c2dfaXRlciwgYm8tPmJhc2Uuc2d0LT5uZW50cywgMCkgeworCWZvcl9lYWNoX3NndGFibGVfZG1h
X3BhZ2UoYm8tPmJhc2Uuc2d0LCAmc2dfaXRlciwgMCkgewogCQllcnIgPSBsaW1hX3ZtX21hcF9w
YWdlKHZtLCBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJnNnX2l0ZXIpLAogCQkJCSAgICAgICBi
b192YS0+bm9kZS5zdGFydCArIG9mZnNldCk7CiAJCWlmIChlcnIpCkBAIC0yOTgsOCArMjk4LDcg
QEAgaW50IGxpbWFfdm1fbWFwX2JvKHN0cnVjdCBsaW1hX3ZtICp2bSwgc3RydWN0IGxpbWFfYm8g
KmJvLCBpbnQgcGFnZW9mZikKIAltdXRleF9sb2NrKCZ2bS0+bG9jayk7CiAKIAliYXNlID0gYm9f
dmEtPm5vZGUuc3RhcnQgKyAocGFnZW9mZiA8PCBQQUdFX1NISUZUKTsKLQlmb3JfZWFjaF9zZ19k
bWFfcGFnZShiby0+YmFzZS5zZ3QtPnNnbCwgJnNnX2l0ZXIsCi0JCQkgICAgIGJvLT5iYXNlLnNn
dC0+bmVudHMsIHBhZ2VvZmYpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdlKGJvLT5iYXNl
LnNndCwgJnNnX2l0ZXIsIHBhZ2VvZmYpIHsKIAkJZXJyID0gbGltYV92bV9tYXBfcGFnZSh2bSwg
c2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZzZ19pdGVyKSwKIAkJCQkgICAgICAgYmFzZSArIG9m
ZnNldCk7CiAJCWlmIChlcnIpCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
