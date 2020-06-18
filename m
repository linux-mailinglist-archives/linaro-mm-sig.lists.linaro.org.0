Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F33721FF7A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:44:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F24B866538
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:44:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E0F1166572; Thu, 18 Jun 2020 15:44:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF23666588;
	Thu, 18 Jun 2020 15:40:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5529566588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 344F5665AA; Thu, 18 Jun 2020 15:40:27 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4DBE566588
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:19 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154018euoutp02aa405c640edb31f71e9f9aa5288d68a6~ZrZmDX6U41314513145euoutp022
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154018euoutp02aa405c640edb31f71e9f9aa5288d68a6~ZrZmDX6U41314513145euoutp022
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154017eucas1p2d0dee3fb39ced9e7e6331cb55d1c6dc4~ZrZl3x_4M2977729777eucas1p28;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0E.0F.61286.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48~ZrZlXrvqK0501005010eucas1p2U;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154017eusmtrp2ec7be9572e641136a73192cbea718618~ZrZlXF-FH0399203992eusmtrp2S;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-bc-5eeb8ae1d246
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D2.EE.08375.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154016eusmtip187a63c1b6f07d44000b73a84c8b6b462~ZrZky0MRI0765807658eusmtip1Y;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:26 +0200
Message-Id: <20200618153956.29558-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTUQDm3Lu7XXWL62Z5UkkaVCTlgwxuaKJRcIkgsx9SkTr1opabsqll
 f1yaZvOBTioT8ZGCpTNrmqnNfGROsWZOUUOtlpbU8v1KC23Xq/XvO9/jfB+Hg6NCLeaAR8ni
 aLlMEi3mWnPqO1cNh00qc5D7HeNRMsvQjZDP8mswcqM+FyUHlma45OOqNwhZ0uJFLg6YEFI7
 PoiR/U2FXLL9bjMgqzvGeGTb7ATmy6c0RRpA9Q/2oVTzcgmHerH8GaM+ZegRqrY8iRpZH0ep
 vOEKQL38oORS2XWVgFrQ7vG3uWjtHU5HRyXQcjefEOvIFXUOL7bX/vrogyJUCXQiFbDCIeEJ
 17qMXBWwxoXEIwCH57oxRhASiwCmzIexwgKAHYPPuduJLI0JYYUKAE3qVZQ9WBL96maEcXEJ
 D6iaUm0m7IhUALuy+IwJJVoRmDZt3jSJiADYWDazaeIQ++CsLpPHYAFxHJYvTAG2zhlWPW1F
 GWxF+MAefSrGXASJVzw4dG+Bx5pOwjGldmufCP7Q123xTnCjsRhhAymWrYZqHnvItGxNzt+q
 8IKjhjVLGrfsOwhrmtxY2g/+utmPMDQkdsDhKVuGRi1QXX8fZWkBTE8Tsu79sED/5F9t23sj
 ymIKFg9PbD1wLoCqmgE0BzgX/C8rAaAS2NPxCmkErfCQ0ddcFRKpIl4W4RoWI9UCy0/qWdfP
 N4AlY2g7IHAg5gt8A81BQkySoEiUtgOIo2I7wYl3PUFCQbgk8QYtjwmWx0fTinbgiHPE9oIj
 D79fFhIRkjj6Kk3H0vJtFcGtHJQgxMlf7uhs7qstzD8QYnOspcxzMtxpVwsidpj8cuuMi3xn
 XtafQ9KWkUuh6T/zbX4Htiq/lZtVa5q5RFQ9fyXpbXp2o+3KBb+61qaMjq/q0r1DIv9gfw1p
 7Dnvfc403Xw6MjTOLiHgbMNKp42Er3mtu70oGnfvndxdeupjbLIuDhFzFJESDxdUrpD8BfW/
 n0dFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7oPu17HGSz4JmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhI9K55yNTFyMUhJLCUUWLJtf8sEAkZiZPTGlgh
 bGGJP9e62CCKPjFKzOnZxASSYBMwlOh6C5EQEehklJjW/ZEdxGEWOMYksfDXR7BRwgIBEqdW
 H2QGsVkEVCU+7OlhB7F5BWwllnx+ywixQl5i9YYDYDWcAnYSp4+3gq0WAqp5/qGNbQIj3wJG
 hlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMbLt2M/NOxgvbQw+xCjAwajEw/si5HWcEGti
 WXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5Hxi/eSXxhqaG5haW
 hubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGDtlZrVsPrJfO6HD7F3xuce7Zj2f
 a6DZ0fTvqfhr+T+/59k7lB4/sy232vJMnMCcpO2ZGkUnJ9/clnRZS0z6m1HoUoN6H1cGjxXL
 Oi9xNHvUqSklvpLUd1i3eE5msf/ScE3NwN7/e9Q6DmW8EWR0n5N5U6fWtMvYP0Yn3Ipbyalw
 deN2gScLlFiKMxINtZiLihMBBm6796cCAAA=
