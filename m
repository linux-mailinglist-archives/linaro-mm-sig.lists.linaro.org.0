Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8A31FF7F2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:49:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39C4C6013A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:49:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 236FF66588; Thu, 18 Jun 2020 15:49:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5E13665E8;
	Thu, 18 Jun 2020 15:41:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C590665AA
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 91527665AB; Thu, 18 Jun 2020 15:40:32 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 97BD766572
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:21 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154020euoutp0297264352922375b0d89491a5fcc64f4d~ZrZoorWSx1314513145euoutp028
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154020euoutp0297264352922375b0d89491a5fcc64f4d~ZrZoorWSx1314513145euoutp028
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eucas1p1fdd8a2f01d9531033041feeccd834b08~ZrZoTA22C0074000740eucas1p10;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4D.CE.60679.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082~ZrZn_Vnfu0608006080eucas1p2N;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eusmtrp297d2caa0103f91831151757ed2ca195a~ZrZn9Z2V40399203992eusmtrp2V;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-26-5eeb8ae4a465
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.EE.08375.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154019eusmtip1cdb1619afa0bc2257d86f26de1caacce~ZrZnRn8rQ0833608336eusmtip1O;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:30 +0200
Message-Id: <20200618153956.29558-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmPefs7Dhcnabg19UYXUgw0yK+KKKL0Yn6oWR/Is1ZJ5V06uay
 BZErLFspU0PFUpcF1szmdZoW2rwsM7VyDUUl04JMwsoVXbTlPGr/nvd5nvd7Hl4+hpS1iJYx
 scpkXqVUxMlpCWVp/9Xj/14/HrHpcu1KnNHdQeDKfLMIuyxZJLZ/n6Dx/bI2At80VBPY2LQd
 l/aaAT+5TWCn/R2Bq0YdItzbcIvG5a1DYvz0y3sRbipwiHct5h4UPQDuyQ8jxd15PEZwdT+G
 RVxRRyj39pqN4KrvXuAG/o6SXE5fKXCN/ak0l1ljAm6yalWI51HJjpN8XOwZXhWwM1ISU2Yq
 pBKNK84W29ekgs1HDx4MYregvl92sR4kjIy9B6jKYKSFwQmo/s/EnDIJ6M03Mzm/Yh3LBUEo
 BdR8JR0WVkxDA2K3i2YDkf6znnZjbzYN0LMMT7eJZFtJ9NroALfgxYagytoaQg8MQ7Fr0c8b
 W920lN2JXgzXz6X5orKK5lnsMcN32tJE7ncQ6xCjN66vlGAKRqWtFXPYC32y1YgFvAK5HhUT
 wsIlQO+6y8XCcB1Q78V8EFzb0WD3b9rdgmQ3IHNDgEDvRmMt07PlELsI9X1e4qbJGZhtySMF
 WorSL8sE9zpUYHu4EPv05eu5/hzKcTWRwoGyADV1NVIG8C34H2YEMIEPr1HHR/PqICWfslGt
 iFdrlNEbTyTEV8HM1+r8a3PWQ8NUlBVYBuSe0o9h4xEykeKMWhtvBcSQcm/pnq7OCJn0pEJ7
 jlclHFdp4ni1FZYzlNxHurlkLFzGRiuS+dM8n8ir5lWC8ViWCsf6I6uDzLr2slw9Tty2dnV+
 ybcjfUlXRwI1Lrw3Ji8l2BDlc37J86kPSc5rg6/kbYX3ZBpT8IH+ui6/CpFlUXNGaBq4LNZp
 6rBjv1YSUKk7xLlYXbZRm+48mLH+RRgdnjRSsM+7bnPzqYGBcemrSFW4X7t/sq6wZ6k5sxgM
 ckodowj0I1VqxT8EuuQBVgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7pPul7HGUxawGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXsXrVXJaCBTIV86+oNDAeF+9i5OSQEDCROPRyGiOILSSw
 lFFi5TIriLiMxMlpDawQtrDEn2tdbF2MXEA1nxglHrT2gyXYBAwlut5CJEQEOhklpnV/ZAdJ
 MAucYZb4vcEbxBYW8JN4NeM3UAMHB4uAqsSPKWYgYV4BO4kzD3YwQyyQl1i94QCYzQkUP328
 lRXiIFuJ5x/a2CYw8i1gZFjFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGD/bjv3cvIPx0sbg
 Q4wCHIxKPLwvQl7HCbEmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQTROZ
 pUST84GxnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgTHw11z2
 6PCT685wfP8oXrLCl1lff1aXxvWdl0xc36+IELx6uOVGKOOJHZWak1y4d/daMj4NebTK8aep
 90Tu4CN8EW1qlVU7r1Xs61cTVVgi/Tnxxmm9E0wzIu6ufDHb52f8gbm6h5a7alh4Cr2c2KEQ
 EPS233VWD8ecg9P5d68/KbTMarFG010lluKMREMt5qLiRAAR+nxFtQIAAA==
X-CMS-MailID: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
X-Msg-Generator: CA
X-RootMTR: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 09/36] drm: i915: fix common struct
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
