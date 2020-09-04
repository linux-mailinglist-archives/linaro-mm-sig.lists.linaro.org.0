Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F7025DA41
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:45:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 005D5617B6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:45:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E794666760; Fri,  4 Sep 2020 13:45:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C366676C;
	Fri,  4 Sep 2020 13:36:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D9E1166743
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C92DE60EFF; Fri,  4 Sep 2020 13:35:12 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E22F860EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:59 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133459euoutp011c9102ae0d74502d4965ee89ded7e061~xmAcl4gR30569905699euoutp01Y
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133459euoutp011c9102ae0d74502d4965ee89ded7e061~xmAcl4gR30569905699euoutp01Y
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133458eucas1p1637fbed78aec3e28849fe7a9fe21176f~xmAcSNplP0118801188eucas1p1v;
 Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E4.66.05997.282425F5; Fri,  4
 Sep 2020 14:34:58 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133458eucas1p214dd6899a77591ed50834e9fc85ae157~xmAb9QM4T1446814468eucas1p2c;
 Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133458eusmtrp2029fa82bf569a174404c6e52d258ef62~xmAb8lXQ60905709057eusmtrp2f;
 Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-53-5f52428214c7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 31.A0.06017.282425F5; Fri,  4
 Sep 2020 14:34:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133457eusmtip1adff83376c3fd1d1a6ba5c5bd665abaf~xmAbWYRsj1944019440eusmtip1h;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:49 +0200
Message-Id: <20200904131711.12950-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVcRjH+51z7rnHzdXpMp5uL7bbtNVCXv44TYilndU/sWrNlG6cYXnb
 PYhWy0useSmUMhpKy/tLXCryOoUZ2WWXikrYUFTeohrd66D/vs/3+Ty/7/P77UfhsjaRnAoI
 DuNUwcpABSkhat8s91jGunp4H5ruPcik9HRizLPMChGzWpuGM/0L30mmqOQ1xmSnVmNMXpMD
 U9BXgZiGRxgz3z+CMVWjWhHTV/eQZMrahsVMy48xEdOUpRUf3caW5pQitmExj2DzX01i7PPF
 zyI2p9Od/ZTUjrHVT26wH1ZGcfbuYAFi699Fk+xtdTFi56r2nDL0lBzx5QIDIjiVtdNFiX9G
 4ZI4NGl35NPkRSwaFUAiMqCAtoeZliKUiCSUjC5EkN6SiwnFPILx1j+4npLRcwjGPvIbE/k5
 MYQAFeigIjWxOZH2tlisp0jaBhKnE0m9NqHjEXSkGOohnG7DQZOnRfqGMe0OhRNpaxBBW0BN
 mWZtWEo7ws+mLlKIM4eSyua1NQxoJ6jJHBPpDwJaKwZN9zghQMdgeOQeLmhjmGpXiwW9C1Zf
 ChcCOg7BSE+ZWCiSEfTFZiKBcoChnt+6OEq3336oqLMWbBdo/KrG9TbQRjA4vV1v4zqZXvtg
 3ZbCrQSZQO+DrPbyzdiWXs36OizkZwyQwgulIbjf10ymIvOs/2F5CBUjMy6cD/LjeNtg7ooV
 rwziw4P9rHxCgqqQ7m91rbTPv0B1fy+1IppCCkPpFmcPb5lIGcFHBbUioHCFidS1u+uCTOqr
 jLrKqUK8VeGBHN+KdlKEwkxq93jyvIz2U4ZxlzkulFNtdDHKQB6NkqXO5A6Gs/tl0pjN8tSS
 9MuZuAqYsZufOeno6VbOlTQk+bsd59o6Gu5cd27MHvwWmTuBZleSDe3J8EAX+ekF07GEqgFb
 YmucqnTQtNaLs/F7f/iEla2PzCISzZ5z9Zyy3lupkWu746+FRsgtYzr7U9U3i8OWrYdG6428
 zkoUBO+vtDmAq3jlPxF+QY9XAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xu7pNTkHxBtPXS1v0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBazJ2xmsliw39pi+eX1jBZ7FzJZfLnykMli0+NrrBaXd81hs1h7
 5C67xcEPT1gt9s+6xu7A77Fm3hpGj73fFrB4LN7zkslj+7cHrB7zTgZ63O8+zuSxeUm9x+1/
 j5k9Jt9Yzuix+2YDm0ffllWMHp83yQXwROnZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hka
 m8daGZkq6dvZpKTmZJalFunbJehlTF3xg72gW7ZiWc83pgbG5RJdjJwcEgImEovnNbKA2EIC
 SxklNiw1gIjLSJyc1sAKYQtL/LnWxdbFyAVU84lR4tXsv2AJNgFDia63EAkRgU5GiWndH9lB
 EswCZ5glfm/wBrGFBfwlrjxYwQxiswioSmxdewmshlfAVuLj/tNsEBvkJVZvOABWwylgJ7F1
 xhNWiItsJT7MWcwygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAY2nbs55YdjF3v
 gg8xCnAwKvHwMtgHxQuxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0FET
 maVEk/OB8Z1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoHxasPS
 rbHJ7lmXpllnu91q2yfq9/QDI2PRurDt4YnV+2abqb73OPj0ZrfygUWusdO2Ge98+9tpi3JV
 2f7sGUvXOVVliDybxvT37Ssf94YHs1a22YRFpMw+nchUFjcl9NUzAbE5aTuvuOxw/n9o89oJ
 D/c5eCW82LYpTH7XwtvMD3P+u2xilrjmrsRSnJFoqMVcVJwIAA4dYVq3AgAA
