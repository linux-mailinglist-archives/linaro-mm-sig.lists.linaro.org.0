Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F49200727
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:46:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7089665B0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:46:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B81BA665E3; Fri, 19 Jun 2020 10:46:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3A0366603;
	Fri, 19 Jun 2020 10:37:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B9A97665BE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A3C41665B0; Fri, 19 Jun 2020 10:37:09 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4E187665B0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:01 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103700euoutp025a8df454557534d9024ee2678c9f0ec2~Z66EjlRhZ2242122421euoutp02R
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103700euoutp025a8df454557534d9024ee2678c9f0ec2~Z66EjlRhZ2242122421euoutp02R
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103700eucas1p1d0eaf478d3169376d5c1ae4142fe0012~Z66EMseGC0706007060eucas1p1n;
 Fri, 19 Jun 2020 10:37:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id ED.8C.06318.C459CEE5; Fri, 19
 Jun 2020 11:37:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6~Z66D1x1_M0550605506eucas1p1n;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eusmtrp1cc184c2cf49a2fe9b3ebee1f26d43797~Z66D1GWMR0949709497eusmtrp1F;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-5a-5eec954c959f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.0B.06017.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eusmtip2ee4aded76d4a08a25256a4a1d9badba6~Z66DN1fjk0247402474eusmtip2Z;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:10 +0200
Message-Id: <20200619103636.11974-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djPc7o+U9/EGeybwGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDuKyyYlNSezLLVI3y6BK+PA8/+MBfekKt4fCmlgnCfWxcjJISFgIvHx02Xm
 LkYuDiGBFYwSp5qvMUI4XxglTnc3skM4nxklrr7ayArTcvXwajaIxHJGie6ONia4lnuT/jOD
 VLEJGEp0ve1iA7FFBFoZJU708oAUMQtcZpKYf7SJBSQhLBAg8anpGSOIzSKgKrHw5D+wFbwC
 dhL75l5kg1gnL7F6wwGwoZxA8dctB6HOOMYu0fg8FMJ2kTjX+5URwhaWeHV8CzuELSNxenIP
 C8hiCYFmRomH59ayQzg9jBKXm2ZAdVhL3Dn3C2gbB9B5mhLrd+lDhB0lPt09DxaWEOCTuPFW
 ECTMDGRO2jadGSLMK9HRJgRRrSYx6/g6uLUHL1xihrA9JPp/zQZ7RUhgIqPEvhcBExjlZyHs
 WsDIuIpRPLW0ODc9tdg4L7Vcrzgxt7g0L10vOT93EyMwMZ3+d/zrDsZ9f5IOMQpwMCrx8L4I
 eR0nxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8xotexgoJpCeW
 pGanphakFsFkmTg4pRoYu9Z5uW8xvzzp/NFmxglWKfmzww8lFTZ5xLEVcBVc3u96gZ9faqlT
 w4IFs/pvxlxKDXDYeIFp3WIhS93SpEXJpccXLE0IVLm9YuvHmc2P67gC/FWlVFYc0vAXnn1i
 s9WVdOH/Ue4On08syL/8eOqnwyFZUy0DqoO+Lnhkn/Db9GXhP6/C7Td4lViKMxINtZiLihMB
 KRwfp0gDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7reU9/EGSw4omfRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PA8/+MBfekKt4fCmlgnCfWxcjJISFgInH18Gq2LkYuDiGBpYwSJ49sYodIyEic
 nNbACmELS/y51gVV9IlRoufPPxaQBJuAoUTXW4iEiEAno8S07o/sIA6zwG0miTNzJzB3MXJw
 CAv4ScztNgBpYBFQlVh48h/YVF4BO4l9cy+yQWyQl1i94QAziM0JFH/dchCsRkjAVmL5gvfM
 Exj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMlG3Hfm7Zwdj1LvgQowAHoxIP74uQ
 13FCrIllxZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8YBTnlcQb
 mhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgnL6TPWxPnGP8ss+ROVOe
 J5mV7Pnc/HpFjE9lAPehy+eXT3Pad9Rae9YxkRZj7kXMCysOs9/lP2+ZGvxTwGqxlqfrAsn7
 7zbOap78a+a+xbxKa6OPT/pQlBg9N6op4XDzVNlZSRsDw9P0WJWU/j7VtFj11azewejaGRsx
 qbPap1OLUj/+DmviU2Ipzkg01GIuKk4EAI22K9KqAgAA
X-CMS-MailID: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
X-Msg-Generator: CA
X-RootMTR: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103659eucas1p15d57f701ea85df16e953bfd5098423f6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 10/36] drm: lima: fix common struct
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
