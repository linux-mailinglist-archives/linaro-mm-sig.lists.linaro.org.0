Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E41D1689
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:55:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A5D265F88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:55:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF47865FAF; Wed, 13 May 2020 13:55:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC13065F98;
	Wed, 13 May 2020 13:35:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AC0A865F98
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9EE64664EC; Wed, 13 May 2020 13:35:28 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5E04165F98
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:14 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313euoutp016bf3e98f7462b98c2cf0c43707a98b69~OmcXbmEbY2269422694euoutp01Q
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133313euoutp016bf3e98f7462b98c2cf0c43707a98b69~OmcXbmEbY2269422694euoutp01Q
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133313eucas1p14755da98e4c430f99840ffbf4b524ebf~OmcXHUczV2164721647eucas1p17;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EF.C5.61286.917FBBE5; Wed, 13
 May 2020 14:33:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52~OmcWwDzS91832718327eucas1p2b;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133312eusmtrp1bfa286fa54fc03c086370de9c5f8d92e~OmcWvQqNV1050610506eusmtrp1Q;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-60-5ebbf71926ff
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3B.1A.08375.817FBBE5; Wed, 13
 May 2020 14:33:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133312eusmtip12e592ada7c238820e4b042f9c6a599c2~OmcWEljUR0693406934eusmtip1W;
 Wed, 13 May 2020 13:33:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:29 +0200
Message-Id: <20200513133245.6408-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTURzGPbt3d9fhxm0zPJppDCws0tQ+3FKjoJf7SaKMwtDc9KKSb2y+
 QySuTJbapmgiZVKmOd9q6hSXLG02TTFT0/mGmvYhxXw3LNK83Znfnv/vPA/P/xwOjohauU54
 VGwCLY+VRkswPqr/sPnpuONPQ8iJRQ1O5vR2ccg3RXVccluvQcjB9UWMrKzq4JDbX+e55NO8
 O2Sp0ZdcG5zmkLqZIS450PIEI1emthGyxjTBI9uWZrlnhVR1STWgWjdKUappY4pLTT40c6j6
 srvU2NYMQuVbKgBlGEnHqD/FRpTKbdACqmmoBKFWdS6X7YL4fuF0dFQSLfc8E8qPzOxTceLn
 XVJe5M+BdDDsqAK2OCROwo5FA0cF+LiIeAVgo3aaxw5rABYZhjHGJSJWARxQeu8mdEMPENZU
 AWBG89peQvOxHGVcGOEFVQuqf2l74j6AnTl2jEaIQgRq1y+qAI6LiUD4uyCAwSjhBh9NjnEY
 LSD8oUb5ErBlrrDq9TuE0bY7fG7ciDJdkOjnwfllDY81nYcTz+ZQVovhnLnByp1hd362NaAE
 cLq3hscO2TvXySiyVvjC8d5fGLMRQrjDuhZPFp+DK6YNHoMhIYSWhX3s/kKYp3+MsFgAszJF
 rPswLDbX/q9t6+u3WihY8C2FfZ73ACrzKoAauBbvdZUCoAUOdKIiJoJWeMXSyR4KaYwiMTbC
 IywuRgd2PlX3lnmlGaz3y9oBgQOJnYAcNYSIuNIkRWpMO4A4IrEXBNTtIEG4NDWNlsfdkidG
 04p2cABHJQ4Cn+ffg0VEhDSBvk3T8bR895SD2zqlA1hu6CnI+9x4Xb3s7bZpCRXeaxze3+Xi
 9qU4IDfeOOtzRe1/DdKXVIJKpDPrRkmCz+klmT5Yxjcd8gRmi196d8VIzdsgYZisetX5YKdI
 7V5uY6yu90/mJY6KsZu14U2nUn/YUDVp8YViU3JgT6s++WoqNXThyLNj3mXaBSUmQRWRUq+j
 iFwh/QsZ/Y7HUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7oS33fHGby8YGjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GW0XehiKngtV7F48ivGBsbrkl2MnBwSAiYSm661M3cxcnEICSxl
 lPgw9zQTREJG4uS0BlYIW1jiz7UuNhBbSOATo0T33SoQm03AUKLrLUici0NEoJNRYlr3R3YQ
 h1lgHrPE8lWHwSYJCwRJTJm1iB3EZhFQlei/fxsszitgKzGxeSkjxAZ5idUbDjCD2JxA8Vd3
 9rNAbMuX2Lt4H9sERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNn27Gfm3cwXtoY
 fIhRgINRiYfX4tbuOCHWxLLiytxDjBIczEoivH7rgUK8KYmVValF+fFFpTmpxYcYTYGOmsgs
 JZqcD4zsvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCIrr1u/
 +6//X++dqIbX03TRc6/T2lP/HRBYve2vT4+12vQb03cGybs7WvcmfN15IC+UNT8/SrRyzo+Z
 t/ZXz5piE2zfOV03Sfqzv51Un2Hx4++KNmqRy3zUH/NNaw9T+LB2hrOoltv+JbIhkQdCHjqE
 L8z+W726dDFDQt3rliUS21hPvD16T4mlOCPRUIu5qDgRAEdPIEG0AgAA
