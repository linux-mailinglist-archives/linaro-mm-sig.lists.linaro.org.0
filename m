Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B36F1C3AB2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:01:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFEFC66053
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:01:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9E8A26615F; Mon,  4 May 2020 13:01:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4DE8664E3;
	Mon,  4 May 2020 12:54:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5416866048
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4376266075; Mon,  4 May 2020 12:54:23 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id AFCD166052
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:16 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415euoutp0254d0f840d5796b8e1e5007d27295528a~L1Gx64IBL1778917789euoutp02Y
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125415euoutp0254d0f840d5796b8e1e5007d27295528a~L1Gx64IBL1778917789euoutp02Y
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125415eucas1p200586e88883ec1cdbf36f79bba25a4ad~L1GxkwCJn2246922469eucas1p2e;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 36.12.60698.77010BE5; Mon,  4
 May 2020 13:54:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eucas1p2757f9a71add8c7547bc8f85906468113~L1GxNC5to2267422674eucas1p2u;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415eusmtrp1e1284d4f03879fd64553ffa12e4072a2~L1GxMVuIW2497724977eusmtrp1X;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-4c-5eb010771511
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 66.06.07950.77010BE5; Mon,  4
 May 2020 13:54:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125414eusmtip2198d08fccd13a642afb1d3d0a06c7de6~L1Gwe7ZaQ0241602416eusmtip2W;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:46 +0200
Message-Id: <20200504125359.5678-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURT1dabToVAdCpEXJBBr1IgIEkBHAQPExAnhw+CPwYhUGFoiBdKy
 /9igglaqshihgKKi7LIKWMJWlmpZJCwGkQYRBSE0YlgiqCBlAP/Odt+5uXk4wu9gW+NhEdG0
 NEIYLsC4aF3XSt+xOKIy8HjHnB2p7HvHIquyKtjkel0aQg4t/cDI3OleQBaXdrLI/BZ3cnFo
 gkVWT35gk2ktvRxyUJ2LkeUdeg45/fQXQrbNf2WT+owO4LWHKntcBqim5XyUeqPSc6j65c9s
 avyulkXVFFynPq1NIlTGSCGgGj/KMUqrHuVQ92pLALVQbXveLIDrEUKHh8XSUqczQVxx6Zc1
 ELXMj9cZ3ORATiiACQ4JV/ileQxRAC7OJ4oAXH2/jjJkEUClepHFkAUAM1/oONsjOTU9gDEK
 AVSk52E7I8sF1SxjCiOcocKgwIzYkrgF4FulmTGEECoEftf83jQsCD+YoxtGjRglDsIUXTZb
 AXCcR3jA8akTTJsdLK1sRYyyCeEJs5WHjc9AYpQD1cqHGJM5C0v1eSwGW8BZbe3WpjawOyMV
 ZQZuADjRV85hSCqAg0lZgEm5w7G+VczYgBBHYIXaiZG94WDe9OY+kNgNRwzmRhnZgOl1jxBG
 5sHbyXwmfQiqtK92atv6BxAGU/DOkmrrvu0ArvSPgwfATvW/LB+AEmBFx8gkIlrmEkHHOcqE
 EllMhMgxOFJSDTb+VveadqkBNP+5qgEEDgRmvIsLFYF8tjBWliDRAIgjAktew80NiRciTEik
 pZFXpDHhtEwD9uGowIrn8mzmMp8QCaPpazQdRUu3XRZuYi0HvKCT8W7W6fx1JLEn0TcYjxxW
 nNv784JfQFF7aPNfgzfu1aUQ+/sunW48WpXEXzNNbg6db/jW4+g5JRUl2x+w8N41a1rkWh9n
 OmqjLdaIZtlDwc7745/YrKbc11/ys+130Ou9Ol/nOvo0Pbd9uThXP2Be6+QjPpWJxvuLfR1m
 WgWoTCx0tkekMuE/ZvP2N1cDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7rlAhviDM5u5bToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFnOdnGS1Wrj7KZLFgv7XFlysPmSw2Pb7GajFx/1l2i8u75rBZrD1yl93i
 +cIfzBYHPzxhtbg7+QijA7/HmnlrGD32flvA4rFz1l12j+3fHrB63O8+zuSxeUm9x+1/j5k9
 Jt9Yzuix+2YDm8fxXbfYPfq2rGL0+LxJLoAnSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9j9aN/jAXfhCpOvTVtYGwQ6GLk5JAQMJGYvfkMYxcj
 F4eQwFJGiZer3rBAJGQkTk5rYIWwhSX+XOtigyj6xChxrnsTWIJNwFCi6y1EQkSgk1FiWvdH
 dhCHWWAJs0Tf1EtsIFXCAj4Ss09dBRvLIqAq0X5qJlA3BwevgI3E/WdmEBvkJVZvOMAMEuYU
 sJWY2asOEhYSyJe4+/QfywRGvgWMDKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECo2jbsZ9b
 djB2vQs+xCjAwajEw7vh6/o4IdbEsuLK3EOMEhzMSiK8O1qAQrwpiZVVqUX58UWlOanFhxhN
 gU6ayCwlmpwPjPC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M
 LcIGjmedQ/1YHl9ymXz1wByNa79Co7TVvrHUFMvMfzxVudXZ+pfOlSlvDSTKP9fP6OqvU7T7
 G6hW8FuZ91r3s/q34pyrjsQ0bH+8r3jjg9LHH/tcl1gbd5dJBt64xsLHnCRodzb2f0r5zk1m
 O25veW0VVTzZ73/LhL8PXgcU/oiffTsn7s4CJZbijERDLeai4kQAb5PeGrgCAAA=
