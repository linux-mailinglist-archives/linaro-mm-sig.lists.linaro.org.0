Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCB320F0BB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2020 10:45:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F6B16189D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2020 08:45:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E0E566008; Tue, 30 Jun 2020 08:45:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE74E618C4;
	Tue, 30 Jun 2020 08:44:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2740661885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:44:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1359C618C4; Tue, 30 Jun 2020 08:44:50 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4F8E061885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:44:48 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200630084446euoutp02b1d90b81596ae42efa8cb8e0f51f3fc0~dReN8gGOR0638506385euoutp02Y
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2020 08:44:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200630084446euoutp02b1d90b81596ae42efa8cb8e0f51f3fc0~dReN8gGOR0638506385euoutp02Y
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200630084446eucas1p13b09fade29608137f68bae8f0b60e780~dReNjgNmy1186511865eucas1p1M;
 Tue, 30 Jun 2020 08:44:46 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F5.A6.06318.E7BFAFE5; Tue, 30
 Jun 2020 09:44:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200630084445eucas1p1e85857b5d046648578f1447f8ba521a5~dReNOvCZB1180111801eucas1p1G;
 Tue, 30 Jun 2020 08:44:45 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200630084445eusmtrp1c40012032f3073b4340ec8d12cbfa4d4~dReNN-2SD2091120911eusmtrp1D;
 Tue, 30 Jun 2020 08:44:45 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-ed-5efafb7eab0e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E3.D3.06314.D7BFAFE5; Tue, 30
 Jun 2020 09:44:45 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200630084445eusmtip16232b756e66744d9f85ca187702d2593~dReMjdeol2968129681eusmtip1f;
 Tue, 30 Jun 2020 08:44:44 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 30 Jun 2020 10:44:31 +0200
Message-Id: <20200630084431.4935-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-34-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHObvb3XU4u03Ng4+EQWFKmlh0U0uTiAsF1R9BBU1XXlRyU3bV
 VKQ0zWrNd5JK1FJRc75SW6mYabqpoyVqOi3fvVz5CF/4yHJes/++33M+39/38ONgiKCBY4uF
 SCMomVQcKkR5bLVmWb//xuqK6MDkAEKk6DtYxHipASGe51RyiD/qDIToXZhBiWeqNhahbPIi
 5nvHWET1RB+H6Kl/hBLlrUNcIvv9EkI0z37m+PLJssdlgGxcVLLJurwhLqn4mcQhXy6OcsiR
 +1oWWVN4k/y4PoGQWYZiQDYMxKNkam0pIOeqd581v8TzDqRCQ6IomduxAF7wh6Y1VviLXdHy
 1Dw0HjQK5MAMg/hBWDlewpYDHibASwAcvqMEjJkHUJM9zWXMHID91aXov0h+h3qLKgawoN/I
 2Y7EFxewTBSKu0P5lHwzYYXfBrA9xdykEXyaBVvnnE3aEj8JB5ebNhk2vgeOzwxvaj7uDZ9M
 r3GZNkeoqnqDmLQZ7gMzM9YRUxnE9VyYPzS+YbANcwJO1kQzvCU0amu3svZQl6VgM3wigGP6
 ci5jFAD23MoBDOUFP+lXUNMgBN8HK+vdmOPjMLehhcvMt4CGqZ3M+y1gpvrhVi0f3k3e2uNe
 mKet2K5t7upGGE3CX20jKLOfTAC7nhah6cAx73+ZEoBSYENF0pIgivaQUtddabGEjpQGuV4N
 k1SDjS+lW9cuvAKv1660ABwDQnN+gH5ZJOCIo+gYSQuAGCK04vu904kE/EBxTCwlC/OXRYZS
 dAuww9hCG75H/uRlAR4kjqCuUVQ4Jft3y8LMbOPBhcOn3EYRqiSwL4fuq5NeDB8csOt8G8HL
 /VqUMKIROR3lTf5O8PRbLbT2UqzGWel2dB9Z+nY6XWWMMyjKYkHSalpIiFPjg0RD6pduewea
 31eVpkn2O9de3O7bnj9RpP2RZFSdz6lZ/45X+M/6HOp0cfGxVnuKNEtdDmdUKfdqhGw6WOzu
 jMho8V+6eyNKTgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7q1v3/FGbQd1rDoPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv4+r+P0wFW8UquvpmsTUw7hXqYuTkkBAwkVh0chtjFyMXh5DAUkaJh1tn
 M0IkZCROTmtghbCFJf5c62KDKPrEKPFu0UWwBJuAoUTXW4iEiEAno8S07o/sIA6zwDcmiUlL
 b7GBVAkLuEnc+rkfzGYRUJV49P4emM0rYCMx/90fdogV8hKrNxxgBrE5BewlJk38B2YLCdhJ
 3JmznmkCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgXGz7djPzTsYL20MPsQowMGo
 xMObcO5nnBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Y
 03kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhhDDnTNtLxxcdEW
 ibK2H7sl9vN7h52b1xP+wPkBt8W5A+k3Xi67fWl22J11G9RWxu+ftKT8UJzG3Xtrc96fj73O
 Lbbik6DwOuGrU5rlPbsKbB12u+q0hqRduFU+Q77z2Y0XXut2ybosfJBTsSfpgOst5usp+/mD
 w77PX2nw19w6K+kW22bHxSnFSizFGYmGWsxFxYkA1yBJGLECAAA=
