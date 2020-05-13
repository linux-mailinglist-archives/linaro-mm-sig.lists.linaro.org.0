Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 887741D1655
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:46:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA13766030
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:46:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9BDDE66031; Wed, 13 May 2020 13:46:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A416D66056;
	Wed, 13 May 2020 13:34:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5513065F88
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4234066030; Wed, 13 May 2020 13:33:45 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 7903665F88
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:07 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133306euoutp02e96c6589a45dde93ba20cf55d5f04a5c~OmcRDUJjJ0033500335euoutp02H
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133306euoutp02e96c6589a45dde93ba20cf55d5f04a5c~OmcRDUJjJ0033500335euoutp02H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133306eucas1p28688f5d44bb4367f2d155b5e4b7eb5e7~OmcQuEj1v1832718327eucas1p2V;
 Wed, 13 May 2020 13:33:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 94.D8.60698.217FBBE5; Wed, 13
 May 2020 14:33:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd~OmcQBXNLu2350623506eucas1p1C;
 Wed, 13 May 2020 13:33:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133305eusmtrp199c625ef01bb9c222eb86c8836b03bd5~OmcQAmRBa1011910119eusmtrp1G;
 Wed, 13 May 2020 13:33:05 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-c7-5ebbf712db37
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 59.37.07950.117FBBE5; Wed, 13
 May 2020 14:33:05 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133304eusmtip170a2c07de6cad9434cec876a3cc4adde~OmcPXpCC80693306933eusmtip1_;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:20 +0200
Message-Id: <20200513133245.6408-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7pC33fHGZxZLWrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDuKyyYlNSezLLVI3y6BK+N7Ux9jwXPpinUT2lgbGKeJdzFyckgImEi8e7uD
 pYuRi0NIYAWjxI19D5ggnC+MEjvXnGCGcD4zStxuuAdUxgHWsneTCER8OaPEsin9CB2v9rax
 gMxlEzCU6HrbxQZiiwi0Mkqc6OUBKWIWuMwkMf9oE1iRsECAxOYTS9hBbBYBVYndHw+xgmzg
 FbCV2NRdAHGfvMTqDQeYQWxOoPCrO/vBbpUQOMYu8WTdb2aIIheJQ1unQNnCEq+Ob2GHsGUk
 Tk/ugWpoZpR4eG4tO4TTwyhxuWkGI0SVtcSdc7/YQDYzC2hKrN+lDxF2lGhtuAT1Mp/EjbeC
 IGFmIHPStunMEGFeiY42IYhqNYlZx9fBrT144RLUOR4SR879ZIQE0GFGia3LVzFOYJSfhbBs
 ASPjKkbx1NLi3PTUYuO81HK94sTc4tK8dL3k/NxNjMDUdPrf8a87GPf9STrEKMDBqMTD++D6
 7jgh1sSy4srcQ4wSHMxKIrx+64FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhPLEnN
 Tk0tSC2CyTJxcEo1MBbFS6S9m1bfWHE+6P/dL95Kr+UVy0Ikvj7XaxfiZlG+/O5A0qZfgpWf
 4n+7r1jCn/x1ip1UMrPVukI93qKH2792nrK8buCVmSfaZ1xtOXXSlLB5n3/Jm5c5y05S/SAu
 xDNtbvFrxm/nLRJ/m7ZUFhrOMO9QP6CZnb7ngelZviaxusApHHxmSizFGYmGWsxFxYkAwK2W
 fkkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7qC33fHGdxarWzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8XneJjaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 h7VfmRx4PdbMW8PosffbAhaPnbPusnts//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+N7Ux9jwXPpinUT2lgbGKeJdzFycEgImEjs3STSxcjFISSwlFFi/6rJzF2MnEBx
 GYmT0xpYIWxhiT/Xutggij4xSkw+1AZWxCZgKNH1FiIhItDJKDGt+yM7iMMscJtJ4szcCWBV
 wgJ+EntufmcCsVkEVCV2fzzECrKaV8BWYlN3AcQGeYnVGw6AlXMChV/d2c8CYgsJ5EvsXbyP
 bQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBkbLt2M8tOxi73gUfYhTgYFTi4bW4
 tTtOiDWxrLgy9xCjBAezkgiv33qgEG9KYmVValF+fFFpTmrxIUZToJsmMkuJJucDozivJN7Q
 1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjDEcLk+FOpv6nAjM2O0yb
 zzL7mtMs/bg7EZrXbn6Q3BjP9mnVzGpjwy7+Nw8TG9zy5bpP1H+dxbg5b5cno/X31kmCfjPj
 bkoFqP0XOvzJ+Fv1J0XfTrtTrbefySr+lve84bd/4lbbLxVNye6fls1deMRl5Xr5Y3Zna18e
 VFnnEPnoeiPPhF+VSizFGYmGWsxFxYkA3PtXr6oCAAA=
