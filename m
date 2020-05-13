Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C01EC1D1641
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:45:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2B1065F89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:45:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D40E165FB1; Wed, 13 May 2020 13:45:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2B2C66053;
	Wed, 13 May 2020 13:34:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2C0AC65F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1DF8065F9D; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id CAAA965F90
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:05 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133305euoutp02b16d9dacb75a096a33616a0a0885081b~OmcPgYl-U3223232232euoutp02q
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133305euoutp02b16d9dacb75a096a33616a0a0885081b~OmcPgYl-U3223232232euoutp02q
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133304eucas1p1d80aaa744236db1298d022efabb686c5~OmcO54ulV2350723507eucas1p1x;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B6.01.60679.017FBBE5; Wed, 13
 May 2020 14:33:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133304eucas1p1114334ce7250cf8189553a22080b69f4~OmcOoLRfj2350723507eucas1p1u;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133304eusmtrp1300e8ff97a8e2c23428b64e49e4c23ec~OmcOnF2kl1049110491eusmtrp1D;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-33-5ebbf710e917
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A6.37.07950.017FBBE5; Wed, 13
 May 2020 14:33:04 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133303eusmtip1d4f4865d63ac5bf40122891f810cb272~OmcN8dd7s3239232392eusmtip1c;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:18 +0200
Message-Id: <20200513133245.6408-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHO7t3d9fh5DYNDxZaA6MEZ1bEXVYWRl0IQoKCisyVFzWf7PqG
 TBNT5iN1WVMiRbOZr5lTE5f5qJyPUFEzdYrK0nSlRpqRhrXr1frve77fz/f8Dj8Ojojr+Q54
 YGgErQiVB0swIVrf/qvHlfip9zlQpIZkRk8nj3yh1vLJP/XZCDn4YxEjn5e/45E5E1koWdjs
 QS4PTvHIGtMQnxxofIyR6t7XPLLy7biAbP32iU+qVXPYSRuq4kkFoJpWClHq5cokn5pIM/Ao
 3dM7lHHdhFCqYQ2g9CMJGJVZWwaopRpHb+EV4TE/Ojgwila4nfAVBhhSygThHXYxdd3LSALQ
 bFcCKxwSh+H9jgpMCYS4mCgF8PNCooANxMQygA2lLlywBOBi8Sxvq1FdsCbgAg2A44tGwB0s
 jZneTJSlMMIdKueVGKvtiGQAOzKsWQghUhE4lF1gaeC4LXEBZlZeYhmUcIZ5FeMbvIg4Drv6
 xgTcNCdYXt2CsNrK4pvHmlH2Hki0C6CuYA7joNNwYSYZ5bQtNBtqN8u7YLcqfbOQBOBUT6WA
 O6QDOHBXDTjKA471rGLsixBiP9Q2unH2KTg+38ZjbUjYwOH5jYUhFplT/wjhbBFMvSfm6L0w
 31D1b2xrXz/CaQp2KqcRbkFvACzMXeRnAaf8/8MKASgD9nQkE+JPMwdD6WgpIw9hIkP9pTfD
 QmqA5Td1rxuWG0Dj7xttgMCBxFpEjup9xHx5FBMb0gYgjkjsROe1FkvkJ4+NoxVh1xWRwTTT
 BnbiqMRedKho7pqY8JdH0EE0HU4rtlIebuWQAKhnI57ZiSUBJbIvjvkTSSlBIrlX92hanL1L
 8b6jzpLhbXyH+PgY/axpaEHg9UpflSdTT2ovy4Ie5MYlmR/WmZvCjM5n3c+ZGKNKPNP1scV1
 tZ/Y44uVe0elVcq+itM9pWvfY1RXNR+ipdZnEJ1y9JamYcfti13vj8SW7tatTEtQJkDu7oIo
 GPlfXwZqpUkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7oC33fHGaw4yGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+N4+yr2ghMiFVtPf2FuYFwu2MXIySEhYCKxYf5v9i5GLg4hgaWMEgteTmWCSMhI
 nJzWwAphC0v8udbFBlH0iVHiwrfJzCAJNgFDia63EAkRgU5GiWndH8FGMQtMYJa437KaEaRK
 WCBAouncIrAOFgFViZlr7rKB2LwCthKnLtxhh1ghL7F6wwGwGk6g+Ks7+1lAbCGBfIm9i/ex
 TWDkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwWrYd+7llB2PXu+BDjAIcjEo8vBa3
 dscJsSaWFVfmHmKU4GBWEuH1Ww8U4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgJOeVxBua
 GppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamAMeKu88P9p9srvnsG9edE+
 b64/K5sQ/+fDitA8NxPX+WH3lq4yyT89k6/vO6OHiEDG+y2fIsTfCvK9qT0927z4GP+x2o3t
 354opPAZSLM9Tm3bZ5DuGrztlOza4vivoXrPmvj7U+Yv2eDi3TyFtcFaw/TRVoN7+bNjI7RU
 A/KSdXvZ+S413lRiKc5INNRiLipOBABIc1RErAIAAA==
