Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A281FF86C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:01:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 377196659C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:01:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2A7A066597; Thu, 18 Jun 2020 16:01:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D5FA666D3;
	Thu, 18 Jun 2020 15:42:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D20D66588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09C0F66591; Thu, 18 Jun 2020 15:40:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 62E89665A6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:31 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154030euoutp0297ec324dbe2ec4fbe9293bcf1d7d813b~ZrZxvYRuF1470214702euoutp02Q
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154030euoutp0297ec324dbe2ec4fbe9293bcf1d7d813b~ZrZxvYRuF1470214702euoutp02Q
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154030eucas1p1df9f9ba2d8f63e37ed6574baa6b41401~ZrZxezWVE0074000740eucas1p1D;
 Thu, 18 Jun 2020 15:40:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E7.1F.61286.EEA8BEE5; Thu, 18
 Jun 2020 16:40:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154029eucas1p274f275e89dc985634bbd309823ad0f0d~ZrZxHjXT80608706087eucas1p2Z;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154029eusmtrp1efb981a9bc98b975c3e96d2e9e3a2289~ZrZxGzYWS2169821698eusmtrp1k;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-dc-5eeb8aeec338
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2B.E9.07950.DEA8BEE5; Thu, 18
 Jun 2020 16:40:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154029eusmtip1cf112f2b00c4845d77120cb512973c04~ZrZwbXNA50864308643eusmtip1M;
 Thu, 18 Jun 2020 15:40:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:44 +0200
Message-Id: <20200618153956.29558-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7rvul7HGVw7wm/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjuKySUnNySxLLdK3S+DK+Nb9lL2gT7xia8sv9gbGBcJdjJwcEgImEkf3z2ft
 YuTiEBJYwSix5uBnNgjnC6PEwqlXGSGcz4wSd3ufsMO0vHx+DqpqOaPElTfbWOFaOj4uZQSp
 YhMwlOh628UGYosItDJKnOjlASliFvjLJHHp8SRWkISwQJDE2nmHmUBsFgFViXU/5oE18ArY
 STxa9I4JYp28xOoNB5hBbE6g+OnjrWDbJAQOsUs8/dIFVeQisah9IpQtLPHq+BaoW2UkTk/u
 YYFoaGaUeHhuLTuE08MocblpBiNElbXEnXO/gFZzAN2nKbF+lz5E2FHiXt8mRpCwhACfxI23
 giBhZiBz0rbpzBBhXomONiGIajWJWcfXwa09eOESM4TtIbH48CWwRUICExklbl1LnMAoPwth
 1wJGxlWM4qmlxbnpqcWGeanlesWJucWleel6yfm5mxiBqen0v+OfdjB+vZR0iFGAg1GJh9ch
 /HWcEGtiWXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xSnOwKInzGi96GSskkJ5Y
 kpqdmlqQWgSTZeLglGpgtPZoK9vKO/PDjoMTWT5fajvOLT75rPH6exHblf8e3cbteevg9L7y
 5ZeaCrKnl7ix//LT1ZsyX7lSTa3W/9zFui3a4f6y0SI6q58vc5u7zqpVlnl1gHZuc07B51su
 BvMUA52nXMy2Vl8dckMj7EnPHG3JZaJe842Cly9Kfl3WmJwnovRG/MIDJZbijERDLeai4kQA
 AgRoZ0kDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7pvu17HGby5aWLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DL+Nb9lL2gT7xia8sv9gbGBcJdjJwcEgImEi+fn2PrYuTiEBJYyihxZH0jI0RCRuLk
 tAZWCFtY4s+1LqiiT4wSDzfPZANJsAkYSnS9hUiICHQySkzr/sgOkmAWaGaWOP+yFsQWFgiQ
 WH/iIFicRUBVYt2PeWDNvAJ2Eo8WvWOC2CAvsXrDAWYQmxMofvp4K9hmIQFbiecf2tgmMPIt
 YGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgp24793LKDsetd8CFGAQ5GJR7eFyGv44RY
 E8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnAKM4riTc0NTS3
 sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cC45fRs5a9lRQ57tS6s5W9+pSJs
 Zrd6qrnJpC9PXX5u62TJn/PHMY3/RaOg2mW9z3O/2iZnuasse+f15rqoygWHBW9emGydxMmd
 U8617YTFtCuf73U2vjzgc7u+4i+7d9HkstN/ReU1vCq3FF4TKdnz8bwX04qAeG1mzqB19lbR
 RyJfSK7zm2arxFKckWioxVxUnAgANn8hQqoCAAA=
