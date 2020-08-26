Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BCE2527DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:54:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1009E65FCE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:54:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F226D6601F; Wed, 26 Aug 2020 06:54:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 848DC666F3;
	Wed, 26 Aug 2020 06:37:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 36C95617F1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 29AB9666E2; Wed, 26 Aug 2020 06:36:51 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 4C320617F1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:43 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063542euoutp014973ed7765c70e0baa2daef4d2823ccd~uvezJp3mS2034920349euoutp01N
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063542euoutp014973ed7765c70e0baa2daef4d2823ccd~uvezJp3mS2034920349euoutp01N
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063542eucas1p2d744ea2a32c922ccc03568ced3f944fe~uveyxrZIP0398703987eucas1p2l;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 6B.33.06456.DB2064F5; Wed, 26
 Aug 2020 07:35:41 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063541eucas1p2ec5d8a396f52ce690641659b74819e60~uveyWgr6g0403504035eucas1p23;
 Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063541eusmtrp18bc45783e65357b9f4118828fd8aae34~uveyV20w51167511675eusmtrp1H;
 Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-da-5f4602bd1c49
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.D0.06314.DB2064F5; Wed, 26
 Aug 2020 07:35:41 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063540eusmtip2e9e577d407a57c4136d8c0e328d8b7e7~uvextSb830092600926eusmtip2D;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:07 +0200
Message-Id: <20200826063316.23486-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djP87p7mdziDe7esLHoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3isklJzcksSy3St0vgynjzbjNbwUmxiqbHjewN
 jFuEuhg5OSQETCT6274zdzFycQgJrGCUaJk7C8r5wijx8UIHK4TzmVFi8btmJpiW5VduQyWW
 M0ps/raRDa5lVd9ORpAqNgFDia63XWwgtohAK6PEiV4ekCJmgW5mialrV7GCJIQFgiSWbH/O
 DGKzCKhKfDz5HczmFbCTWHLiKTPEOnmJ1RsOgNmcQPHj3f1g2yQEbrFLzGu6ywZR5CJx8f4a
 dghbWOLV8S1QtozE6ck9LBANzYwSD8+tZYdwehglLjfNYISospa4c+4X0CQOoPs0Jdbv0gcx
 JQQcJXY804Iw+SRuvBUEKWYGMidtm84MEeaV6GiDBqSaxKzj6+C2HrxwCep8D4k1E46A2UIC
 Exkluh4wTWCUn4WwagEj4ypG8dTS4tz01GLDvNRyveLE3OLSvHS95PzcTYzAtHX63/FPOxi/
 Xko6xCjAwajEw7uAzTVeiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYpTlY
 lMR5jRe9jBUSSE8sSc1OTS1ILYLJMnFwSjUwhp3UaLrmcXJ7mXXd0ua2DNtTTAExuRVhhb7X
 NxyMVn/fHNN52r7JbVJM4exNu42O5H3z0lhiYaP+4EPzSmv+86orc9X550it7AqROBHpLMt1
 baNqlcqPvZ8uvEw+5bzqCW/n+YURh1Yn59St/f9y8YYDqZzbPn6TfM9yr7bjx9yHO99p6MZ0
 K7EUZyQaajEXFScCAHZPlrZXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xe7p7mdziDZ5Ml7PoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQz
 NDaPtTIyVdK3s0lJzcksSy3St0vQy3jzbjNbwUmxiqbHjewNjFuEuhg5OSQETCSWX7nN2sXI
 xSEksJRRYsfRS+wQCRmJk9MaWCFsYYk/17rYIIo+MUrcOd3EBJJgEzCU6HoLkRAR6GSUmNb9
 kR3EYRaYzCzxbPV1sCphgQCJV32PwMayCKhKfDz5nRnE5hWwk1hy4ikzxAp5idUbDoDZnEDx
 4939bCC2kICtxOm1M5gnMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERhJ24793LyD
 8dLG4EOMAhyMSjy8C9hc44VYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU
 6KiJzFKiyfnAKM8riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cBY
 VHTT5mZN82rn5+Fd7LMu315sP+9UV3NujXpO1eG5ag4zzu585TTrbeGBN9Fi+qJuT5Y3bPp8
 69SNjR6S4ekin34a39nrYDdRs8h8bYes2zIF0cDzYac9Wh6tZLKvVfPMnjc/b/ZDl9sb+abe
 mpDi2PM6PTh0+bHtscJeMY0yV9VnFc00l2JSYinOSDTUYi4qTgQAzZ8ga7oCAAA=
X-CMS-MailID: 20200826063541eucas1p2ec5d8a396f52ce690641659b74819e60
X-Msg-Generator: CA
X-RootMTR: 20200826063541eucas1p2ec5d8a396f52ce690641659b74819e60
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063541eucas1p2ec5d8a396f52ce690641659b74819e60
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063541eucas1p2ec5d8a396f52ce690641659b74819e60@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 23/32] xen: gntdev: fix common struct
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
