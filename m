Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 994ED25DA2F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:43:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6E8366753
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:43:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A883C6675B; Fri,  4 Sep 2020 13:43:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC73E66761;
	Fri,  4 Sep 2020 13:35:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3F7EF66750
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 258DE66740; Fri,  4 Sep 2020 13:35:10 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5C44266740
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:59 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133458euoutp01c88a403971d0101411ae20232e4a5f44~xmAcHdubs0639206392euoutp013
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133458euoutp01c88a403971d0101411ae20232e4a5f44~xmAcHdubs0639206392euoutp013
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133458eucas1p29f0d35d0499f0cbed96b2843ca336b30~xmAbu1mxb0694006940eucas1p2d;
 Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B3.66.05997.282425F5; Fri,  4
 Sep 2020 14:34:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133457eucas1p137d219c4f1af06078d7da5fe92c9aed9~xmAbY4xkM1679116791eucas1p1i;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133457eusmtrp1ccba99a63a17a8a192a0cfb5f3ce35a3~xmAbXuhNR0766507665eusmtrp18;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-51-5f524282f8f8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D7.AE.06314.182425F5; Fri,  4
 Sep 2020 14:34:57 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133457eusmtip15a4c02f7a9ad3a34526338d40b675258~xmAao6iHX1888418884eusmtip1R;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:48 +0200
Message-Id: <20200904131711.12950-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe1BMYRjGfee+qzXHyeWbFDMbZphBYcxHro0xxx8uIzNuQx0cramtZrci
 l7GtcVui7GBL2FGjy5ZYLJPrVqxstrI0m8glpGgUi2HcOp3Ff7/3eZ93nm+e+Ric85AhzMak
 VFGXJCSqKSXhuPPNM84YvSQ2orlGgbI8tRg6b6kg0W9HDo4efv5AoRLbbQwdfpZNIOvNKPS2
 tZFAh9re4ai+/hyN7hvf08j/8AWG7G1NJPJW5lPIUn8DQ+U1T2nk7H5FIou5g5rN8WUnywB/
 /YuV4O2l+yj+8pfnJP9svwvjLxTu4Ft+teG82VcE+KvNBoo/eLEU8J/swxf3X6mcvl5M3Jgu
 6ibMjFNqjnZOS+kI3uys8lEG4GVNgGEgOxmeasdMQMFwbDGAx69pTUDZy34Aze0fKXn4BGC+
 JwtILumg7koTJi+KAOxs8JL/TvILX5KSi2IjoanLREk8iN0F4N2sIMmEs0UEPGH72WcKZmNg
 u/EyLTHBjoIVxa/7dBU7A9pavgXiRkDbuVu4xAp2JrxkedWXBtkeGh7pKcNl01zYuecDJnMw
 7HRdpGUOhW7zAUI+2AngC085LQ8HAPQaLYGIKPjE852S6sDZMbCicoIsz4GXqq/jcksDoK9r
 oCTjvXjYcSwgq+De3ZzsHg3zXGf/xTobHgSexsPj/kO03FAOgMV5ZiobjMj7H2YFoBQMFdP0
 2nhRPzFJ3DReL2j1aUnx49cla+2g95e5f7n8V0Dlj7VVgGWAOkjVb9aSWI4U0vUZ2ioAGVw9
 SBV9372GU60XMraIuuRYXVqiqK8CwxhCPVQ16XTHao6NF1LFBFFMEXV/txijCDGAWbB1Rc5c
 S9GM0XH8gKncyDPlsRHzzYsXOTNzW62ZhcvuuAYLOzdwQ/B7xwq8mZ75mtCf3TY6vDbS1xP2
 eeGwXdkrqqMSQhs1uY/INyW+VRFxquyw6LCsggWae49PmOvMyb9LRENKv5gp235sTc8Nn+c+
 H7T8a+0kx1Jhz8TtaLJSTeg1QuRYXKcX/gDFNAP7YQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAIsWRmVeSWpSXmKPExsVy+t/xu7qNTkHxBt+uGlj0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBaT7k9gsViw39rixb2LLBb9j18zW5w/v4Hd4mzTG3aLL1ceMlls
 enyN1eLyrjlsFjPO72OyWHvkLrvFwQ9PWC1mTH7J5iDksWbeGkaPvd8WsHhsWtXJ5rH92wNW
 j/vdx5k8Ni+p97j97zGzx+Qbyxk9dt9sYPPo27KK0ePzJrkA7ig9m6L80pJUhYz84hJbpWhD
 CyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jGmvrApeClccPHSDrYHxskAXIyeH
 hICJxJkd15i6GLk4hASWMkp8b13OBJGQkTg5rYEVwhaW+HOtiw3EFhL4xChx+K4WiM0mYCjR
 9RYkzsUhItDJKDGt+yM7iMMssJlF4t/6J+wgVcICgRIPt3aAdbMIqEqsX/EUbCqvgK3E6ts/
 GSE2yEus3nCAGcTmFLCT2DrjCSvENluJD3MWs0xg5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9d
 Lzk/dxMjMLa2Hfu5eQfjpY3BhxgFOBiVeHgZ7IPihVgTy4orcw8xSnAwK4nwOp09HSfEm5JY
 WZValB9fVJqTWnyI0RToqInMUqLJ+cC4zyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKa
 nZpakFoE08fEwSnVwKh1zfr/rR+3I73PPnLarndsdWxGgNQC3lxmtf4eNt7GwEJzlT17p1X+
 MP6+e1lX4PWD4bU5ZoLSXIduTjlZHvDh8scC0b62RvbJfwvEeyrmG8/w15kucWTFvVvTI5QV
 rv1b53tw7y/5Hc1Bwlcdg/clFm7WMJ30JW8T1/q3984fd/Bm2zhFYroSS3FGoqEWc1FxIgDU
 ikxUwwIAAA==