X-CMS-MailID: 20200504125415eucas1p2757f9a71add8c7547bc8f85906468113
X-Msg-Generator: CA
X-RootMTR: 20200504125415eucas1p2757f9a71add8c7547bc8f85906468113
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125415eucas1p2757f9a71add8c7547bc8f85906468113
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125415eucas1p2757f9a71add8c7547bc8f85906468113@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 08/21] drm: msm: fix sg_table nents vs.
	orig_nents misuse
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICB8IDggKysrKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMgfCAzICsrLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwppbmRleCA1YTZh
NzlmLi41NGMzYmJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpAQCAtNTQsMTAgKzU0LDEwIEBAIHN0
YXRpYyB2b2lkIHN5bmNfZm9yX2RldmljZShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmop
CiAKIAlpZiAoZ2V0X2RtYV9vcHMoZGV2KSAmJiBJU19FTkFCTEVEKENPTkZJR19BUk02NCkpIHsK
IAkJZG1hX3N5bmNfc2dfZm9yX2RldmljZShkZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNt
X29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQkJbXNtX29iai0+c2d0LT5v
cmlnX25lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBlbHNlIHsKIAkJZG1hX21hcF9zZyhk
ZXYsIG1zbV9vYmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElS
RUNUSU9OQUwpOworCQkJbXNtX29iai0+c2d0LT5vcmlnX25lbnRzLCBETUFfQklESVJFQ1RJT05B
TCk7CiAJfQogfQogCkBAIC02NywxMCArNjcsMTAgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfY3B1
KHN0cnVjdCBtc21fZ2VtX29iamVjdCAqbXNtX29iaikKIAogCWlmIChnZXRfZG1hX29wcyhkZXYp
ICYmIElTX0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewogCQlkbWFfc3luY19zZ19mb3JfY3B1KGRl
diwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJF
Q1RJT05BTCk7CisJCQltc21fb2JqLT5zZ3QtPm9yaWdfbmVudHMsIERNQV9CSURJUkVDVElPTkFM
KTsKIAl9IGVsc2UgewogCQlkbWFfdW5tYXBfc2coZGV2LCBtc21fb2JqLT5zZ3QtPnNnbCwKLQkJ
CW1zbV9vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJCW1zbV9vYmotPnNn
dC0+b3JpZ19uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOwogCX0KIH0KIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2lvbW11LmMKaW5kZXggYWQ1OGNmZS4uYjBjYTA4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21faW9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5j
CkBAIC00Myw3ICs0Myw4IEBAIHN0YXRpYyBpbnQgbXNtX2lvbW11X21hcChzdHJ1Y3QgbXNtX21t
dSAqbW11LCB1aW50NjRfdCBpb3ZhLAogCXN0cnVjdCBtc21faW9tbXUgKmlvbW11ID0gdG9fbXNt
X2lvbW11KG1tdSk7CiAJc2l6ZV90IHJldDsKIAotCXJldCA9IGlvbW11X21hcF9zZyhpb21tdS0+
ZG9tYWluLCBpb3ZhLCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgcHJvdCk7CisJcmV0ID0gaW9tbXVf
bWFwX3NnKGlvbW11LT5kb21haW4sIGlvdmEsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJ
CQkgICBwcm90KTsKIAlXQVJOX09OKCFyZXQpOwogCiAJcmV0dXJuIChyZXQgPT0gbGVuKSA/IDAg
OiAtRUlOVkFMOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
