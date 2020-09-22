Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CAE273AE4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Sep 2020 08:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACF9061873
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Sep 2020 06:28:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A0613619AC; Tue, 22 Sep 2020 06:28:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94803618F4;
	Tue, 22 Sep 2020 06:28:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BC7B5610EC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 06:28:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A1CB2618F4; Tue, 22 Sep 2020 06:28:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 444A6610EC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 06:28:01 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200922062759euoutp013cd7185e442f523f7b861a34a5644644~3ByxZn8Fc1293812938euoutp01N
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 06:27:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200922062759euoutp013cd7185e442f523f7b861a34a5644644~3ByxZn8Fc1293812938euoutp01N
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200922062759eucas1p1d826d7ab32553376773aae1d20ebdbf4~3ByxM70VN2773427734eucas1p1C;
 Tue, 22 Sep 2020 06:27:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4F.3B.06318.F69996F5; Tue, 22
 Sep 2020 07:27:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200922062759eucas1p1dafff6a91b3ad27c32fdd0a497b46f2a~3Byw4SByL2780327803eucas1p1R;
 Tue, 22 Sep 2020 06:27:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200922062759eusmtrp17b8ac6d92e407fdfa8f7b8c9a5d5c89b~3Byw3kP2l1970619706eusmtrp1e;
 Tue, 22 Sep 2020 06:27:59 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-d6-5f69996f386d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 22.70.06017.E69996F5; Tue, 22
 Sep 2020 07:27:59 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200922062758eusmtip23638d9360b4e6791e9ed02649c33e9d1~3BywRNsNS2807728077eusmtip2d;
 Tue, 22 Sep 2020 06:27:58 +0000 (GMT)
