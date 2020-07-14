Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CCD21E472
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 02:23:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C5AC665A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 00:23:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F951665B0; Tue, 14 Jul 2020 00:23:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32B8B6659B;
	Tue, 14 Jul 2020 00:22:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 16A7066539
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 00:22:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09BE46659B; Tue, 14 Jul 2020 00:22:41 +0000 (UTC)
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
 by lists.linaro.org (Postfix) with ESMTPS id 8E71A665A5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 00:22:16 +0000 (UTC)
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200714002214epoutp022afeedb0c2da942a97e8bb3941b8216d~hdpcryCnh0570105701epoutp02b
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 00:22:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200714002214epoutp022afeedb0c2da942a97e8bb3941b8216d~hdpcryCnh0570105701epoutp02b
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200714002212epcas1p35e688c85a1bc2e40955499da2ad93762~hdpa_V2Q20085300853epcas1p3M;
 Tue, 14 Jul 2020 00:22:12 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.155]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4B5Lmt1FkXzMqYks; Tue, 14 Jul
 2020 00:22:06 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 53.20.29173.DAAFC0F5; Tue, 14 Jul 2020 09:22:06 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200714002205epcas1p44e1d003b5d60efb8148aa596e4cb8d38~hdpT_7pW_0618706187epcas1p48;
 Tue, 14 Jul 2020 00:22:05 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200714002205epsmtrp12dcbda1e4b1cf55e988bbf32359607c9~hdpT_Dzcp2665626656epsmtrp1d;
 Tue, 14 Jul 2020 00:22:05 +0000 (GMT)
