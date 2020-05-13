Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0751D1619
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:43:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2D0465FAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:43:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D6E0265FB1; Wed, 13 May 2020 13:43:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D532266038;
	Wed, 13 May 2020 13:33:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D888D65F87
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CC9DC65F96; Wed, 13 May 2020 13:33:11 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7191F65F8B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:03 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133302euoutp0162441db6f50d2d0a6b8edfba5e252394~OmcNTKcHi2234622346euoutp01G
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133302euoutp0162441db6f50d2d0a6b8edfba5e252394~OmcNTKcHi2234622346euoutp01G
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133302eucas1p2d79ae1c80ae6d1dba237b1505033373b~OmcM65dzq0359403594eucas1p2T;
 Wed, 13 May 2020 13:33:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.C8.60698.E07FBBE5; Wed, 13
 May 2020 14:33:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2~OmcMooeKf2972529725eucas1p26;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133301eusmtrp11a8f6059fe0dd13159bee8d29db5dee6~OmcMn5gIh1011910119eusmtrp1y;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-b8-5ebbf70edf04
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B3.37.07950.D07FBBE5; Wed, 13
 May 2020 14:33:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133301eusmtip1afa7a07517696ee6065475ad21a65ac3~OmcL-x7aM0693306933eusmtip17;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:15 +0200
Message-Id: <20200513133245.6408-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVYRzHe845997j5tpxKU9U5m610bwN22leqq21kz968Yc/VHRwhsV1
 dy/CWq5ECCOzMCFZyut1s1t5u2/lZsr7hCimbJiX8rZaqXsd9N/n932+3+f727MHR4VKji0e
 JY5jpGI6WsTlY6qun33OFpttwW5KlQWZ29uNkM3FTRzyr6oAJYfXl7nk87q3CFmp9ibXhqcR
 UjkzwiGHWsu4pK6oA5ANbyZ5pHblK+e0OVVfXg+ooZEBlOrYqMSolxtTHOrLfQNCvahOoT5t
 zaBU4WgNoNrG5Fwqr6UWUKvKo5f2B/F9wpnoqARG6up3nR/5aFCJSHIOJS4YUoEcjFtnAzMc
 Ep6wJX8MzQZ8XEg8A7C17x6XHdYAVKvuIiaXkFgFUN4YtJso38jaMdUA+EFXwdtLbD4u2E5w
 CXeYvZjNNbE1kQ7gu1xzkwklNAjMWFrYNlkRAfB9jgIzMUYcg5mzGp6JBYQPnCxRoGydPaxT
 aLbZjPCF8xNqzHQRJDp5sLJEi7Cms7C6aJ7LshWcN7TwWD4MewpzdgJpAE73NvDYIQfAoTvF
 gHV5w4neX8Y0btzPETa1urLyGZg18BQzyZCwgKOLliYZNeID1UOUlQUwM0PIuo/DUkPjXq22
 f3Bnfwqqqyo47AvpAdSq+9F8YF/6v6wSgFpgw8TLYiIYmYeYuekio2Nk8eIIl7DYGCUw/qSe
 LcP6K9D5O1QHCByIzAVTH9uChRw6QZYUowMQR0XWggtNRkkQTiclM9LYEGl8NCPTATscE9kI
 PKrmrgmJCDqOucEwEka6e4rgZrZyYOkeR7a/tm3lL59XJHZp/LfaQ+0DLjZ4+nv5epR5VU2K
 6+0CVujxcuUfidstxzwnsVCb9jngambghF7fnfIt+VLfj33TB5ynHMSSk70pWLzDKfURW8V3
 hVVeSEH65Sup55aKZjNg+3xzmH7h9twG9SREfZA+0b1c5Tfd1y6XBIowWSTt7oRKZfQ/Tb2g
 k0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7q833fHGVxptrDoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DLmXtrEVNAjWfH6eCNjA+MtkS5GTg4JAROJed862boYuTiEBJYySqya94kRIiEjcXJaAyuE
 LSzx51oXVNEnRomuhinMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFjTBILf31kAakSFgiQ+Ntx
 gw3EZhFQleh4doAdxOYVsJG4O3MDM8QKeYnVGw6A2ZwCthKv7uwH6xUSyJfYu3gf2wRGvgWM
 DKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECY2TbsZ9bdjB2vQs+xCjAwajEw2txa3ecEGti
 WXFl7iFGCQ5mJRFev/VAId6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4Hxm9eSbyhqaG5haWh
 ubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGr+nS7pItDGyZTr/fMJxsNlnvU/rh
 2edzvLXGD0WuqF38e/G+3upTj+qcZctk7FXOZRidqXrlntzRI7WF24Z7YQrD7xN7pXmDAy+2
 Rrcyb311SeJk+QG+fT+OXH5ht7WWx+fDx/ZlG9TqTmhvd1Ddy5L9VUpmv1R39k/1JuFw8xxu
 34/tNb+UWIozEg21mIuKEwFSansSpwIAAA==