To: Alex Goins <agoins@nvidia.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <afb59d1b-1fcf-fd6d-2b48-e078e129f1eb@samsung.com>
Date: Tue, 22 Sep 2020 08:27:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.2009211803580.19454@agoins-DiGiTS>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUhUURTGu2/zzdTIdVo8ZVRMZCRoiVKvsrIoeFCCpQQJaVM+1NLRZlwz
 SJJCJovULB2nlKxcSxpXtMWRcpokcyvccJ2KNFtN0kLy9bL87/ed8517Fi5LKrvoZWyYJlrQ
 atThKkZOVTVOvnSNzA4L2lD5ZgnXN+HFXWy2Etz9rDKa6/j+ieGKSp4SXN7jrdx4xyDBmYZf
 01x7rZHhzJ9tNFfxIY32ns+X3ihFfPXEAM33X7AQfPmtM3zP9DDJZ3QWIL6uK4nhLyZ/ZPhL
 FcWIL29K5L+ZVvjOD5B7BQvhYbGCdv32I/LQ1IyvRFS6Iv5nazedhAbkeiRjAXvCtLHfTo/k
 rBIXIijPqSMlMY6gvXeClsQ3BJa6Z/RsSdbXIUJKFCDIGbz+V3xC0JacT4iuhTgEejLrkciL
 sAoKDX2UaCLxDwL07e/+mBjsDvoxPSOyAm+H7u4WUmQKr4Hsh+cokRfjQGh8PkRJHgewZttm
 mGVl2Bs+mLVimMQroXrMSErsCN223D8DAZ60g9anVkYaezdMvU0hJV4II5YKO4mXQ1NGKiUV
 JCMYbL5rJ4nUmQuczUKSayv0Nk8xYmcSr4Oy2vUiAt4JTzKcJbSHzjEHaQZ7SK+6RkphBaSc
 V0pvOIPBcu9fV3NLG3kZqQxzFjPM2cYwZxvD/7Z5iCpGjkKMLiJE0HlohDg3nTpCF6MJcTsW
 GWFCMx+uadryvQY9+nW0AWEWqRYo6jNDg5S0OlaXENGAgCVVixS7XjQFKhXB6oRTgjYySBsT
 LugakBNLqRwVHjffH1biEHW0cEIQogTtbJZgZcuSUNCvLJ9o+4+bE2s+OyucHk1NGusnvsh3
 bKnM93c8sP9y3sjptavjNtkyV40tvVW0xeRrjcvXy0yjUfushm0Je+nKhoOtfpr4ZNxrO3Q1
 xXdPnY9n9JU7sqqAXGcb8WA08KSfV6PZ9VV4r0tZjTuxZlq1cV6J//Hb1cbxqNI0H8L4REXp
 QtXuLqRWp/4NxY1Oa2wDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrDIsWRmVeSWpSXmKPExsVy+t/xe7r5MzPjDXZ1M1rc+2Zj0XvuJJPF
 xhnrWS2ufH3PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZHPzwhNViy5uJrA7cHmvmrWH0
 2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefQ2v2Pz6NuyitFj8+lqj8+b5AK4o/Rs
 ivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyeiZ/YiqY
 xFvx++It1gbGB1xdjJwcEgImEjM+PWLqYuTiEBJYyiixtWk2G0RCRuLktAZWCFtY4s+1LjaI
 oreMEnf2HWMGSQgLpEvcnnqAEcQWEVCSWDHrHgtIEbPADyaJPScfMkN0rGGS2PvqClgHm4Ch
 RNfbLrAVvAJ2ErduXQCLswioSszc28oCYosKxEmc6XkBVSMocXLmE6A4BwengIPEm4NFIGFm
 ATOJeZsfMkPY8hLb386BssUlbj2ZzzSBUWgWku5ZSFpmIWmZhaRlASPLKkaR1NLi3PTcYiO9
 4sTc4tK8dL3k/NxNjMCY3nbs55YdjF3vgg8xCnAwKvHwHpiaES/EmlhWXJl7iFGCg1lJhNfp
 7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYSTc4Hppu8knhDU0NzC0tDc2NzYzMLJXHeDoGD
 MUIC6YklqdmpqQWpRTB9TBycUg2Mfek53It1ZhaVe2en8RdJXEx5fN1tWdIEX0nmNn3+u65n
 F09z/vjXwGa6P1+M++21z7pTP64Ne8vI16wt5N6z7GdE0v2g17e9clkkP+y5/Nbw1JNNWru0
 g563vFug3ZAtyDWPMThW+wc/73OurXqy10qUOjdNstD+NOGhdMCdt1Ju/WW5QW+UWIozEg21
 mIuKEwFlUEQA/wIAAA==
X-CMS-MailID: 20200922062759eucas1p1dafff6a91b3ad27c32fdd0a497b46f2a
X-Msg-Generator: CA
X-RootMTR: 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133259eucas1p273f0e05005b7b1158d884295d35745fd@eucas1p2.samsung.com>
 <20200513133245.6408-5-m.szyprowski@samsung.com>
 <alpine.DEB.2.20.2009211803580.19454@agoins-DiGiTS>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 05/38] drm: prime: use sgtable
 iterators in drm_prime_sg_to_page_addr_arrays()
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

