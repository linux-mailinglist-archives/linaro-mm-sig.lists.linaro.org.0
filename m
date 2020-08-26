Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD32252797
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:43:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D215B617DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:43:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C4830619B1; Wed, 26 Aug 2020 06:43:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 304EE666C2;
	Wed, 26 Aug 2020 06:36:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E06D617DE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6F122619B7; Wed, 26 Aug 2020 06:35:41 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 0EE3A617DE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:34 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063533euoutp02cb83a30b025de4c86b4e06491c14c6d9~uveqpcbSH1511215112euoutp02L
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063533euoutp02cb83a30b025de4c86b4e06491c14c6d9~uveqpcbSH1511215112euoutp02L
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063532eucas1p19599f3f76a90b38968292c91fdd010a2~uveqGviFR1480714807eucas1p1R;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 74.AD.05997.4B2064F5; Wed, 26
 Aug 2020 07:35:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0~uvep1PGWJ1927919279eucas1p28;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063532eusmtrp224e4f6d526159f7efce29882b84f4645~uvep0ik9A0466204662eusmtrp2F;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-c3-5f4602b4b8d4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AF.43.06017.4B2064F5; Wed, 26
 Aug 2020 07:35:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063531eusmtip23e0bc3de6df1e0ce7711e0325ad7623a~uvepOdmJC0091500915eusmtip2H;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:52 +0200
Message-Id: <20200826063316.23486-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUURzHeTM7s6O4Oq6CL5XEJQMtNStowpSUkumPSoOITtty8D7YVUtF
 Mstr1TwqErV103LNXdPUzCOvTVvFtE1tUbLDI2gLM/AgO7QdR+u/z+/7/X3f9/F4BCp8jtkS
 oVGxjCRKHCHCTXlNL5ZfuTYifoE75GXbqNyhfoR6XFSLUatNBSg1ujiHUw9VvQhVkt+AUIpO
 T0o5Uguo9nsItTA6iVD103qMGmktxamannd8qvv7DEZ1Fuv5+y1otVwN6PYlBY+ueGZA6KdL
 HzFa3h9Af8jWInTD/Sv025VplL45pgR023gKTt9orAb0fP1mf7NTpvuCmIjQeEbi7n3eNERV
 fZcXo7C/XDa6JQVobWTAhIDkbvgrMxWTAVNCSFYB2Kv6yuOGBQCLMjoQbpgHcDq9EtuILOpq
 Uc5QAjizWoqwxlpkfNCcZZz0gLJZGc6yNZkGYF+uGRtAyR4UDiv0gDWsSH/4Y6xijXmkE5zK
 r15rEJBe8LNeyePaHKCqrgtl2YT0htrsPJw9CJJ6PtQ+SMO5pQNwpjAXcGwFv2gb+Rzbw9WW
 MoQLXANwcqiGzw05AI6kFq0nPOHE0E/jSYTxfs6wttWdk31gje46xsqQNIdjs5asjBqxsOkO
 yskCmJku5La3wmLto3+13bphlGMajs7lrL9pgbH1UyaaDxyK/5cpAKgGNkycNDKYke6MYi65
 ScWR0rioYLeL0ZH1wPi1Bla0C82g9fcFDSAJIDITKPCDgUJMHC9NiNQASKAia4Hv4MA5oSBI
 nJDISKIDJXERjFQD7AieyEawq9xwVkgGi2OZcIaJYSQbLkKY2KaAMNliZZKsy74vQxU0MZ6o
 tFTEZbdV2XvPi6wD2t4IhMSt4+LXrpO67X7HniQGZJafyMlKnlZX+pxOLjqjntpkcDQ5YoHm
 ufScTDd0OP8JV9odPXy1JGgw392RTPJzcqDkHV51mqxDez3eh83q7ErMbit9Ndrmby/b9jRa
 O0uWW0Q8aYjYwwWVSMV/AXf9lk1WAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7pbmNziDa4flrToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSxmT9jMZLFgv7XF8svrGS32LmSy+HLlIZPFpsfXWC0u75rDZrH2
 yF12i4MfnrBa7J91jd2B32PNvDWMHnu/LWDxWLznJZPH9m8PWD3mnQz0uN99nMlj85J6j9v/
 HjN7TL6xnNFj980GNo++LasYPT5vkgvgidKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0
 No+1MjJV0rezSUnNySxLLdK3S9DLWL1qLkvBApmK+VdUGhiPi3cxcnJICJhIfL2wnhnEFhJY
 yigx/3gwRFxG4uS0BlYIW1jiz7Uuti5GLqCaT4wSD45cZAJJsAkYSnS9hUiICHQySkzr/sgO
 kmAWOMMs8XuDdxcjB4ewgJ/E115dkDCLgKrEowmrwIbyCthKvLi2nAVigbzE6g0HwI7gFLCT
 ON7dzwZxkK3E6bUzmCcw8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGD/bjv3csoOx
 613wIUYBDkYlHt4FbK7xQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EaAp0
 1ERmKdHkfGBs55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYLzy
 tpxdIrv678HNR059CnxmLlCpLfdOfbFzmYVIe8WNpY9v2RzgDRIXF3GdbPaIf45B13wr9ymt
 b8Luzt280kxBc3riycP3CldzHFBgfbM+h5FV8ZfKnXlLy3iLEn2Z3i4QWSKcqNK575qAfWPt
 25I5vF905+00NI21yg6TcM6vrtzUGK4YosRSnJFoqMVcVJwIAMZZ58e1AgAA
