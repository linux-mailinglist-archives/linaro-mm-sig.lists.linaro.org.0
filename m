Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AD725DAAA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:55:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7F3A66772
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:55:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CC55E66773; Fri,  4 Sep 2020 13:55:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D275166789;
	Fri,  4 Sep 2020 13:37:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E623665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10EAB6674C; Fri,  4 Sep 2020 13:36:24 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6AFD56660D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:08 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133507euoutp02bd28d0d7ed657a3024cbf395d79275d5~xmAkh8SAy2890128901euoutp02t
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133507euoutp02bd28d0d7ed657a3024cbf395d79275d5~xmAkh8SAy2890128901euoutp02t
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133507eucas1p15315e55ae9efc273d6a927ec4f7acb80~xmAkSXygD1681116811eucas1p1t;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 7E.39.06318.B82425F5; Fri,  4
 Sep 2020 14:35:07 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133507eucas1p197261c4a609b4034f9269f9b413ed5e7~xmAj-y_tE0113901139eucas1p13;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133507eusmtrp1434b8b650f1f6df000db1de47e990e94~xmAj-K42t0766507665eusmtrp1H;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-b4-5f52428b44f2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 98.BE.06314.A82425F5; Fri,  4
 Sep 2020 14:35:07 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133506eusmtip1dc04bed1f79290debe4a072459180c58~xmAjXC1QP1683116831eusmtip1Z;
 Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:03 +0200
Message-Id: <20200904131711.12950-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djP87rdTkHxBi9niFr0njvJZLFxxnpW
 i4vTW1ks/m+byGxx5et7NouVq48yWSzYb20x56aRxZcrD5ksNj2+xmpxedccNou1R+6yWxz8
 8ITV4vuWyUwOfB5r5q1h9Nj7bQGLx/ZvD1g97ncfZ/LYvKTe4/a/x8wek28sZ/Q4/OEKi8fu
 mw1sHh+f3mLx6NuyitFj/ZarLB6fN8kF8EZx2aSk5mSWpRbp2yVwZbx5t5mt4KRYRdPjRvYG
 xi1CXYycHBICJhJ7rk5g7GLk4hASWMEosbRtFQuE84VRov9WJ5TzmVFiwd12JpiWuRfusEMk
 ljNKrLxyH6Hl4+sFYFVsAoYSXW+72EBsEYFWRokTvTwgRcwC3cwSU9euYgVJCAsES7y+OJ0Z
 xGYRUJW4dfMYkM3BwStgJ/HiDtQ2eYnVGw6AlXAChbfOeMIKMkdC4Ba7RNOyfqgiF4kz0xvZ
 IGxhiVfHt7BD2DISpyf3sEA0NDNKPDy3lh3C6WGUuNw0gxGiylrizrlfbCCbmQU0Jdbv0gcx
 JQQcJb5OFoEw+SRuvBUEKWYGMidtm84MEeaV6GiDhqOaxKzj6+C2HrxwCarEQ+La73JI8Exk
 lOhoesY2gVF+FsKqBYyMqxjFU0uLc9NTi43zUsv1ihNzi0vz0vWS83M3MQKT1ul/x7/uYNz3
 J+kQowAHoxIPL4N9ULwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzFKc7Ao
 ifMaL3oZKySQnliSmp2aWpBaBJNl4uCUamCcerHJ2NbletDuteHOt9PUY4+t9u3ZHBS6cPf1
 c7oR7brv/sfLNipypMrtyha636fuzXVbQyrG5qP3w3yzDWJ/GxqnXL9XF+a8MejC3pUv2gWf
 Ln34+JXP3p0Ov4yWP7PO+bdje820d6fanzPNSV4stvRejehW5vBMtalpp2fUtx26ue6C0fYy
 JZbijERDLeai4kQA21QidVYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7rdTkHxBhOnMlr0njvJZLFxxnpW
 i4vTW1ks/m+byGxx5et7NouVq48yWSzYb20x56aRxZcrD5ksNj2+xmpxedccNou1R+6yWxz8
 8ITV4vuWyUwOfB5r5q1h9Nj7bQGLx/ZvD1g97ncfZ/LYvKTe4/a/x8wek28sZ/Q4/OEKi8fu
 mw1sHh+f3mLx6NuyitFj/ZarLB6fN8kF8Ebp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZ
 GpvHWhmZKunb2aSk5mSWpRbp2yXoZbx5t5mt4KRYRdPjRvYGxi1CXYycHBICJhJzL9xh72Lk
 4hASWMoo0XXxAxNEQkbi5LQGVghbWOLPtS42iKJPjBL7bt5jB0mwCRhKdL2FSIgIdDJKTOv+
 CDaKWWAys8Sz1dfBRgkLBEpM+NTOCGKzCKhK3Lp5jLmLkYODV8BO4sUdqG3yEqs3HGAGsTmB
 wltnPAHbLCRgK/FhzmKWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTG0bZjPzfv
 YLy0MfgQowAHoxIPL4N9ULwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGa
 At00kVlKNDkfGON5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoY
 /QI5dRNsuSde0f8Z9P3HoYtuv7K0vN4YpnLKr+pJuLWJde3Zem6WXKf9yadKZF4Ebpy3feOh
 sy7/Ki7yLuY9qrsg7N0ZhuMzbD9Ir/LdEv3jdUzrQ4EzfWFfzJ65VnwRbV2UFVw5r9n0xIzT
 Szy0mCWMou4HMPFkb8j7nmG0tfexv1C88cMyJZbijERDLeai4kQACNKhf7kCAAA=