SGkgQWxleCwKCk9uIDIyLjA5LjIwMjAgMDE6MTUsIEFsZXggR29pbnMgd3JvdGU6Cj4gVGVzdGVk
LWJ5OiBBbGV4IEdvaW5zIDxhZ29pbnNAbnZpZGlhLmNvbT4KPgo+IFRoaXMgY2hhbmdlIGZpeGVz
IGEgcmVncmVzc2lvbiB3aXRoIGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgYW5k
Cj4gQU1ER1BVIGluIHY1LjkuCgpUaGFua3MgZm9yIHRlc3RpbmchCgo+IENvbW1pdCAzOTkxMzkz
NCBzaW1pbGFybHkgcmV2YW1wZWQgQU1ER1BVIHRvIHVzZSBzZ3RhYmxlIGhlbHBlciBmdW5jdGlv
bnMuIFdoZW4KPiBpdCBjaGFuZ2VkIGZyb20gZG1hX21hcF9zZ19hdHRycygpIHRvIGRtYV9tYXBf
c2d0YWJsZSgpLCBhcyBhIHNpZGUgZWZmZWN0IGl0Cj4gc3RhcnRlZCBjb3JyZWN0bHkgdXBkYXRp
bmcgc2d0LT5uZW50cyB0byB0aGUgcmV0dXJuIHZhbHVlIG9mIGRtYV9tYXBfc2dfYXR0cnMoKS4K
PiBIb3dldmVyLCBkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cygpIGluY29ycmVjdGx5
IHVzZXMgc2d0LT5uZW50cyB0bwo+IGl0ZXJhdGUgb3ZlciBwYWdlcywgcmF0aGVyIHRoYW4gc2d0
LT5vcmlnX25lbnRzLCByZXN1bHRpbmcgaW4gaXQgbm93IHJldHVybmluZwo+IHRoZSBpbmNvcnJl
Y3QgbnVtYmVyIG9mIHBhZ2VzIG9uIEFNREdQVS4KPgo+IEkgaGFkIHdyaXR0ZW4gYSBwYXRjaCB0
aGF0IGNoYW5nZXMgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoKSB0byB1c2UKPiBm
b3JfZWFjaF9zZ3RhYmxlX3NnKCkgaW5zdGVhZCBvZiBmb3JfZWFjaF9zZygpLCBpdGVyYXRpbmcg
dXNpbmcgc2d0LT5vcmlnX25lbnRzOgo+Cj4gLSAgICAgICBmb3JfZWFjaF9zZyhzZ3QtPnNnbCwg
c2csIHNndC0+bmVudHMsIGNvdW50KSB7Cj4gKyAgICAgICBmb3JfZWFjaF9zZ3RhYmxlX3NnKHNn
dCwgc2csIGNvdW50KSB7Cj4KPiBUaGlzIHBhdGNoIHRha2VzIGl0IGZ1cnRoZXIsIGJ1dCBzdGls
bCBoYXMgdGhlIGVmZmVjdCBvZiBmaXhpbmcgdGhlIG51bWJlciBvZgo+IHBhZ2VzIHRoYXQgZHJt
X3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoKSByZXR1cm5zLiBTb21ldGhpbmcgbGlrZSB0
aGlzCj4gc2hvdWxkIGJlIGluY2x1ZGVkIGluIHY1LjkgdG8gcHJldmVudCBhIHJlZ3Jlc3Npb24g
d2l0aCBBTURHUFUuCgpQcm9iYWJseSB0aGUgZWFzaWVzdCB3YXkgdG8gaGFuZGxlIGEgZml4IGZv
ciB2NS45IHdvdWxkIGJlIHRvIHNpbXBseSAKbWVyZ2UgdGhlIGxhdGVzdCB2ZXJzaW9uIG9mIHRo
aXMgcGF0Y2ggYWxzbyB0byB2NS45LXJjWDogCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1k
ZXZlbC8yMDIwMDkwNDEzMTcxMS4xMjk1MC0zLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS8gCgoK
VGhpcyB3YXkgd2Ugd291bGQgZ2V0IGl0IGZpeGVkIGFuZCBhdm9pZCBwb3NzaWJsZSBjb25mbGlj
dCBpbiB0aGUgLW5leHQuIApEbyB5b3UgaGF2ZSBhbnkgQU1ER1BVIGZpeGVzIGZvciB2NS45IGlu
IHRoZSBxdWV1ZT8gTWF5YmUgeW91IGNhbiBhZGQgCnRoYXQgcGF0Y2ggdG8gdGhlIHF1ZXVlPyBE
YXZlOiB3b3VsZCBpdCBiZSBva2F5IHRoYXQgd2F5PwoKQmVzdCByZWdhcmRzCi0tIApNYXJlayBT
enlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
