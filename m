Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E39320072E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:46:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55774665B0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:46:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 466EC665E3; Fri, 19 Jun 2020 10:46:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6691766614;
	Fri, 19 Jun 2020 10:38:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 50A07665BE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 42D17665C5; Fri, 19 Jun 2020 10:37:10 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id AC59D665AF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:00 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659euoutp01faf645842e46a9caff3fc13d7f5f1cf2~Z66D-cI1D1849718497euoutp01N
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103659euoutp01faf645842e46a9caff3fc13d7f5f1cf2~Z66D-cI1D1849718497euoutp01N
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eucas1p29e2d23773b26ece4c38249039db1201a~Z66DqWCGb2889228892eucas1p2m;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 82.9D.05997.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6~Z66DR-74h3081530815eucas1p2W;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eusmtrp1d4642a1ea7423c2baf8305e7543fec7c~Z66DRSmTS0959609596eusmtrp13;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-da-5eec954b7c6a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 84.0B.06017.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103658eusmtip2a06a75f290a330ae46a368429b0a0578~Z66CiexGq0246802468eusmtip2f;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:09 +0200
Message-Id: <20200619103636.11974-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSbUhTYRjlvXd3uxsurzPwrSxjpZlQZoncMMrK6lIIBUIQZK28uMhN23WW
 FSSpEUtjqaFprpXJ1qZZc6yamW6YS0wTtaVYWW0/nB/04bKSmG1etX/nOc85zzm8vDgqsmPL
 8VPyHFohl2SKuQKOpePPmw0Hbk6kbXK+W02W9HQi5OPKRoyctdxAyYGfX7nkA+NLhKxWNyGk
 tjWR1PU3ArLlLkJ6Bz4jpMnlxMh+620u2dD+gUfavrkxsrXKyUsKpuo19YBqmdZyqNrnHoR6
 Mv0JozSdh6iRaw6Earp/iRr2uVCqbFAHqOahfC513WwA1JRp1cGgI4Jt6XTmqVxaEbv9uEBq
 NNRwsrXh5+4MrM0HjjAV4OOQiIfq8l+YCghwEaEH8L7PwGUHL4DlxvcgoBIRUwBW/ExdcHxp
 c/NYXgeguRhdNBRaXNzAgkvEQdWkag4vJYoAfFUSFBChRDsK+7TOuauhxEHYX+fGAphDRMIP
 3mdzV4XEdmhuGkHYtAhofNSGBjDfz48X2ua6QsLJg/XWGpQVJcM2i37eEArHHGYei8NhV1kx
 hzUUAPi5p4HHDsUA9l+uBKwqEb7vmfF3xf391sNGayxL74TaGi8aoCGxBA5OhgRo1A9LLRXz
 tBBevSJi1VGwyvFwMdbW2zdfjYKt09857AvdAPCHuxpVg4iq/2FaAAwgjFYysgya2Synz25k
 JDJGKc/YeDJLZgL+n9Xlc3ifAuvfE3ZA4EAcJBxNHU8TYZJcJk9mBxBHxUuFu7q70kTCdEne
 eVqRdUyhzKQZO1iBc8Rhwi33PEdFRIYkhz5N09m0YmGL4Pzl+SDGt+vNnphhbCJopd022Kr/
 qHHm7CiKtq5DQgW/9Y+SExL2tpeDF7s71hRIL7w0DederPaNeGR8/WDKp9cyOurvaLnGEz4T
 Fl1UW9cbeyZermx2Hy5N0Xil+1yZQqxj6K2tuyfx4QTOL5wdYYLHQuJvX3ZIk7bujzSm65bd
 Uos5jFQSF4MqGMk/uX37v1UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xe7reU9/EGRx/xWrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXsXrVXJaCBTIV86+oNDAeF+9i5OSQEDCReHTgCXsXIxeH
 kMBSRol3m/6zQyRkJE5Oa2CFsIUl/lzrYoMo+sQosefDLLAEm4ChRNdbiISIQCejxLTuj2Dd
 zAJnmCV+b/AGsYUF/CQedmwGi7MIqErc/bITzOYVsJPYsvk+E8QGeYnVGw4wg9icQPHXLQfB
 FggJ2EosX/CeeQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBMbTt2M8tOxi73gUf
 YhTgYFTi4X0R8jpOiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgs
 JZqcD4zvvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjJJ9b1+v
 Mbj/ZFNYaF61h2ZHHtctt8Z3vy3rO765TrAXNFZf6Ns8cetR5VfLnRgeyhw8FsNr++Z4v5Xc
 k9c2d84ImKft5/3ftYttbonvRyFrzVsn/1V+iDl3f4n7s70ZG9+arvuaMuuA+/FLJ4x45Krv
 KhfaTDxp7Ra7TJ9tGYvAtjnPA9YKvVZiKc5INNRiLipOBABPJHtdtwIAAA==
X-CMS-MailID: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
X-Msg-Generator: CA
X-RootMTR: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 09/36] drm: i915: fix common struct
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