X-CMS-MailID: 20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0
X-Msg-Generator: CA
X-RootMTR: 20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 08/32] drm: i915: fix common struct
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
dW5jdGlvbi4KClRoaXMgZHJpdmVyIGNyZWF0aXZlbHkgdXNlcyBzZ190YWJsZS0+b3JpZ19uZW50
cyB0byBzdG9yZSB0aGUgc2l6ZSBvZiB0aGUKYWxsb2NhdGVkIHNjYXR0ZXJsaXN0IGFuZCBpZ25v
cmVzIHRoZSBudW1iZXIgb2YgdGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKZG1hX21hcF9zZyBmdW5j
dGlvbi4gVGhlIHNnX3RhYmxlLT5vcmlnX25lbnRzIGlzIChtaXMpdXNlZCB0byBwcm9wZXJseQpm
cmVlIHRoZSAob3ZlcilhbGxvY2F0ZWQgc2NhdHRlcmxpc3QuCgpUaGlzIHBhdGNoIG9ubHkgaW50
cm9kdWNlcyB0aGUgY29tbW9uIERNQS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGluZwpkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgdG8gdGhlIGRtYWJ1ZiByZWxhdGVkIGZ1
bmN0aW9ucywKc28gdGhlIG90aGVyIGRyaXZlcnMsIHdoaWNoIG1pZ2h0IHNoYXJlIGJ1ZmZlcnMg
d2l0aCBpOTE1IGNvdWxkIHJlbHkgb24KdGhlIHByb3Blcmx5IHNldCBuZW50cyBhbmQgb3JpZ19u
ZW50cyB2YWx1ZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jICAgICAgIHwgMTEgKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvbW9ja19kbWFidWYuYyB8ICA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggMjY3OTM4MDE1OWZjLi44YTk4ODU5MjcxNWIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTQ4LDEyICs0OCw5
IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmk5MTVfZ2VtX21hcF9kbWFfYnVmKHN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lCiAJCXNyYyA9IHNnX25leHQoc3JjKTsKIAl9CiAK
LQlpZiAoIWRtYV9tYXBfc2dfYXR0cnMoYXR0YWNobWVudC0+ZGV2LAotCQkJICAgICAgc3QtPnNn
bCwgc3QtPm5lbnRzLCBkaXIsCi0JCQkgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkgewot
CQlyZXQgPSAtRU5PTUVNOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYs
IHN0LCBkaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCWlmIChyZXQpCiAJCWdvdG8gZXJy
X2ZyZWVfc2c7Ci0JfQogCiAJcmV0dXJuIHN0OwogCkBAIC03Myw5ICs3MCw3IEBAIHN0YXRpYyB2
b2lkIGk5MTVfZ2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNobWVudCwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zl90
b19vYmooYXR0YWNobWVudC0+ZG1hYnVmKTsKIAotCWRtYV91bm1hcF9zZ19hdHRycyhhdHRhY2ht
ZW50LT5kZXYsCi0JCQkgICBzZy0+c2dsLCBzZy0+bmVudHMsIGRpciwKLQkJCSAgIERNQV9BVFRS
X1NLSVBfQ1BVX1NZTkMpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc2cs
IGRpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiAJc2dfZnJlZV90YWJsZShzZyk7CiAJa2Zy
ZWUoc2cpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L21vY2tfZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tf
ZG1hYnVmLmMKaW5kZXggZGViYWY3YjE4YWI1Li5iZTMwYjI3ZTI5MjYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKQEAgLTI4LDEwICsy
OCw5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1vY2tfbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJc2cgPSBzZ19uZXh0KHNnKTsKIAl9CiAK
LQlpZiAoIWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVudHMsIGRp
cikpIHsKLQkJZXJyID0gLUVOT01FTTsKKwllcnIgPSBkbWFfbWFwX3NndGFibGUoYXR0YWNobWVu
dC0+ZGV2LCBzdCwgZGlyLCAwKTsKKwlpZiAoZXJyKQogCQlnb3RvIGVycl9zdDsKLQl9CiAKIAly
ZXR1cm4gc3Q7CiAKQEAgLTQ2LDcgKzQ1LDcgQEAgc3RhdGljIHZvaWQgbW9ja191bm1hcF9kbWFf
YnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCiAJCQkgICAgICAgc3Ry
dWN0IHNnX3RhYmxlICpzdCwKIAkJCSAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIp
CiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwgc3QtPm5lbnRzLCBk
aXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc3QsIGRpciwgMCk7CiAJ
c2dfZnJlZV90YWJsZShzdCk7CiAJa2ZyZWUoc3QpOwogfQotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