X-CMS-MailID: 20200630084445eucas1p1e85857b5d046648578f1447f8ba521a5
X-Msg-Generator: CA
X-RootMTR: 20200630084445eucas1p1e85857b5d046648578f1447f8ba521a5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200630084445eucas1p1e85857b5d046648578f1447f8ba521a5
References: <20200619103636.11974-34-m.szyprowski@samsung.com>
 <CGME20200630084445eucas1p1e85857b5d046648578f1447f8ba521a5@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v8] rapidio: fix common struct sg_table
	related issues
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCnY4OiBmaXhlZCBpc3N1ZXMgcG9pbnRlZCBi
eSBrYnVpbHQgdGVzdCByb2JvdCAodXNlIG9mIHVuaW5pdGlhbGl6ZWQKICAgIHZhcmlhYmxlKQot
LS0KIGRyaXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMgfCAxMSArKysrLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jIGIvZHJp
dmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYwppbmRleCAzYWJiYmE4YzJiNWIu
LjM1MWMwOGI4ODZlYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21w
b3J0X2NkZXYuYworKysgYi9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5j
CkBAIC01NzMsOCArNTczLDcgQEAgc3RhdGljIHZvaWQgZG1hX3JlcV9mcmVlKHN0cnVjdCBrcmVm
ICpyZWYpCiAJCQlyZWZjb3VudCk7CiAJc3RydWN0IG1wb3J0X2NkZXZfcHJpdiAqcHJpdiA9IHJl
cS0+cHJpdjsKIAotCWRtYV91bm1hcF9zZyhyZXEtPmRtYWNoLT5kZXZpY2UtPmRldiwKLQkJICAg
ICByZXEtPnNndC5zZ2wsIHJlcS0+c2d0Lm5lbnRzLCByZXEtPmRpcik7CisJZG1hX3VubWFwX3Nn
dGFibGUocmVxLT5kbWFjaC0+ZGV2aWNlLT5kZXYsICZyZXEtPnNndCwgcmVxLT5kaXIsIDApOwog
CXNnX2ZyZWVfdGFibGUoJnJlcS0+c2d0KTsKIAlpZiAocmVxLT5wYWdlX2xpc3QpIHsKIAkJdW5w
aW5fdXNlcl9wYWdlcyhyZXEtPnBhZ2VfbGlzdCwgcmVxLT5ucl9wYWdlcyk7CkBAIC04MTQsNyAr
ODEzLDYgQEAgcmlvX2RtYV90cmFuc2ZlcihzdHJ1Y3QgZmlsZSAqZmlscCwgdTMyIHRyYW5zZmVy
X21vZGUsCiAJc3RydWN0IG1wb3J0X2RldiAqbWQgPSBwcml2LT5tZDsKIAlzdHJ1Y3QgZG1hX2No
YW4gKmNoYW47CiAJaW50IHJldDsKLQlpbnQgbmVudHM7CiAKIAlpZiAoeGZlci0+bGVuZ3RoID09
IDApCiAJCXJldHVybiAtRUlOVkFMOwpAQCAtOTMwLDE1ICs5MjgsMTQgQEAgcmlvX2RtYV90cmFu
c2ZlcihzdHJ1Y3QgZmlsZSAqZmlscCwgdTMyIHRyYW5zZmVyX21vZGUsCiAJCQkJeGZlci0+b2Zm
c2V0LCB4ZmVyLT5sZW5ndGgpOwogCX0KIAotCW5lbnRzID0gZG1hX21hcF9zZyhjaGFuLT5kZXZp
Y2UtPmRldiwKLQkJCSAgIHJlcS0+c2d0LnNnbCwgcmVxLT5zZ3QubmVudHMsIGRpcik7Ci0JaWYg
KG5lbnRzID09IDApIHsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoY2hhbi0+ZGV2aWNlLT5kZXYs
ICZyZXEtPnNndCwgZGlyLCAwKTsKKwlpZiAocmV0KSB7CiAJCXJtY2RfZXJyb3IoIkZhaWxlZCB0
byBtYXAgU0cgbGlzdCIpOwogCQlyZXQgPSAtRUZBVUxUOwogCQlnb3RvIGVycl9wZzsKIAl9CiAK
LQlyZXQgPSBkb19kbWFfcmVxdWVzdChyZXEsIHhmZXIsIHN5bmMsIG5lbnRzKTsKKwlyZXQgPSBk
b19kbWFfcmVxdWVzdChyZXEsIHhmZXIsIHN5bmMsIHJlcS0+c2d0Lm5lbnRzKTsKIAogCWlmIChy
ZXQgPj0gMCkgewogCQlpZiAoc3luYyA9PSBSSU9fVFJBTlNGRVJfQVNZTkMpCi0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