X-CMS-MailID: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
X-Msg-Generator: CA
X-RootMTR: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 08/38] drm: armada: fix common struct
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
ZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgfCAxMiArKysrKystLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YXJtYWRhL2FybWFkYV9nZW0uYwppbmRleCA5NzY2ODVmLi4wZDYxZGE1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
YXJtYWRhL2FybWFkYV9nZW0uYwpAQCAtMzk1LDcgKzM5NSw3IEBAIGludCBhcm1hZGFfZ2VtX3B3
cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJCW1hcHBp
bmcgPSBkb2JqLT5vYmouZmlscC0+Zl9tYXBwaW5nOwogCi0JCWZvcl9lYWNoX3NnKHNndC0+c2ds
LCBzZywgY291bnQsIGkpIHsKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKSB7CiAJ
CQlzdHJ1Y3QgcGFnZSAqcGFnZTsKIAogCQkJcGFnZSA9IHNobWVtX3JlYWRfbWFwcGluZ19wYWdl
KG1hcHBpbmcsIGkpOwpAQCAtNDA3LDggKzQwNyw4IEBAIGludCBhcm1hZGFfZ2VtX3B3cml0ZV9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQkJc2dfc2V0X3BhZ2Uo
c2csIHBhZ2UsIFBBR0VfU0laRSwgMCk7CiAJCX0KIAotCQlpZiAoZG1hX21hcF9zZyhhdHRhY2gt
PmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcikgPT0gMCkgewotCQkJbnVtID0gc2d0LT5u
ZW50czsKKwkJaWYgKGRtYV9tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApKSB7
CisJCQludW0gPSBjb3VudDsKIAkJCWdvdG8gcmVsZWFzZTsKIAkJfQogCX0gZWxzZSBpZiAoZG9i
ai0+cGFnZSkgewpAQCAtNDE4LDcgKzQxOCw3IEBAIGludCBhcm1hZGFfZ2VtX3B3cml0ZV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJCXNnX3NldF9wYWdlKHNn
dC0+c2dsLCBkb2JqLT5wYWdlLCBkb2JqLT5vYmouc2l6ZSwgMCk7CiAKLQkJaWYgKGRtYV9tYXBf
c2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDApCisJCWlmIChk
bWFfbWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKIAkJCWdvdG8gZnJlZV90
YWJsZTsKIAl9IGVsc2UgaWYgKGRvYmotPmxpbmVhcikgewogCQkvKiBTaW5nbGUgY29udGlndW91
cyBwaHlzaWNhbCByZWdpb24gLSBubyBzdHJ1Y3QgcGFnZSAqLwpAQCAtNDQ5LDExICs0NDksMTEg
QEAgc3RhdGljIHZvaWQgYXJtYWRhX2dlbV9wcmltZV91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlpbnQgaTsKIAogCWlmICghZG9iai0+bGluZWFyKQot
CQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOwor
CQlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApOwogCiAJaWYgKGRv
YmotPm9iai5maWxwKSB7CiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Ci0JCWZvcl9lYWNoX3Nn
KHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywgaSkKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3Qs
IHNnLCBpKQogCQkJcHV0X3BhZ2Uoc2dfcGFnZShzZykpOwogCX0KIAotLSAKMS45LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
