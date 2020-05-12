Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBFC1CF1D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:43:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D65618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:43:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D1BA61994; Tue, 12 May 2020 09:43:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D203966524;
	Tue, 12 May 2020 09:07:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C1FB65FA3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B9976650A; Tue, 12 May 2020 09:07:18 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id CE3E365FA3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:24 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090124euoutp018aef9a98ba9acd80715998fc350a1806~OPFvtCg9Y2635826358euoutp01Q
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090124euoutp018aef9a98ba9acd80715998fc350a1806~OPFvtCg9Y2635826358euoutp01Q
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eucas1p27aea9b6c10466074bd204422df08d17e~OPFvPqjYq3098030980eucas1p2J;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 75.7B.60698.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f~OPFu8MRmS2180321803eucas1p27;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eusmtrp120653e9289ee4b94bb938846d5e1609a~OPFu7bCGL0188101881eusmtrp1V;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-44-5eba65e3ce95
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F2.03.07950.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090122eusmtip1628d2b6fc16039b5ec284bb2840665fe~OPFuTMsTB1181011810eusmtip1r;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:47 +0200
Message-Id: <20200512090058.14910-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHOffe7V7FyW0qHlQUFoUFaT6iG4oUJt1/DCukh2gtvejQTdt8
 ZEWJZsic5pKlmJaF4PuRrWmKmo+5mWW+H7NQU6MM0fJRmlmbV+2/7+/z+37P93A4BMrv5NgR
 IkksI5UIowRcc0zTufb+0DTTEHL4z6w9ldHThVDPc6s5VF9OKkb91ShRanBlgUuVlmsRqrDF
 i8ofc6eWB6cQqnZ6mEMNNORzqcqOjzjVujjDoX6qs5HjlnTF4wpAN60WYnTd6iSHnkjXIfSL
 ojv0+OY0SmePFgO6fXEQoxvHkrj091kDRmeqywBdrR7C6KVaxwDeJXPvMCZKFM9IXX2umEcU
 pGXiMb221wum2tEkUGolB2YEJD3hbK8alwNzgk+WADiykc9lh2UA83/83t4sAdi6qeXsRJSG
 coRdFAM4qsjCdiODdXrE5OKSblA+L+eatDWZCqA+w8JkQsl0FKoqy7aOsiLPwrwNA27SGLkP
 6r89Rk2aR/pAg3YcYeucYHnN6y1uZuQTTza22iBpwGFR8wiXNZ2Ey/cHtrUVnNOpcVY7wO5s
 xXYgBcCpnkqcHRQADiTnAtblBT/0rBvThPF+B2B1gyuLT8C+ftUWhqQlHJ3fY8KoUT7Q5KAs
 5sG0e3zWvR/m6ap2a1t7+1FW07CmxLD9jloAteUKkAWc8v6XFQJQBmyZOJk4nJF5SJgEF5lQ
 LIuThLuERotrgfF3dW/qVupB88bVNkASQGDBS3N/FcLnCONlieI2AAlUYM27KzIiXpgw8QYj
 jb4sjYtiZG3AnsAEtjyPZ1+D+WS4MJaJZJgYRrqzRQgzuyTgj6/bOJA9KhuNdsKuacw3chLB
 pwu7Yo76LZx/6dWo7BAOOQc2DdUnWLgGOaw8xfUd8kSVyDtQsVcZ/CvimP8R0ZxjYoBkOPmT
 9Vho7WlnlWfn27V3vjpR3rVHb4Jawvwu5AyMnPG/7btOz4hTnM/Jb1alx3x+eCtWeTFQnHLq
 iwCTRQjdDqJSmfAfUBbuYVkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7qPU3fFGTz/xmbRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5eglzG3o4+94IJ4xdyHh5kbGFcKdzFyckgImEhMvLWaqYuR
 i0NIYCmjxL3rM9kgEjISJ6c1sELYwhJ/rnWxQRR9YpQ42/yABSTBJmAo0fUWIiEi0MkoMa37
 IzuIwywwmVni2errQHM5OIQFAiSmvuYDaWARUJU48XoeM4jNK2AncevobSaIDfISqzccAItz
 AsXvz/8DtkBIoFDi0dW3LBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjKNtx35u
 2cHY9S74EKMAB6MSD2+H0c44IdbEsuLK3EOMEhzMSiK8LZlAId6UxMqq1KL8+KLSnNTiQ4ym
 QEdNZJYSTc4HxnheSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZG
 Ba+Ub1VHxD9sT/5RO83mwGInkclS+/W8P06vU82Qf/K1czKPkJ/95kkfdYOm8pj7fvRhke3b
 51ih+Ct1XVX+limzVJ5+E+hLtquTeP37shD7jeNvDHSLP2lzzxb4fSbUUNksdvM2Q86pUr1f
 y6OetU8sKHasnPnadw87xwq7hAjhv1N1PAKUWIozEg21mIuKEwEHRpQquQIAAA==
