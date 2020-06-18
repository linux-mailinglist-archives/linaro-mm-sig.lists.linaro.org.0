Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD01FF875
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:02:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E09166572
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:02:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E0B066588; Thu, 18 Jun 2020 16:02:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69245666DA;
	Thu, 18 Jun 2020 15:42:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E17C6654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7114F66591; Thu, 18 Jun 2020 15:40:49 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 07C5F6654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:32 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031euoutp01037f4d9efb320f3ff5a30ea495875ee9~ZrZyV81j_1845318453euoutp01F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154031euoutp01037f4d9efb320f3ff5a30ea495875ee9~ZrZyV81j_1845318453euoutp01F
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154031eucas1p1b2a5f82d438657ef26f917087674bb21~ZrZyFvvYn2141221412eucas1p1B;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 06.DE.60679.EEA8BEE5; Thu, 18
 Jun 2020 16:40:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9~ZrZxrWGHz2945829458eucas1p2s;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154030eusmtrp100e1d8b9d488d275259cad6d740c1947~ZrZxqp9xw2230622306eusmtrp1D;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-43-5eeb8aee6e4f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9C.E9.07950.EEA8BEE5; Thu, 18
 Jun 2020 16:40:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154029eusmtip14b193a12662698378a07245764c6f5b6~ZrZxCgcmM0742307423eusmtip1V;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:45 +0200
Message-Id: <20200618153956.29558-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTcRTH++3eu13NyW2a/rBQGCUVpan746JhJkGXHhQRRKHm0osz3bTN
 Z5SKNpP5SBNRRM1e+JrPrWWKppbNR77NfKam0sPMt6GJtXnV/vuc7znfcw6HgyO8RswC95UE
 0VKJ0J/PNkQ171c7jv1STHsc/7DmSCa2N7PI8oxSjOxKl6PkX00KQvYuz7LJgqJGFpn7xonM
 GrAnl3rHWWTFRB9G9lRlscnidyMcsn5uEiN/q1NZLsaUMkcJqJqVXJR6tTKGUaPxWhaleh5J
 DW1MIFRqfx6g3s71olT1QBSbmp8aRKkkdSGgStUfUWqxwvIS97rhCW/a3zeElto6exqKytvm
 WYEtZmGz6mo0Cqh5CmCAQ0IAc3RWPfOIfADnP51RAEMdLwH4omsaZYJFADuepWPbjsUFOYdJ
 5AGo1MSxdizZ6prNXmzCDipmFGw9mxJyAJsSjfRFCBGPwLTiws1WJsRlGN8fC/SMEgdhSsrP
 TeYSzrA8qQ9lxlnBorI6RM8GOr1VK8f0jSAxyIFPhtIQpug0fPh6hs2wCfyhVXMY3g9bUxNQ
 xhAD4Hh7MYcJEgDsic4ATJUTHG5f07lx3X6HYWmVLSOfgi9nhoFehoQx7J/Zo5cRHT7SpCOM
 zIVxsVuHtIaZ2pKdsfWd3VurUbB2ugxjLpQCYMJoCZIMrDL/D8sFoBCY08EysQ8ts5fQoTYy
 oVgWLPGx8QoQVwDdc7VuaJcqQdX6zQZA4IBvxP12ZdqDhwlDZOHiBgBxhG/KdW1r9eBxvYXh
 d2hpwA1psD8tawD7cJRvznV4+t2dR/gIg2g/mg6kpdtZFm5gEQXonnXRwtTcOeerXyQe7uGP
 LxzYvRoa4TB3zy3S3lLsd79TSXiV1gyJBPIxpWPMsqV4UTqpOOvabBbR7fUn7S7+VbDqMnJN
 ELZwaKnukudF6/p5T5+uZteVW7NVvkfdKgv25kcn396VLFLVkCreyc/2ti2Z4mxVkyCjtvxB
 c/7IeT4qEwntjiBSmfAftXBXYVgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7rvul7HGWy/oGjRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl7Hx7EemglNiFe+37GZpYNwi1MXIySEhYCLx+VMrexcj
 F4eQwFJGiTXH57JBJGQkTk5rYIWwhSX+XOtigyj6xChx8MxXsCI2AUOJrrcQCRGBTkaJad0f
 wUYxC0xmlni2+joTSJWwQIDE7devwGwWAVWJiRPfMILYvAJ2Ehv7rrFArJCXWL3hADOIzQkU
 P328FWy1kICtxPMPbWwTGPkWMDKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIykbcd+btnB
 2PUu+BCjAAejEg/vi5DXcUKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgK
 dNREZinR5HxglOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCc
 KDxra4rLva77UmUNcVsEP6gwWTbl3PuU9mLf850yE7/2PTy6SMr/RfvpQ9o2h//t+umRdDja
 XCx4qk1fyAKFG0sOn8qZdTDnv9D1mLNPPySp+Gxdb7n4XNKXU1eW8Rznen3ih1f3Mq6sXWas
 LVNvzeJ3t/7AYFOgG77jUS+rokTIh6PdkRdWKrEUZyQaajEXFScCAHXemBa6AgAA