X-CMS-MailID: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
X-Msg-Generator: CA
X-RootMTR: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133312eucas1p2fc1186c0aeee2367898fc0c146f1ed52@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 22/38] drm: rockchip: fix common struct
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
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8IDIzICsrKysrKysr
KystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMK
aW5kZXggMjFmOGNiMi4uNTY2NTU3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2dlbS5jCkBAIC0zNiw4ICszNiw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2Vt
X2lvbW11X21hcChzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogCiAJcmtfb2Jq
LT5kbWFfYWRkciA9IHJrX29iai0+bW0uc3RhcnQ7CiAKLQlyZXQgPSBpb21tdV9tYXBfc2cocHJp
dmF0ZS0+ZG9tYWluLCBya19vYmotPmRtYV9hZGRyLCBya19vYmotPnNndC0+c2dsLAotCQkJICAg
cmtfb2JqLT5zZ3QtPm5lbnRzLCBwcm90KTsKKwlyZXQgPSBpb21tdV9tYXBfc2d0YWJsZShwcml2
YXRlLT5kb21haW4sIHJrX29iai0+ZG1hX2FkZHIsIHJrX29iai0+c2d0LAorCQkJCXByb3QpOwog
CWlmIChyZXQgPCBya19vYmotPmJhc2Uuc2l6ZSkgewogCQlEUk1fRVJST1IoImZhaWxlZCB0byBt
YXAgYnVmZmVyOiBzaXplPSV6ZCByZXF1ZXN0X3NpemU9JXpkXG4iLAogCQkJICByZXQsIHJrX29i
ai0+YmFzZS5zaXplKTsKQEAgLTk4LDExICs5OCwxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dl
bV9nZXRfcGFnZXMoc3RydWN0IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikKIAkgKiBUT0RP
OiBSZXBsYWNlIHRoaXMgYnkgZHJtX2NsZmx1c2hfc2coKSBvbmNlIGl0IGNhbiBiZSBpbXBsZW1l
bnRlZAogCSAqIHdpdGhvdXQgcmVseWluZyBvbiBzeW1ib2xzIHRoYXQgYXJlIG5vdCBleHBvcnRl
ZC4KIAkgKi8KLQlmb3JfZWFjaF9zZyhya19vYmotPnNndC0+c2dsLCBzLCBya19vYmotPnNndC0+
bmVudHMsIGkpCisJZm9yX2VhY2hfc2d0YWJsZV9zZyhya19vYmotPnNndCwgcywgaSkKIAkJc2df
ZG1hX2FkZHJlc3MocykgPSBzZ19waHlzKHMpOwogCi0JZG1hX3N5bmNfc2dfZm9yX2RldmljZShk
cm0tPmRldiwgcmtfb2JqLT5zZ3QtPnNnbCwgcmtfb2JqLT5zZ3QtPm5lbnRzLAotCQkJICAgICAg
IERNQV9UT19ERVZJQ0UpOworCWRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShkcm0tPmRldiwg
cmtfb2JqLT5zZ3QsIERNQV9UT19ERVZJQ0UpOwogCiAJcmV0dXJuIDA7CiAKQEAgLTM1MCw4ICsz
NDksOCBAQCB2b2lkIHJvY2tjaGlwX2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaikKIAkJaWYgKHByaXZhdGUtPmRvbWFpbikgewogCQkJcm9ja2NoaXBfZ2VtX2lvbW11
X3VubWFwKHJrX29iaik7CiAJCX0gZWxzZSB7Ci0JCQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHJr
X29iai0+c2d0LT5zZ2wsCi0JCQkJICAgICBya19vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVD
VElPTkFMKTsKKwkJCWRtYV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBya19vYmotPnNndCwKKwkJ
CQkJICBETUFfQklESVJFQ1RJT05BTCwgMCk7CiAJCX0KIAkJZHJtX3ByaW1lX2dlbV9kZXN0cm95
KG9iaiwgcmtfb2JqLT5zZ3QpOwogCX0gZWxzZSB7CkBAIC00NzYsMTUgKzQ3NSwxMyBAQCBzdHJ1
Y3Qgc2dfdGFibGUgKnJvY2tjaGlwX2dlbV9wcmltZV9nZXRfc2dfdGFibGUoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmopCiAJCQlzdHJ1Y3Qgc2dfdGFibGUgKnNnLAogCQkJc3RydWN0IHJvY2tj
aGlwX2dlbV9vYmplY3QgKnJrX29iaikKIHsKLQlpbnQgY291bnQgPSBkbWFfbWFwX3NnKGRybS0+
ZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMsCi0JCQkgICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwot
CWlmICghY291bnQpCi0JCXJldHVybiAtRUlOVkFMOworCWludCBlcnIgPSBkbWFfbWFwX3NndGFi
bGUoZHJtLT5kZXYsIHNnLCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKGVycikKKwkJcmV0
dXJuIGVycjsKIAogCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBhdHRh
Y2gtPmRtYWJ1Zi0+c2l6ZSkgewogCQlEUk1fRVJST1IoImZhaWxlZCB0byBtYXAgc2dfdGFibGUg
dG8gY29udGlndW91cyBsaW5lYXIgYWRkcmVzcy5cbiIpOwotCQlkbWFfdW5tYXBfc2coZHJtLT5k
ZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKLQkJCSAgICAgRE1BX0JJRElSRUNUSU9OQUwpOworCQlk
bWFfdW5tYXBfc2d0YWJsZShkcm0tPmRldiwgc2csIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAkJ
cmV0dXJuIC1FSU5WQUw7CiAJfQogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