X-CMS-MailID: 20200904133507eucas1p197261c4a609b4034f9269f9b413ed5e7
X-Msg-Generator: CA
X-RootMTR: 20200904133507eucas1p197261c4a609b4034f9269f9b413ed5e7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133507eucas1p197261c4a609b4034f9269f9b413ed5e7
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133507eucas1p197261c4a609b4034f9269f9b413ed5e7@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 22/30] xen: gntdev: fix common struct
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
c0BzdXNlLmNvbT4KLS0tCiBkcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgfCAxMyArKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYyBiL2RyaXZlcnMveGVuL2du
dGRldi1kbWFidWYuYwppbmRleCBiMWI2ZWViYWZkNWQuLjRjMTNjYmM5OTg5NiAxMDA2NDQKLS0t
IGEvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMveGVuL2dudGRldi1k
bWFidWYuYwpAQCAtMjQ3LDEwICsyNDcsOSBAQCBzdGF0aWMgdm9pZCBkbWFidWZfZXhwX29wc19k
ZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCiAKIAkJaWYgKHNndCkgewogCQkJaWYgKGdu
dGRldl9kbWFidWZfYXR0YWNoLT5kaXIgIT0gRE1BX05PTkUpCi0JCQkJZG1hX3VubWFwX3NnX2F0
dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwKLQkJCQkJCSAgIHNndC0+bmVudHMsCi0JCQkJCQkg
ICBnbnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGlyLAotCQkJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQyk7CisJCQkJZG1hX3VubWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwKKwkJCQkJCSAg
Z250ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciwKKwkJCQkJCSAgRE1BX0FUVFJfU0tJUF9DUFVfU1lO
Qyk7CiAJCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCX0KIApAQCAtMjg4LDggKzI4Nyw4IEBAIGRt
YWJ1Zl9leHBfb3BzX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwKIAlzZ3QgPSBkbWFidWZfcGFnZXNfdG9fc2d0KGdudGRldl9kbWFidWYtPnBhZ2VzLAogCQkJ
CSAgZ250ZGV2X2RtYWJ1Zi0+bnJfcGFnZXMpOwogCWlmICghSVNfRVJSKHNndCkpIHsKLQkJaWYg
KCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGly
LAotCQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CisJCWlmIChkbWFfbWFwX3Nn
dGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLAorCQkJCSAgICBETUFfQVRUUl9TS0lQX0NQVV9T
WU5DKSkgewogCQkJc2dfZnJlZV90YWJsZShzZ3QpOwogCQkJa2ZyZWUoc2d0KTsKIAkJCXNndCA9
IEVSUl9QVFIoLUVOT01FTSk7CkBAIC02MzMsNyArNjMyLDcgQEAgZG1hYnVmX2ltcF90b19yZWZz
KHN0cnVjdCBnbnRkZXZfZG1hYnVmX3ByaXYgKnByaXYsIHN0cnVjdCBkZXZpY2UgKmRldiwKIAog
CS8qIE5vdyBjb252ZXJ0IHNndCB0byBhcnJheSBvZiBwYWdlcyBhbmQgY2hlY2sgZm9yIHBhZ2Ug
dmFsaWRpdHkuICovCiAJaSA9IDA7Ci0JZm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJnNnX2l0
ZXIsIHNndC0+bmVudHMsIDApIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX3BhZ2Uoc2d0LCAmc2dfaXRl
ciwgMCkgewogCQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZzZ19pdGVy
KTsKIAkJLyoKIAkJICogQ2hlY2sgaWYgcGFnZSBpcyB2YWxpZDogdGhpcyBjYW4gaGFwcGVuIGlm
IHdlIGFyZSBnaXZlbgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
