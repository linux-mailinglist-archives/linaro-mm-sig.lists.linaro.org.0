Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 136A127E26B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Sep 2020 09:16:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C912B616E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Sep 2020 07:16:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8DEA617EB; Wed, 30 Sep 2020 07:16:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56C9F61718;
	Wed, 30 Sep 2020 07:15:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D7AA610F9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 07:15:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 067D461718; Wed, 30 Sep 2020 07:15:41 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id A2DD2610F9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 07:15:39 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200930071537euoutp01f206aefce2f85b77d0f466a779225216~5fmpTfTDk0548905489euoutp01D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Sep 2020 07:15:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200930071537euoutp01f206aefce2f85b77d0f466a779225216~5fmpTfTDk0548905489euoutp01D
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200930071537eucas1p1fc4912e5d8938177812b7389325e25a9~5fmo_tch31618416184eucas1p1o;
 Wed, 30 Sep 2020 07:15:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 61.EA.06318.990347F5; Wed, 30
 Sep 2020 08:15:37 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200930071536eucas1p2fe055287ddf0e1bb75815ac758582eb2~5fmomJ1Wy1336613366eucas1p2q;
 Wed, 30 Sep 2020 07:15:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200930071536eusmtrp2de88a91384581702e9b0ccc5d2cf54c8~5fmolV88w1670616706eusmtrp2f;
 Wed, 30 Sep 2020 07:15:36 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-1a-5f7430991af9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 48.5E.06314.890347F5; Wed, 30
 Sep 2020 08:15:36 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200930071536eusmtip1a6c08742afc79eda5eca2317382b1471~5fmnzjGB82121921219eusmtip1g;
 Wed, 30 Sep 2020 07:15:35 +0000 (GMT)
To: Alex Deucher <alexdeucher@gmail.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <d004633a-401b-b94d-123c-486185c8905a@samsung.com>
Date: Wed, 30 Sep 2020 09:15:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CADnq5_OP4pEg7Cg9E=TUB0viSX8rTALQoFck=ueTh=phTtUfEA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHec85Ozta0+OsfLtQtFBMKY2sThhhNzj0qX0J6aKtPGrkpux4
 yYIcGpFL7aKmnmReKM1LaWtqTkwntWHmFDdMy8rLikrXEp1gyKrtUPnt93+u7//hJVCxCl9H
 nFekMkqFLEmCe2OtxkXztrLw1Njw4n5f6sPCPirf3ItQY0uckHpS2iSgrE4HTtU1vESoyq5I
 Kvdes5Cat04glHZqWEBZ9OU4VTXbglHXcmsElOGHTUDpZm4Lonxpm0GD0I2aRkC3c++FtLY+
 F6fbFsYFtKZXSn+8YULop/ez6HeuKZQuHKkFdMeoCqfzc77jdIGuHtBP+y7Tc9qNx3xPeO+L
 Y5LOpzPKsP1nvBNfdcwIU3R+F5051bgKaH3UwIuAZATs7r+LqIE3ISYfAlhinRTyYh7ACpUF
 58UcgJo6p0ANCE/LQHEQH68FMGcpD+OFA8BPow7EPdefzICdlhYPryKb/3RzWe4ilOzCoMMw
 4Eng5A6otqtxN4vI/bBGM+thjAyEdcMGzM2ryRhofDWJ8TV+sLfM5mEvUgor9VoPo+Qm2GYv
 R3kOgG9tFR5DkNQRUNftwnmnh6E5vwHh2R9+M+mEPG+Av9r/NuQAOGF+JORFHoCW7FLAV0XC
 MfNP3H0AlNwKm/Rh/C0OwBeFQTz6wBG7H/8GH3intQTlwyJ4/ZqYnxEEOdPjf1sNg0PoLSDh
 ljnjlrnhlrnh/q+tBFg9CGDSWHkCw+5UMBnbWZmcTVMkbD+XLNeCP/+yz2VyPgPPl872AJIA
 kpUiYg0bKxbI0tlMeQ+ABCpZJTrY3xcjFsXJMi8xyuRYZVoSw/aA9QQmCRDtrP56WkwmyFKZ
 CwyTwij/ZhHCa50KXAo1DnJj9LROPrp6xRbDy6lg4yhb9WVFUfpcZnxdZ9WhYzcy+utBd3Da
 m6Ilk8XuIBvFR/1dEXvyP8fI7SNHon9mXonUvx06/gsr1kfdfDD4Qeac3h2KucI2r21MGg9R
 7Cp4LQ2siY+rTr5z0npGmt3VFJa992r0YnOvNZkqOCXB2ETZjhBUycp+AxrVr/aTAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsVy+t/xu7ozDEriDc73G1vc+2Zj0XvuJJPF
 nT+z2C02zljPanHl63s2i5WrjzJZLNhvbdE5ewO7xZcrD5ksNj2+xmpxedccNouFH7eyWLR1
 LmO1OPjhCavFljcTWR34PZ4cnMfksWbeGkaPnbPusntsWtXJ5rH92wNWj3knAz3udx9n8ti8
 pN7j9r/HzB6Tbyxn9Nh9s4HNo7f5HZtH35ZVjB6bT1d7fN4kF8AfpWdTlF9akqqQkV9cYqsU
 bWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZapG+XoJdxavcb9oItghVfmxexNTBu4uti
 5OCQEDCROD9VrYuRk0NIYCmjxPXOGBBbQkBG4uS0BlYIW1jiz7Uuti5GLqCat4wSn9b8YgRJ
 CAuUS+y9vJUJxBYR2MAosXVKPojNLHCQRaLvaylEwwpmiWtrfoMVsQkYSnS9BZnEycErYCex
 bN5HMJtFQFVi5bWDLCC2qECcxJmeF1A1ghInZz4Bi3MKBEos2LWJBWKBmcS8zQ+ZIWx5ie1v
 50DZ4hK3nsxnmsAoNAtJ+ywkLbOQtMxC0rKAkWUVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZG
 YHLYduzn5h2MlzYGH2IU4GBU4uFNkCiOF2JNLCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58
 UWlOavEhRlOg5yYyS4km5wMTV15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQi
 mD4mDk6pBsbwoqCQ+sowlVNamULNm6ZOSnq/S4bpA2fMLc/Huhsv56R9OhOcYP30U/OlZa9f
 ZsjznTsYJC/WLvDV4tPTqQ/WRguwsXk4iRneFt2ZvMBevdHEOOOze9W6z1oiPFM4Hh65E5Wy
 tMkho38K4/Xrrmc4rLjFw/Z+XvXrG1vBqWlf1kncEV0yy1aJpTgj0VCLuag4EQB5rjW3JAMA
 AA==
