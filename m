Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7BA25DA7D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:52:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3F4C66751
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:52:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D68E366759; Fri,  4 Sep 2020 13:52:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FDF16677B;
	Fri,  4 Sep 2020 13:36:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A24DE665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 95A01665CB; Fri,  4 Sep 2020 13:36:20 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1BB04665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:06 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133505euoutp014ac93a3c0cc780dcfc1532cc58c88ddd~xmAiZOQtb0722007220euoutp01p
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133505euoutp014ac93a3c0cc780dcfc1532cc58c88ddd~xmAiZOQtb0722007220euoutp01p
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133505eucas1p26123743dd9542f9b2808ba52cdc2d1b5~xmAiHT8Sw0693606936eucas1p2Q;
 Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 0D.66.05997.882425F5; Fri,  4
 Sep 2020 14:35:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133504eucas1p10e30fbcb69c2c0627ab7a83fb1b69759~xmAhueCER0117101171eucas1p1q;
 Fri,  4 Sep 2020 13:35:04 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133504eusmtrp14446130178a02ad84a8ee9bd89bdf48d~xmAht28Ev0766507665eusmtrp1C;
 Fri,  4 Sep 2020 13:35:04 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-6b-5f524288ec72
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F5.BE.06314.882425F5; Fri,  4
 Sep 2020 14:35:04 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133504eusmtip1308c574468bbe4478fb8939435cfda1e~xmAhKhkRC1939819398eusmtip14;
 Fri,  4 Sep 2020 13:35:04 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:59 +0200
Message-Id: <20200904131711.12950-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7djPc7odTkHxBpd3Wlv0njvJZLFxxnpW
 i//bJjJbXPn6ns3iQONlRouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfNYu2Ru+wWBz88YXXg
 8Wh6f4zNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPyjeWMHrtvNrB59G1Zxejx
 eZNcAHcUl01Kak5mWWqRvl0CV8bHg29YCxaJVMy9uoCxgfGdQBcjJ4eEgIlE2+GNTF2MXBxC
 AisYJU7vX8sC4XxhlFh8eBE7hPOZUeL205MsMC2PGg8zQiSWM0q09X9khGtZ8205O0gVm4Ch
 RNfbLjYQW0SglVHiRC8PSBGzwE4miUWdexhBEsICARL3e5+D2SwCqhLX276zgti8AnYSt54t
 Z4JYJy+xesMBZhCbEyi+dcYTVpBBEgL72CWmXPnKCFHkIrFz9SY2CFtY4tXxLewQtozE6ck9
 LBANzYwSD8+tZYdwehglLjfNgOq2lrhz7hdQNwfQfZoS63fpQ4QdJVY9AoUAB5DNJ3HjrSBI
 mBnInLRtOjNEmFeio00IolpNYtbxdXBrD164xAxhe0i8654BDceJjBLdq5ayT2CUn4WwbAEj
 4ypG8dTS4tz01GKjvNRyveLE3OLSvHS95PzcTYzApHT63/EvOxh3/Uk6xCjAwajEw8tgHxQv
 xJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8xotexgoJpCeWpGan
 phakFsFkmTg4pRoYVZc7BVxb/4zNO1tT9OXLC+aSUdyN+d5WokoOEe0CMU9uNovpf3p7Qldy
 berHino9//xPExcL3C71kazW0X24VFSttNX9powL940sbb3lJ/8rP19ffbdTO4T9fLLfk57l
 R2ZrFnFHRbp+vvLyzKoVMxOmiQafvavffXDZIe2FOrrfDi5vFJuixFKckWioxVxUnAgA65Sr
 5kYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7odTkHxBte3q1j0njvJZLFxxnpW
 i//bJjJbXPn6ns3iQONlRouVq48yWSzYb23x5cpDJotNj6+xWlzeNYfNYu2Ru+wWBz88YXXg
 8Wh6f4zNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPyjeWMHrtvNrB59G1Zxejx
 eZNcAHeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2C
 XsbHg29YCxaJVMy9uoCxgfGdQBcjJ4eEgInEo8bDjF2MXBxCAksZJVbNbGGHSMhInJzWwAph
 C0v8udbFBlH0iVFiztq9LCAJNgFDia63EAkRgU5GiWndH9lBHGaB/UwSl4+cAhslLOAnsWRC
 P5jNIqAqcb3tO9hYXgE7iVvPljNBrJCXWL3hADOIzQkU3zrjCViNkICtxIc5i1kmMPItYGRY
 xSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgj24793LyD8dLG4EOMAhyMSjy8DPZB8UKsiWXF
 lbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5Hxg/OaVxBuaGppbWBqa
 G5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCUYmypO7SR9bNN7GUV3gmz99tYTmwx
 LwwXmHG6Yd1N7gjbr/1/Ntlf453gb3clYes0dhneIxavn3ncmMyW7GntO919QmPTqV2H9luq
 Naklbjxo07nl4cvL3g+C7629u7xrm53hYt/fc6Y8er+oYs8iR2/7hmdaRhNmdzcnlS7oq58t
 8ps11JFbiaU4I9FQi7moOBEA30xTaqcCAAA=