X-AuditID: b6c32a37-9cdff700000071f5-30-5f0cfaad2f95
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E6.EE.08382.DAAFC0F5; Tue, 14 Jul 2020 09:22:05 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200714002205epsmtip2cb49aa13a900bde1e88c05781c20e6dc~hdpTrN5q12212122121epsmtip28;
 Tue, 14 Jul 2020 00:22:05 +0000 (GMT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <90332e7a-aa0e-3dd9-91cc-cdf87533f403@samsung.com>
Date: Tue, 14 Jul 2020 09:28:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200619103636.11974-8-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPJsWRmVeSWpSXmKPExsWy7bCmru66XzzxBtsOMVn0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs5hxfh+Txdojd9ktDn54wmox
 Y/JLNgdejzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAVxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5ibmptkouPgG6bpk5
 QLcrKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgosC/SKE3OLS/PS9ZLzc60MDQyM
 TIEKE7Izvm6/zVrQz1sxdcs1xgbGU1xdjBwcEgImEt/fKXYxcnEICexglFjQeZ8dwvnEKPFu
 +QdmCOcbo8SNd99Yuxg5wTombZzECpHYyyix4m07lPOeUeL8uwYmkCphgUSJ3pP32EBsEYEt
 jBLNU91AipgFdjBJXPq+mQUkwSagKjFxxX2wIl4BO4kTz3rBbBag+O+X28EGiQpESBzvnswO
 USMocXLmE7BeTqD6z3cOg8WZBcQlbj2ZzwRhy0s0b50NdreEwB0OiZVPD7JA3O0isfToPSYI
 W1ji1fEt7BC2lMTL/jZ2iIZmRomJM04zQTgdjBJ3H1+H6jaW2L90MhMozJgFNCXW79KHCCtK
 7Pw9lxFiM5/Eu689rJBg5ZXoaBOCKFGSOHbxBiOELSFxYclENgjbQ+LMvTksExgVZyH5bRaS
 f2Yh+WcWwuIFjCyrGMVSC4pz01OLDQuMkeN7EyM4ZWuZ72Cc9vaD3iFGJg7GQ4wSHMxKIrzR
 opzxQrwpiZVVqUX58UWlOanFhxhNgaE9kVlKNDkfmDXySuINTY2MjY0tTAzNTA0NlcR5/51l
 jxcSSE8sSc1OTS1ILYLpY+LglGpgMmsJ0Sl14Z1fkuCx/uupRzZOV22fp9/ldG6YfyPbaJHB
 LIlJ70ViIpffWqArahhyIrHxg2fO/c/vVz+02qqzkmvJ548P/rBJxOrzqjyS1/1xl0dDo+1d
 7CLt8hV31Brm7w2unu/J6/nq3jNHtcaePzPWT/qUVC+x2kJH1yz7+9+j09eKxDloylY/4W7b
 43Xh1GFzW7klwnqzvdIzKn7Nv/H79hbRycJaZoyO5Y/OrJJf9NXriRnTdyvfWaxOOjVN6r8F
 2DpX3l0tGCNcovxcuGx7RnWNYb3IMf931498WZbT47ik7Icnx/tNffsjbuqtu3bylvjear4E
 7ZNP91l96mZrfse38eHdhimKTnL/lViKMxINtZiLihMBA/4EPWIEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsWy7bCSvO7aXzzxBvdn8Fr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs5hxfh+Txdojd9ktDn54wmox
 Y/JLNgdejzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAVxRXDYpqTmZZalF+nYJXBlft99mLejnrZi65RpjA+Mpri5GTg4JAROJSRsnsXYxcnEI
 CexmlFh0qhnI4QBKSEhs2coBYQpLHD5cDFHyllFix8FNzCC9wgKJErNvnmcCSYgIbGGUeLbi
 MCOIwyywg0li+75/TBAtRxkl7jyZAdbCJqAqMXHFfTYQm1fATuLEs14wmwUo/vvldiYQW1Qg
 QqLl/h92iBpBiZMzn7CA2JxA9Z/vHAaLMwuoS/yZd4kZwhaXuPVkPhOELS/RvHU28wRGoVlI
 2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQsM81LL9YoTc4tL89L1kvNzNzGCY1RLcwfj9lUf
 9A4xMnEwHmKU4GBWEuGNFuWMF+JNSaysSi3Kjy8qzUktPsQozcGiJM57o3BhnJBAemJJanZq
 akFqEUyWiYNTqoFJR+LXCl32zauNDyjL++d/er9MatoFiXm+k+z0fbRqEutuz+ytnrJe1OuP
 2ZsIlihrjTdH2ab3B2dNbKjbcfaBsx5fAZ/rKe7bTvxsl35KXUxeXdV9e0N/1puAKMvT/Id+
 uzP/qL4ub/P+kbygxumV+/a2FMWcPKRge6qTQ1B9j1C1XJnPp5aVl++cjNHIfG5xPGSu6Ka3
 PjdOPOM/vzJq6XmhjZ/6G3+4hqRv5JIOXiemueP46vy4V7lzjz2PdJ1mdZbNacnelLsJ2c/f
 6foEtH7lkrKapFyhfOqxc+sUNb4fdXWfH1jw7b54ZnPAcyc5Q82fLVKlTBN/7efve6N0/DOj
 LCe3UW9+Gt/BV01KLMUZiYZazEXFiQAuYyq3QAMAAA==
X-CMS-MailID: 20200714002205epcas1p44e1d003b5d60efb8148aa596e4cb8d38
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200619103657eucas1p24bff92408adbd4715130fb47595a6187
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103657eucas1p24bff92408adbd4715130fb47595a6187@eucas1p2.samsung.com>
 <20200619103636.11974-8-m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v7 07/36] drm: exynos: use common helper
 for a scatterlist contiguity check
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgoyMC4gNi4gMTkuIOyYpO2bhCA3OjM27JeQIE1hcmVrIFN6eXByb3dza2kg7J20KOqwgCkg7JO0
IOq4gDoKPiBVc2UgY29tbW9uIGhlbHBlciBmb3IgY2hlY2tpbmcgdGhlIGNvbnRpZ3VpdHkgb2Yg
dGhlIGltcG9ydGVkIGRtYS1idWYuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3Nr
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKQWNrZWQtYnkgOiBJbmtpIERhZSA8aW5raS5k
YWVAc2Ftc3VuZy5jb20+CgpUaGFua3MsCklua2kgRGFlCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMgfCAyMyArKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jCj4gaW5kZXggZWZhNDc2ODU4ZGI1
Li4xNzE2YTAyM2JjYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlu
b3NfZHJtX2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dl
bS5jCj4gQEAgLTQzMSwyNyArNDMxLDEwIEBAIGV4eW5vc19kcm1fZ2VtX3ByaW1lX2ltcG9ydF9z
Z190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICB7Cj4gIAlzdHJ1Y3QgZXh5bm9zX2Ry
bV9nZW0gKmV4eW5vc19nZW07Cj4gIAo+IC0JaWYgKHNndC0+bmVudHMgPCAxKQo+ICsJLyogY2hl
Y2sgaWYgdGhlIGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCj4gKwlp
ZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFjaC0+ZG1hYnVmLT5z
aXplKSB7Cj4gKwkJRFJNX0VSUk9SKCJidWZmZXIgY2h1bmtzIG11c3QgYmUgbWFwcGVkIGNvbnRp
Z3VvdXNseSIpOwo+ICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+IC0KPiAtCS8qCj4gLQkg
KiBDaGVjayBpZiB0aGUgcHJvdmlkZWQgYnVmZmVyIGhhcyBiZWVuIG1hcHBlZCBhcyBjb250aWd1
b3VzCj4gLQkgKiBpbnRvIERNQSBhZGRyZXNzIHNwYWNlLgo+IC0JICovCj4gLQlpZiAoc2d0LT5u
ZW50cyA+IDEpIHsKPiAtCQlkbWFfYWRkcl90IG5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNn
dC0+c2dsKTsKPiAtCQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnM7Cj4gLQkJdW5zaWduZWQgaW50IGk7
Cj4gLQo+IC0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzLCBzZ3QtPm5lbnRzLCBpKSB7Cj4gLQkJ
CWlmICghc2dfZG1hX2xlbihzKSkKPiAtCQkJCWJyZWFrOwo+IC0JCQlpZiAoc2dfZG1hX2FkZHJl
c3MocykgIT0gbmV4dF9hZGRyKSB7Cj4gLQkJCQlEUk1fRVJST1IoImJ1ZmZlciBjaHVua3MgbXVz
dCBiZSBtYXBwZWQgY29udGlndW91c2x5Iik7Cj4gLQkJCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKPiAtCQkJfQo+IC0JCQluZXh0X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzKSArIHNnX2RtYV9s
ZW4ocyk7Cj4gLQkJfQo+ICAJfQo+ICAKPiAgCWV4eW5vc19nZW0gPSBleHlub3NfZHJtX2dlbV9p
bml0KGRldiwgYXR0YWNoLT5kbWFidWYtPnNpemUpOwo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