X-CMS-MailID: 20200513133304eucas1p1114334ce7250cf8189553a22080b69f4
X-Msg-Generator: CA
X-RootMTR: 20200513133304eucas1p1114334ce7250cf8189553a22080b69f4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133304eucas1p1114334ce7250cf8189553a22080b69f4
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133304eucas1p1114334ce7250cf8189553a22080b69f4@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 11/38] drm: exynos: fix common struct
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
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIHwgMTAgKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMKaW5kZXggZmNlZTMzYS4uNzAxNGE4YyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYwpAQCAtMzk1LDggKzM5NSw4IEBA
IHN0YXRpYyB2b2lkIGcyZF91c2VycHRyX3B1dF9kbWFfYWRkcihzdHJ1Y3QgZzJkX2RhdGEgKmcy
ZCwKIAkJcmV0dXJuOwogCiBvdXQ6Ci0JZG1hX3VubWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1f
ZGV2KSwgZzJkX3VzZXJwdHItPnNndC0+c2dsLAotCQkJZzJkX3VzZXJwdHItPnNndC0+bmVudHMs
IERNQV9CSURJUkVDVElPTkFMKTsKKwlkbWFfdW5tYXBfc2d0YWJsZSh0b19kbWFfZGV2KGcyZC0+
ZHJtX2RldiksIGcyZF91c2VycHRyLT5zZ3QsCisJCQkgIERNQV9CSURJUkVDVElPTkFMLCAwKTsK
IAogCXBhZ2VzID0gZnJhbWVfdmVjdG9yX3BhZ2VzKGcyZF91c2VycHRyLT52ZWMpOwogCWlmICgh
SVNfRVJSKHBhZ2VzKSkgewpAQCAtNTExLDEwICs1MTEsMTAgQEAgc3RhdGljIGRtYV9hZGRyX3Qg
KmcyZF91c2VycHRyX2dldF9kbWFfYWRkcihzdHJ1Y3QgZzJkX2RhdGEgKmcyZCwKIAogCWcyZF91
c2VycHRyLT5zZ3QgPSBzZ3Q7CiAKLQlpZiAoIWRtYV9tYXBfc2codG9fZG1hX2RldihnMmQtPmRy
bV9kZXYpLCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQlETUFfQklESVJFQ1RJT05BTCkpIHsK
KwlyZXQgPSBkbWFfbWFwX3NndGFibGUodG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBzZ3QsCisJ
CQkgICAgICBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkgewogCQlEUk1fREVWX0VS
Uk9SKGcyZC0+ZGV2LCAiZmFpbGVkIHRvIG1hcCBzZ3Qgd2l0aCBkbWEgcmVnaW9uLlxuIik7Ci0J
CXJldCA9IC1FTk9NRU07CiAJCWdvdG8gZXJyX3NnX2ZyZWVfdGFibGU7CiAJfQogCi0tIAoxLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