X-CMS-MailID: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
X-Msg-Generator: CA
X-RootMTR: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154017eucas1p25f266fbeb2273d9ed01b5196d698ad48@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 05/36] drm: armada: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2Fy
bWFkYV9nZW0uYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRh
L2FybWFkYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCmluZGV4
IDgwMDU2MTRkMmU2Yi4uYmVkZDg5MzdkOGExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YXJtYWRhL2FybWFkYV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9n
ZW0uYwpAQCAtMzk1LDcgKzM5NSw3IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCiAJCW1hcHBpbmcgPSBkb2JqLT5vYmou
ZmlscC0+Zl9tYXBwaW5nOwogCi0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgY291bnQsIGkp
IHsKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKSB7CiAJCQlzdHJ1Y3QgcGFnZSAq
cGFnZTsKIAogCQkJcGFnZSA9IHNobWVtX3JlYWRfbWFwcGluZ19wYWdlKG1hcHBpbmcsIGkpOwpA
QCAtNDA3LDggKzQwNyw4IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCQkJc2dfc2V0X3BhZ2Uoc2csIHBhZ2UsIFBBR0Vf
U0laRSwgMCk7CiAJCX0KIAotCQlpZiAoZG1hX21hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2ws
IHNndC0+bmVudHMsIGRpcikgPT0gMCkgewotCQkJbnVtID0gc2d0LT5uZW50czsKKwkJaWYgKGRt
YV9tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApKSB7CisJCQludW0gPSBjb3Vu
dDsKIAkJCWdvdG8gcmVsZWFzZTsKIAkJfQogCX0gZWxzZSBpZiAoZG9iai0+cGFnZSkgewpAQCAt
NDE4LDcgKzQxOCw3IEBAIGFybWFkYV9nZW1fcHJpbWVfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLAogCiAJCXNnX3NldF9wYWdlKHNndC0+c2dsLCBkb2JqLT5w
YWdlLCBkb2JqLT5vYmouc2l6ZSwgMCk7CiAKLQkJaWYgKGRtYV9tYXBfc2coYXR0YWNoLT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDApCisJCWlmIChkbWFfbWFwX3NndGFibGUo
YXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKIAkJCWdvdG8gZnJlZV90YWJsZTsKIAl9IGVsc2Ug
aWYgKGRvYmotPmxpbmVhcikgewogCQkvKiBTaW5nbGUgY29udGlndW91cyBwaHlzaWNhbCByZWdp
b24gLSBubyBzdHJ1Y3QgcGFnZSAqLwpAQCAtNDQ5LDExICs0NDksMTEgQEAgc3RhdGljIHZvaWQg
YXJtYWRhX2dlbV9wcmltZV91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCwKIAlpbnQgaTsKIAogCWlmICghZG9iai0+bGluZWFyKQotCQlkbWFfdW5tYXBfc2co
YXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOworCQlkbWFfdW5tYXBfc2d0
YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApOwogCiAJaWYgKGRvYmotPm9iai5maWxwKSB7
CiAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Ci0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywg
c2d0LT5uZW50cywgaSkKKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKQogCQkJcHV0
X3BhZ2Uoc2dfcGFnZShzZykpOwogCX0KIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