X-CMS-MailID: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
X-Msg-Generator: CA
X-RootMTR: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090123eucas1p268736ef6e202c23e8be77c56873f415f
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090123eucas1p268736ef6e202c23e8be77c56873f415f@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 27/38] xen: gntdev: fix common struct
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
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgfCAxMyArKysrKystLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMveGVuL2dudGRldi1kbWFidWYuYyBiL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYwppbmRl
eCA3NWQzYmI5Li5iYTZjYWQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVm
LmMKKysrIGIvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jCkBAIC0yNDcsMTAgKzI0Nyw5IEBA
IHN0YXRpYyB2b2lkIGRtYWJ1Zl9leHBfb3BzX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1
ZiwKIAogCQlpZiAoc2d0KSB7CiAJCQlpZiAoZ250ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciAhPSBE
TUFfTk9ORSkKLQkJCQlkbWFfdW5tYXBfc2dfYXR0cnMoYXR0YWNoLT5kZXYsIHNndC0+c2dsLAot
CQkJCQkJICAgc2d0LT5uZW50cywKLQkJCQkJCSAgIGdudGRldl9kbWFidWZfYXR0YWNoLT5kaXIs
Ci0JCQkJCQkgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKKwkJCQlkbWFfdW5tYXBfc2d0YWJs
ZShhdHRhY2gtPmRldiwgc2d0LAorCQkJCQkJICBnbnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGlyLAor
CQkJCQkJICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKIAkJCXNnX2ZyZWVfdGFibGUoc2d0KTsK
IAkJfQogCkBAIC0yODgsOCArMjg3LDggQEAgc3RhdGljIHZvaWQgZG1hYnVmX2V4cF9vcHNfZGV0
YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAogCXNndCA9IGRtYWJ1Zl9wYWdlc190b19zZ3Qo
Z250ZGV2X2RtYWJ1Zi0+cGFnZXMsCiAJCQkJICBnbnRkZXZfZG1hYnVmLT5ucl9wYWdlcyk7CiAJ
aWYgKCFJU19FUlIoc2d0KSkgewotCQlpZiAoIWRtYV9tYXBfc2dfYXR0cnMoYXR0YWNoLT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIsCi0JCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpIHsKKwkJaWYgKGRtYV9tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsCisJ
CQkJICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CiAJCQlzZ19mcmVlX3RhYmxlKHNndCk7
CiAJCQlrZnJlZShzZ3QpOwogCQkJc2d0ID0gRVJSX1BUUigtRU5PTUVNKTsKQEAgLTYyNSw3ICs2
MjQsNyBAQCBzdGF0aWMgc3RydWN0IGdudGRldl9kbWFidWYgKmRtYWJ1Zl9pbXBfYWxsb2Nfc3Rv
cmFnZShpbnQgY291bnQpCiAKIAkvKiBOb3cgY29udmVydCBzZ3QgdG8gYXJyYXkgb2YgcGFnZXMg
YW5kIGNoZWNrIGZvciBwYWdlIHZhbGlkaXR5LiAqLwogCWkgPSAwOwotCWZvcl9lYWNoX3NnX3Bh
Z2Uoc2d0LT5zZ2wsICZzZ19pdGVyLCBzZ3QtPm5lbnRzLCAwKSB7CisJZm9yX2VhY2hfc2d0YWJs
ZV9wYWdlKHNndCwgJnNnX2l0ZXIsIDApIHsKIAkJc3RydWN0IHBhZ2UgKnBhZ2UgPSBzZ19wYWdl
X2l0ZXJfcGFnZSgmc2dfaXRlcik7CiAJCS8qCiAJCSAqIENoZWNrIGlmIHBhZ2UgaXMgdmFsaWQ6
IHRoaXMgY2FuIGhhcHBlbiBpZiB3ZSBhcmUgZ2l2ZW4KLS0gCjEuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