X-CMS-MailID: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
X-Msg-Generator: CA
X-RootMTR: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154030eucas1p2f36e6ec52cea051fccedb1970f27bef9@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 24/36] xen: gntdev: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IEp1ZXJnZW4gR3Jvc3MgPGpncm9z
c0BzdXNlLmNvbT4gCi0tLQogZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jIHwgMTMgKysrKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgYi9kcml2ZXJzL3hlbi9n
bnRkZXYtZG1hYnVmLmMKaW5kZXggNzVkM2JiOTQ4YmYzLi5iYTZjYWQ4NzE1NjggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYworKysgYi9kcml2ZXJzL3hlbi9nbnRkZXYt
ZG1hYnVmLmMKQEAgLTI0NywxMCArMjQ3LDkgQEAgc3RhdGljIHZvaWQgZG1hYnVmX2V4cF9vcHNf
ZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAogCiAJCWlmIChzZ3QpIHsKIAkJCWlmIChn
bnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGlyICE9IERNQV9OT05FKQotCQkJCWRtYV91bm1hcF9zZ19h
dHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsCi0JCQkJCQkgICBzZ3QtPm5lbnRzLAotCQkJCQkJ
ICAgZ250ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciwKLQkJCQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpOworCQkJCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsCisJCQkJCQkg
IGdudGRldl9kbWFidWZfYXR0YWNoLT5kaXIsCisJCQkJCQkgIERNQV9BVFRSX1NLSVBfQ1BVX1NZ
TkMpOwogCQkJc2dfZnJlZV90YWJsZShzZ3QpOwogCQl9CiAKQEAgLTI4OCw4ICsyODcsOCBAQCBk
bWFidWZfZXhwX29wc19tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gsCiAJc2d0ID0gZG1hYnVmX3BhZ2VzX3RvX3NndChnbnRkZXZfZG1hYnVmLT5wYWdlcywKIAkJ
CQkgIGdudGRldl9kbWFidWYtPm5yX3BhZ2VzKTsKIAlpZiAoIUlTX0VSUihzZ3QpKSB7Ci0JCWlm
ICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRp
ciwKLQkJCQkgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkgeworCQlpZiAoZG1hX21hcF9z
Z3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwKKwkJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpIHsKIAkJCXNnX2ZyZWVfdGFibGUoc2d0KTsKIAkJCWtmcmVlKHNndCk7CiAJCQlzZ3Qg
PSBFUlJfUFRSKC1FTk9NRU0pOwpAQCAtNjI1LDcgKzYyNCw3IEBAIGRtYWJ1Zl9pbXBfdG9fcmVm
cyhzdHJ1Y3QgZ250ZGV2X2RtYWJ1Zl9wcml2ICpwcml2LCBzdHJ1Y3QgZGV2aWNlICpkZXYsCiAK
IAkvKiBOb3cgY29udmVydCBzZ3QgdG8gYXJyYXkgb2YgcGFnZXMgYW5kIGNoZWNrIGZvciBwYWdl
IHZhbGlkaXR5LiAqLwogCWkgPSAwOwotCWZvcl9lYWNoX3NnX3BhZ2Uoc2d0LT5zZ2wsICZzZ19p
dGVyLCBzZ3QtPm5lbnRzLCAwKSB7CisJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHNndCwgJnNnX2l0
ZXIsIDApIHsKIAkJc3RydWN0IHBhZ2UgKnBhZ2UgPSBzZ19wYWdlX2l0ZXJfcGFnZSgmc2dfaXRl
cik7CiAJCS8qCiAJCSAqIENoZWNrIGlmIHBhZ2UgaXMgdmFsaWQ6IHRoaXMgY2FuIGhhcHBlbiBp
ZiB3ZSBhcmUgZ2l2ZW4KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
