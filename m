Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD851C53B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 12:52:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E08F66075
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:52:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 794CD66076; Tue,  5 May 2020 10:52:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FA1566055;
	Tue,  5 May 2020 10:52:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D8D7E60F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:52:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC2DE66055; Tue,  5 May 2020 10:52:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 03D1660F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:52:01 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505105159euoutp01a97e3aaacc9320c9d45959b23b89f1f7~MHFT-AoWl1052510525euoutp01l
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 10:51:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505105159euoutp01a97e3aaacc9320c9d45959b23b89f1f7~MHFT-AoWl1052510525euoutp01l
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505105159eucas1p2e3417a908d5bdeaa73d3b629279ddda5~MHFTtvAJo0098600986eucas1p2j;
 Tue,  5 May 2020 10:51:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 7A.61.61286.F4541BE5; Tue,  5
 May 2020 11:51:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505105158eucas1p2188fe0a38af9dc0195c9f1f5927761d5~MHFTD8nBA0658106581eucas1p2i;
 Tue,  5 May 2020 10:51:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505105158eusmtrp12f82351d230d5cab13dcdc992691e1b2~MHFTDKTMU2856128561eusmtrp1E;
 Tue,  5 May 2020 10:51:58 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-9b-5eb1454fa229
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5F.82.07950.E4541BE5; Tue,  5
 May 2020 11:51:58 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200505105158eusmtip2279b8eab8ea11ac35b06618ad8e6334c~MHFSYOBrz3039930399eusmtip2t;
 Tue,  5 May 2020 10:51:58 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
Date: Tue, 5 May 2020 12:51:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505101508.GA14860@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUzMcRzH973fw/06fnwddp/F2M7TSNFk+21hmrLfJtLWzJg4/MS663JX
 EhspTp2KHk45yWVW5KHc5bIwutGpprWy5Pkpix6EOtS4dPfz0H+vz/vz/uz7fm9fhpD3UL7M
 rrgEQRenUitpGWmvG2zyjwi7Fr3wpmkWl9VUL+GuFVZQ3LA9h+Aeufpo7uKl+xLOcieYG3j0
 RsJZ37VRXGtNEc2VfLlOcoaMUoqr/dxBcVU9OdRylr9cfBnxt79ZSN5ankHz1d9eU3xxfST/
 6phTwtvOH+Sfud8RfF57GeJvPkmh+eyqcsTbGvfz/dZpa9kNsiXbBfWuPYJuwbItsp1um5OO
 H5buPdR6V5qC7tJG5MMADgJzwxfSiGSMHF9AYGoe/DMMIKhNN0vFoR/B++4jxN+T5wPHkYfl
 uAxBRRYnmvoQZOekSTyLiTgKrrc4vTwJK+F910PkMRG4jQD7RyfpWdA4EIy9Rm8QFi+D/Ft3
 vDqJZ8LFuqMjxwwzGW+CgrYo0TIB6k91eC0+eD4YTrsoDxN4OlT3FhEiK+Bpx1mJGNTEwL2G
 xSKHQp+rhhR5InQ5q6QiT4XGvExvZcBpCN40XZGKQyaC1tRCJLqC4XnTEO0JROC5UFGzQJRD
 wJ3Z45UBj4P23glihnGQay8gRJmFdINcdM8Gs/Pqv2drm1uIE0hpHtXMPKqNeVQb8/93LYgs
 RwohUa+JEfSBcUJSgF6l0SfGxQRs02qsaOQPNrqdX28gV8tWB8IMUo5l1/dXRMsp1R59ssaB
 gCGUk9jSH5XRcna7KnmfoNNu1iWqBb0DTWFIpYJddO7jJjmOUSUIsYIQL+j+biWMj28KyqIc
 nd3JB5tpiOhck0qdXdEwmT0Rnj3Fr1jhXuWMDT3grzApgzZsK7hQsiNtR+fKkF/awwbeb5ZG
 5o+1lsgPhSGfLOPnDb5wqJPzk8a2/yqpXnrjTJctOJyPyN0YUPn9Z9dhpnDG4/3r5swcGrP6
 bcLxl/YHSXt3C2Gak6b1CluUktTvVAXOI3R61W+h15eOfwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsVy+t/xe7p+rhvjDO5/MLPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrHw41YWi7bOZawWBz88YbXY
 8mYiqwOvx5p5axg99n5bwOKxaVUnm8f2bw9YPeadDPS4332cyWPzknqP2/8eM3tMvrGc0WP3
 zQY2j74tqxg9Np+u9vi8SS6AN0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshU
 Sd/OJiU1J7MstUjfLkEv49/m42wF/9krGi8fYG9gPMDWxcjJISFgInHnSz8jiC0ksJRRYuVK
 Roi4jMTJaQ2sELawxJ9rXUD1XEA1bxkl1hxfyQKSEBYIkdh66TgTiC0ioCTx9NVZRpAiZoEb
 zBLfNveyQ3TMZpJY3TgPbCybgKFE19susNW8AnYSU/bsB5vEIqAisfJYO9AkDg5RgViJloua
 ECWCEidnPgEr4RTQkWib/RXsImYBM4l5mx8yQ9jyEtvfzoGyxSVuPZnPNIFRaBaS9llIWmYh
 aZmFpGUBI8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwMjfduznlh2MXe+CDzEKcDAq8fBu
 +Lo+Tog1say4MvcQowQHs5II77IfG+KEeFMSK6tSi/Lji0pzUosPMZoC/TaRWUo0OR+YlPJK
 4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTAu/Zj24MUfVz3/Poea
 0hulT25wlU9Ypq3cd7k5wLzwlUjziYBk2WU3+yJcU9h+R4l47p5x9dNFy0NHJPJmmz6bv8W5
 9wp7V7/ZzF3TOI/+K7uw+GFA+GrDucqrshSjE/z7pl1YvNXNZFvwly8ijNcjki/eduvISnj4
 sdCkUZrP3KfLQPnstCQlluKMREMt5qLiRADg0UVbEgMAAA==