X-CMS-MailID: 20200618154029eucas1p274f275e89dc985634bbd309823ad0f0d
X-Msg-Generator: CA
X-RootMTR: 20200618154029eucas1p274f275e89dc985634bbd309823ad0f0d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154029eucas1p274f275e89dc985634bbd309823ad0f0d
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154029eucas1p274f275e89dc985634bbd309823ad0f0d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 23/36] drm: vmwgfx: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvbGFuZCBTY2hlaWRlZ2dlciA8
c3JvbGFuZEB2bXdhcmUuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0
bV9idWZmZXIuYyB8IDE3ICsrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF90dG1fYnVmZmVyLmMKaW5kZXggYmYwYmM0Njk3OTU5Li40OWVkNmFkZDY5NjkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKQEAgLTM2Miw4ICszNjIsNyBA
QCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2
bXdfdHQpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5kZXZfcHJpdi0+ZGV2LT5k
ZXY7CiAKLQlkbWFfdW5tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2wsIHZtd190dC0+c2d0Lm5l
bnRzLAotCQlETUFfQklESVJFQ1RJT05BTCk7CisJZG1hX3VubWFwX3NndGFibGUoZGV2LCB2bXdf
dHQtPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCXZtd190dC0+c2d0Lm5lbnRzID0gdm13
X3R0LT5zZ3Qub3JpZ19uZW50czsKIH0KIApAQCAtMzgzLDE2ICszODIsOCBAQCBzdGF0aWMgdm9p
ZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2bXdfdHQpCiBzdGF0
aWMgaW50IHZtd190dG1fbWFwX2Zvcl9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIHsK
IAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSB2bXdfdHQtPmRldl9wcml2LT5kZXYtPmRldjsKLQlpbnQg
cmV0OwotCi0JcmV0ID0gZG1hX21hcF9zZyhkZXYsIHZtd190dC0+c2d0LnNnbCwgdm13X3R0LT5z
Z3Qub3JpZ19uZW50cywKLQkJCSBETUFfQklESVJFQ1RJT05BTCk7Ci0JaWYgKHVubGlrZWx5KHJl
dCA9PSAwKSkKLQkJcmV0dXJuIC1FTk9NRU07CiAKLQl2bXdfdHQtPnNndC5uZW50cyA9IHJldDsK
LQotCXJldHVybiAwOworCXJldHVybiBkbWFfbWFwX3NndGFibGUoZGV2LCB2bXdfdHQtPnNndCwg
RE1BX0JJRElSRUNUSU9OQUwsIDApOwogfQogCiAvKioKQEAgLTQ0OSwxMCArNDQwLDEwIEBAIHN0
YXRpYyBpbnQgdm13X3R0bV9tYXBfZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2bXdfdHQpCiAJCWlm
ICh1bmxpa2VseShyZXQgIT0gMCkpCiAJCQlnb3RvIG91dF9zZ19hbGxvY19mYWlsOwogCi0JCWlm
ICh2c2d0LT5udW1fcGFnZXMgPiB2bXdfdHQtPnNndC5uZW50cykgeworCQlpZiAodnNndC0+bnVt
X3BhZ2VzID4gdm13X3R0LT5zZ3Qub3JpZ19uZW50cykgewogCQkJdWludDY0X3Qgb3Zlcl9hbGxv
YyA9CiAJCQkJc2dsX3NpemUgKiAodnNndC0+bnVtX3BhZ2VzIC0KLQkJCQkJICAgIHZtd190dC0+
c2d0Lm5lbnRzKTsKKwkJCQkJICAgIHZtd190dC0+c2d0Lm9yaWdfbmVudHMpOwogCiAJCQl0dG1f
bWVtX2dsb2JhbF9mcmVlKGdsb2IsIG92ZXJfYWxsb2MpOwogCQkJdm13X3R0LT5zZ19hbGxvY19z
aXplIC09IG92ZXJfYWxsb2M7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