X-CMS-MailID: 20200904133458eucas1p214dd6899a77591ed50834e9fc85ae157
X-Msg-Generator: CA
X-RootMTR: 20200904133458eucas1p214dd6899a77591ed50834e9fc85ae157
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133458eucas1p214dd6899a77591ed50834e9fc85ae157
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133458eucas1p214dd6899a77591ed50834e9fc85ae157@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 08/30] drm: i915: fix common struct
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
a2lAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBh
cm0uY29tPgpSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNoYWVsLmoucnVobEBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAg
ICAgIHwgMTEgKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
bW9ja19kbWFidWYuYyB8ICA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZG1hYnVmLmMKaW5kZXggMjY3OTM4MDE1OWZjLi44YTk4ODU5MjcxNWIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTQ4LDEyICs0OCw5IEBAIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKmk5MTVfZ2VtX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaG1lCiAJCXNyYyA9IHNnX25leHQoc3JjKTsKIAl9CiAKLQlpZiAoIWRt
YV9tYXBfc2dfYXR0cnMoYXR0YWNobWVudC0+ZGV2LAotCQkJICAgICAgc3QtPnNnbCwgc3QtPm5l
bnRzLCBkaXIsCi0JCQkgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkgewotCQlyZXQgPSAt
RU5PTUVNOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHN0LCBkaXIs
IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCWlmIChyZXQpCiAJCWdvdG8gZXJyX2ZyZWVfc2c7
Ci0JfQogCiAJcmV0dXJuIHN0OwogCkBAIC03Myw5ICs3MCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVf
Z2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zl90b19vYmooYXR0
YWNobWVudC0+ZG1hYnVmKTsKIAotCWRtYV91bm1hcF9zZ19hdHRycyhhdHRhY2htZW50LT5kZXYs
Ci0JCQkgICBzZy0+c2dsLCBzZy0+bmVudHMsIGRpciwKLQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc2csIGRpciwgRE1B
X0FUVFJfU0tJUF9DUFVfU1lOQyk7CiAJc2dfZnJlZV90YWJsZShzZyk7CiAJa2ZyZWUoc2cpOwog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1h
YnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMK
aW5kZXggZGViYWY3YjE4YWI1Li5iZTMwYjI3ZTI5MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKQEAgLTI4LDEwICsyOCw5IEBAIHN0
YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1vY2tfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqYXR0YWNobWVudCwKIAkJc2cgPSBzZ19uZXh0KHNnKTsKIAl9CiAKLQlpZiAoIWRt
YV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVudHMsIGRpcikpIHsKLQkJ
ZXJyID0gLUVOT01FTTsKKwllcnIgPSBkbWFfbWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCBz
dCwgZGlyLCAwKTsKKwlpZiAoZXJyKQogCQlnb3RvIGVycl9zdDsKLQl9CiAKIAlyZXR1cm4gc3Q7
CiAKQEAgLTQ2LDcgKzQ1LDcgQEAgc3RhdGljIHZvaWQgbW9ja191bm1hcF9kbWFfYnVmKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCiAJCQkgICAgICAgc3RydWN0IHNnX3Rh
YmxlICpzdCwKIAkJCSAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCiB7Ci0JZG1h
X3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwgc3QtPm5lbnRzLCBkaXIpOworCWRt
YV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc3QsIGRpciwgMCk7CiAJc2dfZnJlZV90
YWJsZShzdCk7CiAJa2ZyZWUoc3QpOwogfQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