X-CMS-MailID: 20200930071536eucas1p2fe055287ddf0e1bb75815ac758582eb2
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
 <afb59d1b-1fcf-fd6d-2b48-e078e129f1eb@samsung.com>
 <CADnq5_OP4pEg7Cg9E=TUB0viSX8rTALQoFck=ueTh=phTtUfEA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Alex Goins <agoins@nvidia.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING
 FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
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

SGkgQWxsLAoKT24gMjUuMDkuMjAyMCAyMzoyMywgQWxleCBEZXVjaGVyIHdyb3RlOgo+IE9uIFR1
ZSwgU2VwIDIyLCAyMDIwIGF0IDI6MjggQU0gTWFyZWsgU3p5cHJvd3NraQo+IDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+PiBPbiAyMi4wOS4yMDIwIDAxOjE1LCBBbGV4IEdvaW5z
IHdyb3RlOgo+Pj4gVGVzdGVkLWJ5OiBBbGV4IEdvaW5zIDxhZ29pbnNAbnZpZGlhLmNvbT4KPj4+
Cj4+PiBUaGlzIGNoYW5nZSBmaXhlcyBhIHJlZ3Jlc3Npb24gd2l0aCBkcm1fcHJpbWVfc2dfdG9f
cGFnZV9hZGRyX2FycmF5cygpIGFuZAo+Pj4gQU1ER1BVIGluIHY1LjkuCj4+IFRoYW5rcyBmb3Ig
dGVzdGluZyEKPj4KPj4+IENvbW1pdCAzOTkxMzkzNCBzaW1pbGFybHkgcmV2YW1wZWQgQU1ER1BV
IHRvIHVzZSBzZ3RhYmxlIGhlbHBlciBmdW5jdGlvbnMuIFdoZW4KPj4+IGl0IGNoYW5nZWQgZnJv
bSBkbWFfbWFwX3NnX2F0dHJzKCkgdG8gZG1hX21hcF9zZ3RhYmxlKCksIGFzIGEgc2lkZSBlZmZl
Y3QgaXQKPj4+IHN0YXJ0ZWQgY29ycmVjdGx5IHVwZGF0aW5nIHNndC0+bmVudHMgdG8gdGhlIHJl
dHVybiB2YWx1ZSBvZiBkbWFfbWFwX3NnX2F0dHJzKCkuCj4+PiBIb3dldmVyLCBkcm1fcHJpbWVf
c2dfdG9fcGFnZV9hZGRyX2FycmF5cygpIGluY29ycmVjdGx5IHVzZXMgc2d0LT5uZW50cyB0bwo+
Pj4gaXRlcmF0ZSBvdmVyIHBhZ2VzLCByYXRoZXIgdGhhbiBzZ3QtPm9yaWdfbmVudHMsIHJlc3Vs
dGluZyBpbiBpdCBub3cgcmV0dXJuaW5nCj4+PiB0aGUgaW5jb3JyZWN0IG51bWJlciBvZiBwYWdl
cyBvbiBBTURHUFUuCj4+Pgo+Pj4gSSBoYWQgd3JpdHRlbiBhIHBhdGNoIHRoYXQgY2hhbmdlcyBk
cm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cygpIHRvIHVzZQo+Pj4gZm9yX2VhY2hfc2d0
YWJsZV9zZygpIGluc3RlYWQgb2YgZm9yX2VhY2hfc2coKSwgaXRlcmF0aW5nIHVzaW5nIHNndC0+
b3JpZ19uZW50czoKPj4+Cj4+PiAtICAgICAgIGZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0
LT5uZW50cywgY291bnQpIHsKPj4+ICsgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNn
LCBjb3VudCkgewo+Pj4KPj4+IFRoaXMgcGF0Y2ggdGFrZXMgaXQgZnVydGhlciwgYnV0IHN0aWxs
IGhhcyB0aGUgZWZmZWN0IG9mIGZpeGluZyB0aGUgbnVtYmVyIG9mCj4+PiBwYWdlcyB0aGF0IGRy
bV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKCkgcmV0dXJucy4gU29tZXRoaW5nIGxpa2Ug
dGhpcwo+Pj4gc2hvdWxkIGJlIGluY2x1ZGVkIGluIHY1LjkgdG8gcHJldmVudCBhIHJlZ3Jlc3Np
b24gd2l0aCBBTURHUFUuCj4+IFByb2JhYmx5IHRoZSBlYXNpZXN0IHdheSB0byBoYW5kbGUgYSBm
aXggZm9yIHY1Ljkgd291bGQgYmUgdG8gc2ltcGx5Cj4+IG1lcmdlIHRoZSBsYXRlc3QgdmVyc2lv
biBvZiB0aGlzIHBhdGNoIGFsc28gdG8gdjUuOS1yY1g6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2RyaS1kZXZlbC8yMDIwMDkwNDEzMTcxMS4xMjk1MC0zLW0uc3p5cHJvd3NraUBzYW1zdW5n
LmNvbS8KPj4KPj4KPj4gVGhpcyB3YXkgd2Ugd291bGQgZ2V0IGl0IGZpeGVkIGFuZCBhdm9pZCBw
b3NzaWJsZSBjb25mbGljdCBpbiB0aGUgLW5leHQuCj4+IERvIHlvdSBoYXZlIGFueSBBTURHUFUg
Zml4ZXMgZm9yIHY1LjkgaW4gdGhlIHF1ZXVlPyBNYXliZSB5b3UgY2FuIGFkZAo+PiB0aGF0IHBh
dGNoIHRvIHRoZSBxdWV1ZT8gRGF2ZTogd291bGQgaXQgYmUgb2theSB0aGF0IHdheT8KPiBJIHRo
aW5rIHRoaXMgc2hvdWxkIGdvIGludG8gZHJtLW1pc2MgZm9yIDUuOSBzaW5jZSBpdCdzIGFuIHVw
ZGF0ZSB0bwo+IGRybV9wcmltZS5jLiAgSXMgdGhhdCBwYXRjaCByZWFkeSB0byBtZXJnZT8KPiBB
Y2tlZC1ieTogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgoKTWFhcnRl
biwgTWF4aW1lIG9yIFRob21hczogY291bGQgeW91IHRha2UgdGhpcyBvbmU6CgpodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMDA5MDQxMzE3MTEuMTI5NTAtMy1tLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20vCgphbHNvIHRvIGRybS1taXNjLWZpeGVzIGZvciB2NS45LXJjPwoKQmVz
dCByZWdhcmRzCgotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0
ZSBQb2xhbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
