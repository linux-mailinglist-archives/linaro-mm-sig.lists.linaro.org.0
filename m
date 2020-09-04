Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F7825DA59
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:47:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D749F606B5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:47:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C77CF617B6; Fri,  4 Sep 2020 13:47:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8276F66776;
	Fri,  4 Sep 2020 13:36:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4BA5766744
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3959566746; Fri,  4 Sep 2020 13:35:16 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C001966745
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:02 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133502euoutp01f1ede926f55d5de7aa4791073a3e0848~xmAfSGEUm0722107221euoutp01f
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133502euoutp01f1ede926f55d5de7aa4791073a3e0848~xmAfSGEUm0722107221euoutp01f
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133501eucas1p2529f0bc87c0af4baebd81f9e3a264781~xmAewqEbQ1446814468eucas1p2f;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D7.66.05997.582425F5; Fri,  4
 Sep 2020 14:35:01 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133501eucas1p2a2bc13658bf8433a10fcb8d5a173d57a~xmAeW9WOJ1447814478eucas1p2k;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133501eusmtrp2f6963a47e96a1e719bc7222b3c1b5da4~xmAeWIaL40977009770eusmtrp2F;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-5d-5f5242850e4c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id ED.AE.06314.482425F5; Fri,  4
 Sep 2020 14:35:00 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133500eusmtip1774ac3ba3b0b581411835ea2c5a7ac96~xmAduhpK11924719247eusmtip1c;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:53 +0200
Message-Id: <20200904131711.12950-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGuZ0uQ0NlLBiuiJI0SqJRlsrDJCgqLplEFMQHg0ahygQItJAW
 EDBR0KCmgmEJ2gAKgoBssu8CUpBKkIoCsg77IhpiDRWFIth2UN/++//fueeek4si/DaWNRoo
 CSOlElGwgM1l1nSsvD8Q5+bl4/h1ZDueoO5k4OWKUha+UZOE4H0/vrHxjPlugBcUvWHgWS0u
 uLZvkoFXTH9i4Ukt3Ry8tyGDjZe0Uxx8/tkvBG/VzLBwKqUdHDUnip8WA6JpOYtJ1KdRHKJ2
 eYJFjD9QMYjK57eIkfVphEgZzAdE41AMm1A1DHOIh1WFgFiq2OVpdpF7yI8MDowgpQ6uvtyA
 uWENCKUEkc2KGSQGrNnIgSkKMWf4RXWPLQdclI+9ALBsro5tCPiYFsDOeGc6WAKQymliyAFq
 rEgtsKaZfADfrp6nGT3fT00xDAEbc4LyRbnxIkssTg8lmBkgBEtD4GelzhhYYJ4wZ15jLGBi
 e2ByeZdR8zBXODb6nUk/zxYWlb1GDNpU71crZliGiyA2xoHpmvRN6AR89aEWobWFfp4qDq1t
 4EZ9JoMuuAPgpLqEQx/iAey9rQA05QJH1atsw2wItheWNjjQ9jE4UJjHokfeAgcXtxpsRC+T
 ax4jtM2D9+/yadoOpqle/mvb2vNxEyFg/sQZekFJ+j0Ml3MSgW3a/15ZABQCKzJcJvYnZUIJ
 ed1eJhLLwiX+9tdCxBVA/7W61lXaOtCwdlUJMBQIzHgmR7x8+CxRhCxKrAQQRQSWPLfurit8
 np8oKpqUhvhIw4NJmRLsQJkCK97B7IXLfMxfFEYGkWQoKf2bMlBT6xjgGLvTPC+0OcVsQCfs
 eXeh09k16FxiP2/hrDA5EuROw9nDyGJjBDOxd4nyqtLZKQU6b+9V99FTYBbkru8OGso8bbLf
 sm1Yx/XomJKkxt5UaG9QZJwW83V31ERfGhfyVx6lHK+uXHriN1jg/TsIocQeOW4/MbXw5Ei2
 pC1zm4ApCxA57UOkMtEfgA/Lx1YDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7qtTkHxBhtFLHrPnWSy2DhjPavF
 /20TmS2ufH3PZjHn+VlGi5WrjzJZLNhvbfHlykMmi02Pr7FaTNx/lt3i8q45bBZrj9xlt3i+
 8AezxcEPT1gt7k4+wujA77Fm3hpGj73fFrB47Jx1l91j+7cHrB73u48zeWxeUu9x+99jZo/J
 N5Yzeuy+2cDmcXzXLXaPvi2rGD0+b5IL4InSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQz
 NDaPtTIyVdK3s0lJzcksSy3St0vQy3h26wNjwV2lin0znjA3MP6R6WLk4JAQMJGYulKqi5GL
 Q0hgKaPEgrs/2bsYOYHiMhInpzWwQtjCEn+udbFBFH1ilNj/4xFYEZuAoUTXW4iEiEAno8S0
 7o/sIA6zwBJmib6pl9hAqoQF/CQ+HzoBNopFQFVi0sbTTCA2r4CdxL07H1kgVshLrN5wgBnE
 5gSKb53xBKxeSMBW4sOcxSwTGPkWMDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyjbcd+
 bt7BeGlj8CFGAQ5GJR5eBvugeCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYf
 YjQFOmois5Rocj4wxvNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBK
 NTDaPevftdRdViYiOkde6ppRfqLLrF4Bu1/n1D06U69u599whKe18IvqhjilvFNVnMd4t7xd
 7MQqbXm/K7DrB4Pk7X2nRe8s8L+z07Fz/tzED99veK0UcNgsfj01XeykJk/f1O2mcbUWl2NW
 yT05uKD/SkDYAplPYX8MHr2cdcin8TtfWfek/H4lluKMREMt5qLiRAAN31+euQIAAA==
