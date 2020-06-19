Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B512F2006DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:41:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D21876658C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:41:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C7074665DA; Fri, 19 Jun 2020 10:41:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17761665DF;
	Fri, 19 Jun 2020 10:37:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 98E85665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 743BF665BB; Fri, 19 Jun 2020 10:37:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E7349665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:57 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103657euoutp0125dcd1b010758765e9fb6ee185e0e6ae~Z66BZnQ0X1761017610euoutp010
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103657euoutp0125dcd1b010758765e9fb6ee185e0e6ae~Z66BZnQ0X1761017610euoutp010
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656eucas1p1f2ae232d1d3faa8f34f5499aa5d2823c~Z66BJN0__0708707087eucas1p16;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4E.8D.05997.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103656eucas1p262a08b701244745a547a0c38f26f83af~Z66Aq9YR93081430814eucas1p2i;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656eusmtrp164e0beefe9f35499595aa7223767f121~Z66AqWbCW0949709497eusmtrp18;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-d2-5eec954863ee
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 70.0B.06017.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103655eusmtip28c45258d4d4a090cb99ea354579f1e6b~Z66ADrshs0302303023eusmtip2K;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:05 +0200
Message-Id: <20200619103636.11974-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djPc7oeU9/EGWw4YGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBHcdmkpOZklqUW6dslcGV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhIvJ0ylbmLkYtD
 SGAFo0R3yx0mCOcLo8Sm541Qmc+MEgvXTWWEabn76CkbiC0ksJxRYvGTRLiOnx0XWUESbAKG
 El1vu8CKRARaGSVO9PKAFDELHGCSaHv3GmgHB4ewQJDE7HZtkBoWAVWJxq7VYL28ArYSfz9u
 g1omL7F6wwFmEJtTwE7idctBVpA5EgL72CXu3f3ABlHkIjH77QIWCFtY4tXxLewQtozE6ck9
 LBANzYwSD8+tZYdwehglLjfNgFphLXHn3C82kIuYBTQl1u/Shwg7SvxvfsEMEpYQ4JO48VYQ
 JMwMZE7aNh0qzCvR0SYEUa0mMev4Ori1By9cYoawPSRO7NnACAmgiYwSyzsusE5glJ+FsGwB
 I+MqRvHU0uLc9NRio7zUcr3ixNzi0rx0veT83E2MwIR0+t/xLzsYd/1JOsQowMGoxMP7IuR1
 nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xovehkrJJCeWJKa
 nZpakFoEk2Xi4JRqYFz29vWuDUtXcPf9a3p8ymvOC7V3WS9eZbF7GhZdN3ij3irmwRSb7nhY
 8HR6/c7Ckm8rcyqt9LdOqPHdNfWv7aWfD9M5nyezBsfvFVmaGsB1fbILw9olBQIuDeL3CoNU
 vgZM+3c7nDmv/6H90jkT5/ZPXBAVN6Xa+wTvLsc/zBX/Xu+N6WrIllFiKc5INNRiLipOBABb
 TQk4RAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xe7oeU9/EGXx4LmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GV8nzSBveC8eMWdmfOYGxj3CHcxcnJICJhI3H30lA3EFhJYyiix+Jg2RFxG4uS0BlYIW1ji
 z7UuoBouoJpPjBIz2x+DJdgEDCW63kIkRAQ6GSWmdX9kB3GYBY4xSSz89ZGli5GDQ1ggQGLq
 bx2QBhYBVYnGrtVgzbwCthJ/P25jhNggL7F6wwFmEJtTwE7idctBVoiLbCWWL3jPPIGRbwEj
 wypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzA+Nh27OeWHYxd74IPMQpwMCrx8L4IeR0nxJpY
 VlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOMpkBHTWSWEk3OB8ZuXkm8oamhuYWl
 obmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxsPJvcyZ4q6Tq3Ytt3znVCF0KUq3
 96Dh59rtfadfNeV0FN/KtfwqtyRueozXrNr0n2afnjCb8ecEc2RFfI/0eBWjuq94/q8ExmCL
 zskc+yLmSrDziyqfWX6kqTev8HFe3banhc9/SRuF/XfavO9ep0O/1bsN3I8m/jl1OuVbQZx5
 X/T/lrQ8JZbijERDLeai4kQARp17FKUCAAA=
X-CMS-MailID: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
X-Msg-Generator: CA
X-RootMTR: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103656eucas1p262a08b701244745a547a0c38f26f83af
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103656eucas1p262a08b701244745a547a0c38f26f83af@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 05/36] drm: armada: fix common struct
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