X-CMS-MailID: 20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd
X-Msg-Generator: CA
X-RootMTR: 20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133305eucas1p15187ed8fa1e4af181cafa5c65ddab4cd@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 13/38] drm: lima: fix common struct
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
ZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyB8IDExICsrKysrKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vbGltYS9saW1hX3ZtLmMgIHwgIDUgKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbGltYS9saW1hX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYwppbmRl
eCA1NDA0ZTBkLi5jZGE0M2Y2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1h
X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKQEAgLTY5LDggKzY5
LDcgQEAgaW50IGxpbWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBsaW1h
X3ZtICp2bSkKIAkJcmV0dXJuIHJldDsKIAogCWlmIChiby0+YmFzZS5zZ3QpIHsKLQkJZG1hX3Vu
bWFwX3NnKGRldiwgYm8tPmJhc2Uuc2d0LT5zZ2wsCi0JCQkgICAgIGJvLT5iYXNlLnNndC0+bmVu
dHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJZG1hX3VubWFwX3NndGFibGUoZGV2LCBiby0+YmFz
ZS5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAkJc2dfZnJlZV90YWJsZShiby0+YmFzZS5z
Z3QpOwogCX0gZWxzZSB7CiAJCWJvLT5iYXNlLnNndCA9IGttYWxsb2Moc2l6ZW9mKCpiby0+YmFz
ZS5zZ3QpLCBHRlBfS0VSTkVMKTsKQEAgLTgwLDcgKzc5LDEzIEBAIGludCBsaW1hX2hlYXBfYWxs
b2Moc3RydWN0IGxpbWFfYm8gKmJvLCBzdHJ1Y3QgbGltYV92bSAqdm0pCiAJCX0KIAl9CiAKLQlk
bWFfbWFwX3NnKGRldiwgc2d0LnNnbCwgc2d0Lm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJ
cmV0ID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgJnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwor
CWlmIChyZXQpIHsKKwkJc2dfZnJlZV90YWJsZSgmc2d0KTsKKwkJa2ZyZWUoYm8tPmJhc2Uuc2d0
KTsKKwkJYm8tPmJhc2Uuc2d0ID0gTlVMTDsKKwkJcmV0dXJuIHJldDsKKwl9CiAKIAkqYm8tPmJh
c2Uuc2d0ID0gc2d0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3Zt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3ZtLmMKaW5kZXggNWI5MmZiOC4uMmIyNzM5
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV92bS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9saW1hL2xpbWFfdm0uYwpAQCAtMTI0LDcgKzEyNCw3IEBAIGludCBsaW1hX3Zt
X2JvX2FkZChzdHJ1Y3QgbGltYV92bSAqdm0sIHN0cnVjdCBsaW1hX2JvICpibywgYm9vbCBjcmVh
dGUpCiAJaWYgKGVycikKIAkJZ290byBlcnJfb3V0MTsKIAotCWZvcl9lYWNoX3NnX2RtYV9wYWdl
KGJvLT5iYXNlLnNndC0+c2dsLCAmc2dfaXRlciwgYm8tPmJhc2Uuc2d0LT5uZW50cywgMCkgewor
CWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2UoYm8tPmJhc2Uuc2d0LCAmc2dfaXRlciwgMCkgewog
CQllcnIgPSBsaW1hX3ZtX21hcF9wYWdlKHZtLCBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJnNn
X2l0ZXIpLAogCQkJCSAgICAgICBib192YS0+bm9kZS5zdGFydCArIG9mZnNldCk7CiAJCWlmIChl
cnIpCkBAIC0yOTgsOCArMjk4LDcgQEAgaW50IGxpbWFfdm1fbWFwX2JvKHN0cnVjdCBsaW1hX3Zt
ICp2bSwgc3RydWN0IGxpbWFfYm8gKmJvLCBpbnQgcGFnZW9mZikKIAltdXRleF9sb2NrKCZ2bS0+
bG9jayk7CiAKIAliYXNlID0gYm9fdmEtPm5vZGUuc3RhcnQgKyAocGFnZW9mZiA8PCBQQUdFX1NI
SUZUKTsKLQlmb3JfZWFjaF9zZ19kbWFfcGFnZShiby0+YmFzZS5zZ3QtPnNnbCwgJnNnX2l0ZXIs
Ci0JCQkgICAgIGJvLT5iYXNlLnNndC0+bmVudHMsIHBhZ2VvZmYpIHsKKwlmb3JfZWFjaF9zZ3Rh
YmxlX2RtYV9wYWdlKGJvLT5iYXNlLnNndCwgJnNnX2l0ZXIsIHBhZ2VvZmYpIHsKIAkJZXJyID0g
bGltYV92bV9tYXBfcGFnZSh2bSwgc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZzZ19pdGVyKSwK
IAkJCQkgICAgICAgYmFzZSArIG9mZnNldCk7CiAJCWlmIChlcnIpCi0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