X-CMS-MailID: 20200505105158eucas1p2188fe0a38af9dc0195c9f1f5927761d5
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 02/25] drm: core: fix common struct
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgQ2hyaXN0b3BoLAoKT24gMDUuMDUuMjAyMCAxMjoxNSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4+IC0JCWZvcl9lYWNoX3NnX3BhZ2Uoc3QtPnNnbCwgJnNnX2l0ZXIsIHN0LT5uZW50cywg
MCkKPj4gKwkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm9yaWdfbmVu
dHMsIDApCj4gV291bGQgaXQgbWFrZSBzZW5zZSB0byBhbHNvIGFkZCBhIGZvcl9lYWNoX3NndGFi
bGVfcGFnZSBoZWxwZXIgdGhhdAo+IGhpZGVzIHRoZSB1c2Ugb2Ygb3JpZ19uZW50cz8gIFRvIGJl
IHVzZWQgbGlrZToKPgo+IAkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHN0LCAmc2dfaXRlciwgMCkg
ewoKV2Ugd291bGQgbmVlZCB0d28gaGVscGVyczoKCmZvcl9lYWNoX3NndGFibGVfY3B1X3BhZ2Uo
KSBhbmQgZm9yX2VhY2hfc2d0YWJsZV9kbWFfcGFnZSgpLgoKSSBjb25zaWRlcmVkIHRoZW0sIGJ1
dCB0aGVuIEkgZm91bmQgdGhhdCB0aGVyZSBhcmUgYWxyZWFkeSAKZm9yX2VhY2hfc2dfcGFnZSgp
LCBmb3JfZWFjaF9zZ19kbWFfcGFnZSgpIGFuZCB2YXJpb3VzIHNwZWNpYWwgaXRlcmF0b3JzIAps
aWtlIHNnX3BhZ2VfaXRlciwgc2dfZG1hX3BhZ2VfaXRlciBhbmQgc2dfbWFwcGluZ19pdGVyLiBU
b28gYmFkIHRoYXQgCnRoZXkgYXJlIGFsbW9zdCBub3QgdXNlZCwgYXQgbGVhc3QgaW4gdGhlIERS
TSBzdWJzeXN0ZW0uIEkgd29uZGVyIGlmIGl0IAptYWtlIHNlbnNlIHRvIGFwcGx5IHRoZW0gb3Ig
c2ltcGx5IHByb3ZpZGUgdGhlIHR3byBhYm92ZSBtZW50aW9uZWQgCndyYXBwZXJzPwoKPj4gKwlm
b3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+b3JpZ19uZW50cywgY291bnQpIHsKPiBTYW1l
IGhlcmUsIGUuZy4KPgo+IAlmb3JfZWFjaF9zZ3RhYmxlX2VudHJ5KHNndCwgc2csIGNvdW50KSB7
Cj4KPiA/Cj4KQmVzdCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBS
JkQgSW5zdGl0dXRlIFBvbGFuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