X-CMS-MailID: 20200904133457eucas1p137d219c4f1af06078d7da5fe92c9aed9
X-Msg-Generator: CA
X-RootMTR: 20200904133457eucas1p137d219c4f1af06078d7da5fe92c9aed9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133457eucas1p137d219c4f1af06078d7da5fe92c9aed9
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133457eucas1p137d219c4f1af06078d7da5fe92c9aed9@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 07/30] drm: exynos: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFqZGEgPGEu
aGFqZGFAc2Ftc3VuZy5jb20+CkFja2VkLWJ5IDogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1bmcu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYyB8IDEwICsr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCmluZGV4IDAzYmUzMTQyNzE4
MS4uOTY3YTVjZGMxMjBlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZzJkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5j
CkBAIC0zOTUsOCArMzk1LDggQEAgc3RhdGljIHZvaWQgZzJkX3VzZXJwdHJfcHV0X2RtYV9hZGRy
KHN0cnVjdCBnMmRfZGF0YSAqZzJkLAogCQlyZXR1cm47CiAKIG91dDoKLQlkbWFfdW5tYXBfc2co
dG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBnMmRfdXNlcnB0ci0+c2d0LT5zZ2wsCi0JCQlnMmRf
dXNlcnB0ci0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCWRtYV91bm1hcF9zZ3Rh
YmxlKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgZzJkX3VzZXJwdHItPnNndCwKKwkJCSAgRE1B
X0JJRElSRUNUSU9OQUwsIDApOwogCiAJcGFnZXMgPSBmcmFtZV92ZWN0b3JfcGFnZXMoZzJkX3Vz
ZXJwdHItPnZlYyk7CiAJaWYgKCFJU19FUlIocGFnZXMpKSB7CkBAIC01MTEsMTAgKzUxMSwxMCBA
QCBzdGF0aWMgZG1hX2FkZHJfdCAqZzJkX3VzZXJwdHJfZ2V0X2RtYV9hZGRyKHN0cnVjdCBnMmRf
ZGF0YSAqZzJkLAogCiAJZzJkX3VzZXJwdHItPnNndCA9IHNndDsKIAotCWlmICghZG1hX21hcF9z
Zyh0b19kbWFfZGV2KGcyZC0+ZHJtX2RldiksIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCURN
QV9CSURJUkVDVElPTkFMKSkgeworCXJldCA9IGRtYV9tYXBfc2d0YWJsZSh0b19kbWFfZGV2KGcy
ZC0+ZHJtX2RldiksIHNndCwKKwkJCSAgICAgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAo
cmV0KSB7CiAJCURSTV9ERVZfRVJST1IoZzJkLT5kZXYsICJmYWlsZWQgdG8gbWFwIHNndCB3aXRo
IGRtYSByZWdpb24uXG4iKTsKLQkJcmV0ID0gLUVOT01FTTsKIAkJZ290byBlcnJfc2dfZnJlZV90
YWJsZTsKIAl9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