X-CMS-MailID: 20200904133504eucas1p10e30fbcb69c2c0627ab7a83fb1b69759
X-Msg-Generator: CA
X-RootMTR: 20200904133504eucas1p10e30fbcb69c2c0627ab7a83fb1b69759
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133504eucas1p10e30fbcb69c2c0627ab7a83fb1b69759
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133504eucas1p10e30fbcb69c2c0627ab7a83fb1b69759@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 18/30] drm: v3d: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmlj
QGFuaG9sdC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgfCAxMyArKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jIGIvZHJpdmVycy9n
cHUvZHJtL3YzZC92M2RfbW11LmMKaW5kZXggM2I4MWVhMjhjMGJiLi41YTQ1MzUzMjkwMWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS92M2QvdjNkX21tdS5jCkBAIC05MCwxOCArOTAsMTcgQEAgdm9pZCB2M2RfbW11X2luc2Vy
dF9wdGVzKHN0cnVjdCB2M2RfYm8gKmJvKQogCXN0cnVjdCB2M2RfZGV2ICp2M2QgPSB0b192M2Rf
ZGV2KHNobWVtX29iai0+YmFzZS5kZXYpOwogCXUzMiBwYWdlID0gYm8tPm5vZGUuc3RhcnQ7CiAJ
dTMyIHBhZ2VfcHJvdCA9IFYzRF9QVEVfV1JJVEVBQkxFIHwgVjNEX1BURV9WQUxJRDsKLQl1bnNp
Z25lZCBpbnQgY291bnQ7Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2w7CisJc3RydWN0IHNnX2Rt
YV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CiAKLQlmb3JfZWFjaF9zZyhzaG1lbV9vYmotPnNndC0+c2ds
LCBzZ2wsIHNobWVtX29iai0+c2d0LT5uZW50cywgY291bnQpIHsKLQkJdTMyIHBhZ2VfYWRkcmVz
cyA9IHNnX2RtYV9hZGRyZXNzKHNnbCkgPj4gVjNEX01NVV9QQUdFX1NISUZUOworCWZvcl9lYWNo
X3NndGFibGVfZG1hX3BhZ2Uoc2htZW1fb2JqLT5zZ3QsICZkbWFfaXRlciwgMCkgeworCQlkbWFf
YWRkcl90IGRtYV9hZGRyID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7CisJ
CXUzMiBwYWdlX2FkZHJlc3MgPSBkbWFfYWRkciA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7CiAJCXUz
MiBwdGUgPSBwYWdlX3Byb3QgfCBwYWdlX2FkZHJlc3M7CiAJCXUzMiBpOwogCi0JCUJVR19PTihw
YWdlX2FkZHJlc3MgKyAoc2dfZG1hX2xlbihzZ2wpID4+IFYzRF9NTVVfUEFHRV9TSElGVCkgPj0K
KwkJQlVHX09OKHBhZ2VfYWRkcmVzcyArIChQQUdFX1NJWkUgPj4gVjNEX01NVV9QQUdFX1NISUZU
KSA+PQogCQkgICAgICAgQklUKDI0KSk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNnX2RtYV9sZW4o
c2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKKwkJZm9yIChpID0gMDsgaSA8IFBBR0Vf
U0laRSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKIAkJCXYzZC0+cHRbcGFnZSsrXSA9IHB0
ZSArIGk7CiAJfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