X-CMS-MailID: 20200904133501eucas1p2a2bc13658bf8433a10fcb8d5a173d57a
X-Msg-Generator: CA
X-RootMTR: 20200904133501eucas1p2a2bc13658bf8433a10fcb8d5a173d57a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133501eucas1p2a2bc13658bf8433a10fcb8d5a173d57a
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133501eucas1p2a2bc13658bf8433a10fcb8d5a173d57a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 12/30] drm: msm: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJr
QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyAgICB8IDEzICsr
KysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jIHwgMTUgKysrKysr
Ky0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9pb21tdS5jICB8ICAyICstCiAzIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ2VtLmMKaW5kZXggYjJmNDkxNTJiNGQ0Li44YzdhZTgxMmI4MTMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jCkBAIC01MywxMSArNTMsMTAgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfZGV2aWNlKHN0
cnVjdCBtc21fZ2VtX29iamVjdCAqbXNtX29iaikKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtc21f
b2JqLT5iYXNlLmRldi0+ZGV2OwogCiAJaWYgKGdldF9kbWFfb3BzKGRldikgJiYgSVNfRU5BQkxF
RChDT05GSUdfQVJNNjQpKSB7Ci0JCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZGV2LCBtc21fb2Jq
LT5zZ3QtPnNnbCwKLQkJCW1zbV9vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsK
KwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGRldiwgbXNtX29iai0+c2d0LAorCQkJCQkg
ICAgRE1BX0JJRElSRUNUSU9OQUwpOwogCX0gZWxzZSB7Ci0JCWRtYV9tYXBfc2coZGV2LCBtc21f
b2JqLT5zZ3QtPnNnbCwKLQkJCW1zbV9vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFM
KTsKKwkJZG1hX21hcF9zZ3RhYmxlKGRldiwgbXNtX29iai0+c2d0LCBETUFfQklESVJFQ1RJT05B
TCwgMCk7CiAJfQogfQogCkBAIC02NiwxMSArNjUsOSBAQCBzdGF0aWMgdm9pZCBzeW5jX2Zvcl9j
cHUoc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2JqKQogCXN0cnVjdCBkZXZpY2UgKmRldiA9
IG1zbV9vYmotPmJhc2UuZGV2LT5kZXY7CiAKIAlpZiAoZ2V0X2RtYV9vcHMoZGV2KSAmJiBJU19F
TkFCTEVEKENPTkZJR19BUk02NCkpIHsKLQkJZG1hX3N5bmNfc2dfZm9yX2NwdShkZXYsIG1zbV9v
YmotPnNndC0+c2dsLAotCQkJbXNtX29iai0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwp
OworCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoZGV2LCBtc21fb2JqLT5zZ3QsIERNQV9CSURJ
UkVDVElPTkFMKTsKIAl9IGVsc2UgewotCQlkbWFfdW5tYXBfc2coZGV2LCBtc21fb2JqLT5zZ3Qt
PnNnbCwKLQkJCW1zbV9vYmotPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJZG1h
X3VubWFwX3NndGFibGUoZGV2LCBtc21fb2JqLT5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsK
IAl9CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jIGIv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1bW11LmMKaW5kZXggMzEwYTMxYjA1ZmFhLi41M2E3
MzQ4NDc2YTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jCkBAIC0zMCwyMSArMzAsMjAgQEAg
c3RhdGljIGludCBtc21fZ3B1bW11X21hcChzdHJ1Y3QgbXNtX21tdSAqbW11LCB1aW50NjRfdCBp
b3ZhLAogewogCXN0cnVjdCBtc21fZ3B1bW11ICpncHVtbXUgPSB0b19tc21fZ3B1bW11KG1tdSk7
CiAJdW5zaWduZWQgaWR4ID0gKGlvdmEgLSBHUFVNTVVfVkFfU1RBUlQpIC8gR1BVTU1VX1BBR0Vf
U0laRTsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOworCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVy
IGRtYV9pdGVyOwogCXVuc2lnbmVkIHByb3RfYml0cyA9IDA7Ci0JdW5zaWduZWQgaSwgajsKIAog
CWlmIChwcm90ICYgSU9NTVVfV1JJVEUpCiAJCXByb3RfYml0cyB8PSAxOwogCWlmIChwcm90ICYg
SU9NTVVfUkVBRCkKIAkJcHJvdF9iaXRzIHw9IDI7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwg
c2csIHNndC0+bmVudHMsIGkpIHsKLQkJZG1hX2FkZHJfdCBhZGRyID0gc2ctPmRtYV9hZGRyZXNz
OwotCQlmb3IgKGogPSAwOyBqIDwgc2ctPmxlbmd0aCAvIEdQVU1NVV9QQUdFX1NJWkU7IGorKywg
aWR4KyspIHsKLQkJCWdwdW1tdS0+dGFibGVbaWR4XSA9IGFkZHIgfCBwcm90X2JpdHM7Ci0JCQlh
ZGRyICs9IEdQVU1NVV9QQUdFX1NJWkU7Ci0JCX0KKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdl
KHNndCwgJmRtYV9pdGVyLCAwKSB7CisJCWRtYV9hZGRyX3QgYWRkciA9IHNnX3BhZ2VfaXRlcl9k
bWFfYWRkcmVzcygmZG1hX2l0ZXIpOworCQlpbnQgaTsKKworCQlmb3IgKGkgPSAwOyBpIDwgUEFH
RV9TSVpFOyBpICs9IEdQVU1NVV9QQUdFX1NJWkUpCisJCQlncHVtbXUtPnRhYmxlW2lkeCsrXSA9
IChhZGRyICsgaSkgfCBwcm90X2JpdHM7CiAJfQogCiAJLyogd2UgY2FuIGltcHJvdmUgYnkgZGVm
ZXJyaW5nIGZsdXNoIGZvciBtdWx0aXBsZSBtYXAoKSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21faW9tbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMK
aW5kZXggM2EzODFhOTY3NGM5Li42YzMxZTY1ODM0YzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2lvbW11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUu
YwpAQCAtMzYsNyArMzYsNyBAQCBzdGF0aWMgaW50IG1zbV9pb21tdV9tYXAoc3RydWN0IG1zbV9t
bXUgKm1tdSwgdWludDY0X3QgaW92YSwKIAlzdHJ1Y3QgbXNtX2lvbW11ICppb21tdSA9IHRvX21z
bV9pb21tdShtbXUpOwogCXNpemVfdCByZXQ7CiAKLQlyZXQgPSBpb21tdV9tYXBfc2coaW9tbXUt
PmRvbWFpbiwgaW92YSwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIHByb3QpOworCXJldCA9IGlvbW11
X21hcF9zZ3RhYmxlKGlvbW11LT5kb21haW4sIGlvdmEsIHNndCwgcHJvdCk7CiAJV0FSTl9PTigh
cmV0KTsKIAogCXJldHVybiAocmV0ID09IGxlbikgPyAwIDogLUVJTlZBTDsKLS0gCjIuMTcuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
