Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AE5216D73
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2020 15:07:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C163666D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2020 13:07:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1F435666DA; Tue,  7 Jul 2020 13:07:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D2805666D7;
	Tue,  7 Jul 2020 13:07:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 59128666D5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2020 13:07:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3D98A666D7; Tue,  7 Jul 2020 13:07:04 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id DD41B666D5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2020 13:07:02 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200707130701euoutp01ffe438655d1bc211c920e91aaf408eb5~fekMYpnJa2981329813euoutp01F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2020 13:07:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200707130701euoutp01ffe438655d1bc211c920e91aaf408eb5~fekMYpnJa2981329813euoutp01F
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200707130700eucas1p17f35c74c6cf62fd3a0373037b209f6e3~fekLfBnmJ2868428684eucas1p1D;
 Tue,  7 Jul 2020 13:07:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B4.42.06456.473740F5; Tue,  7
 Jul 2020 14:07:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200707130700eucas1p1b618f2a9e6f8f5be3c97c762220300a0~fekLBimdw1405714057eucas1p1A;
 Tue,  7 Jul 2020 13:07:00 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200707130700eusmtrp1b04bf2435e172dc545c8cedac0e8af43~fekLAyDGx0101401014eusmtrp18;
 Tue,  7 Jul 2020 13:07:00 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-7e-5f0473748f5b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D4.D7.06314.473740F5; Tue,  7
 Jul 2020 14:07:00 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200707130659eusmtip1477441c2867581295ee26f9e4279cfdb~fekKW-Wv62686526865eusmtip1N;
 Tue,  7 Jul 2020 13:06:59 +0000 (GMT)
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <ef43cce1-40dc-77fd-1107-33c64d947ed1@samsung.com>
Date: Tue, 7 Jul 2020 15:06:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <bfbdf1ee-c970-d862-cc81-4712c34b7685@amd.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa1BMYRjH5z23TnHytkXPxLgsg0QJM47J5DI+nC8GX/rQDFmc2aK2Zs8W
 +UAKq6wmlWiZalS6iLJtF+XWzlLZKabShFSohrJTcs2M0u4Rffv/n+f3PM/7n3lZUjFI+7AR
 Gp2o1agilYwbVf1k/NkanUSFra2o9+MvtDYTfFZ3Pc0Xlp9y4e9cKad5e++Unay+SPId30YY
 vuTmY4LPexjEf+14S/Cm95003153jeEbRvvprZxwpu03I5TllCHh/vc8Sqj53kcLvecbCaGy
 4KTweuI9KWR0FSGh/mUCI6SaS5HwxbRw96xQt82HxMiIOFEbELzfLdzebiJiCuYcM1rWJSDz
 7BTkygLeAD+6Cl1SkBurwMUILnV8ImXzFUGNrY6WzRcEd5OHXaZHJpprkdwoQnBVP0TIZgTB
 B8sLJ+WJQ+B0tplxNLywFUFRvtVJkbiagDc/PzgpBgdCij2FcWgOB4PhTRrh0BReBjlWPe3Q
 c/E+KP9YQ8iMBzRn91MO7YqDIFc/4GRIvAiSqq6SsvaGV/25zmOAk1kY7xmdGmCnzA4YzvGR
 M3jCUKP5b54FYMswUDKfhOBt6y0X2RgQtCdeQTIVBN2tvxjHIhL7QnldgFzeBs8GExl5vzt0
 2T3kN7hDevVlUi5zcO6sQqaXg7Hx9r+zDc/byDSkNM5IZpyRxjgjjfH/3TxElSJvMVaKUotS
 oEY86i+poqRYjdr/YHSUCU39PttE41gt+tZ2wIIwi5SzuXAVFaagVXFSfJQFAUsqvbjtLbZ9
 Cu6QKv64qI0O08ZGipIFzWcppTe3/vrHvQqsVunEI6IYI2qnuwTr6pOAsgYfWDMjB6ig+nmh
 99y7dKlbAh4l5S62Tub/7rxsWB2zsMyTe2z/HJ3+lA8cMNo0vVX3vZLHmzYWLt30DnPqsYT+
 yiUDfgY2N35kBdvHnKl6kb7Sf2u2L7fnxi68MxO6y0x63xMtTbqWkMNxRzqH1EW3JvQ9ZiVT
 UTJc3GCoU1JSuCpwFamVVH8AnoTEznkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrJIsWRmVeSWpSXmKPExsVy+t/xu7olxSzxBv+X8Vj0njvJZDHtzm5W
 i6XrG9ktNs5Yz2rx9j6Q+3/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFgc/
 PGF14PVovfSXzWPNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRt
 WcXo8XmTXAB3lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllq
 kb5dgl7G28ubmAqW8FfMOmTUwLiFp4uRk0NCwETi38kdjF2MXBxCAksZJbbc+c4OkZCRODmt
 gRXCFpb4c62LDaLoLaPEifd9YAlhgTCJ/xNnMoMkRASOMEocPLWECcRhFtjGJPF66S6oud8Y
 Jd50z2YCaWETMJToegsyi5ODV8BOoufuBLA4i4CKxLwj7WBjRQXiJJZvmc8OUSMocXLmExYQ
 m1PAWmJ++1OwGmYBM4l5mx8yQ9jyEs1bZ0PZ4hK3nsxnmsAoNAtJ+ywkLbOQtMxC0rKAkWUV
 o0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYLRvO/Zz8w7GSxuDDzEKcDAq8fBmJLLEC7EmlhVX
 5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQcxOZpUST84GJKK8k3tDU0NzC0tDc
 2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6P1len5y36bVQR9Sa8/Nmta8L8XG9zY
 Cv9WKU2axvL5/9qss0vCztyIEox9f0uq77yy50zxKM8zc4N9p1ks9jWYyfyw7sHaNz2K69lc
 rCOjFc7efin6p1kgyvdY3m9rjVUTsjt/fN3V+nw97+SUtVnbdsxYubF9rkP1Wa2/R/69LbhV
 W5OzeUeJEktxRqKhFnNRcSIAjDRWAQwDAAA=
X-CMS-MailID: 20200707130700eucas1p1b618f2a9e6f8f5be3c97c762220300a0
X-Msg-Generator: CA
X-RootMTR: 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103655eucas1p28ea4bf59428550217c8962666d6f077b@eucas1p2.samsung.com>
 <20200619103636.11974-5-m.szyprowski@samsung.com>
 <bfbdf1ee-c970-d862-cc81-4712c34b7685@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v7 04/36] drm: amdgpu: fix common struct
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

SGkgQ2hyaXN0aWFuLAoKT24gMjIuMDYuMjAyMCAxNToyNywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiBBbSAxOS4wNi4yMCB1bSAxMjozNiBzY2hyaWViIE1hcmVrIFN6eXByb3dza2k6Cj4+IFRo
ZSBEb2N1bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IHRoZSBkbWFfbWFw
X3NnKCkgCj4+IGZ1bmN0aW9uCj4+IHJldHVybnMgdGhlIG51bWJlciBvZiB0aGUgY3JlYXRlZCBl
bnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBzcGFjZS4KPj4gSG93ZXZlciB0aGUgc3Vic2VxdWVu
dCBjYWxscyB0byB0aGUgZG1hX3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1fSgpIGFuZAo+PiBkbWFf
dW5tYXBfc2cgbXVzdCBiZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBl
bnRyaWVzCj4+IHBhc3NlZCB0byB0aGUgZG1hX21hcF9zZygpLgo+Pgo+PiBzdHJ1Y3Qgc2dfdGFi
bGUgaXMgYSBjb21tb24gc3RydWN0dXJlIHVzZWQgZm9yIGRlc2NyaWJpbmcgYSAKPj4gbm9uLWNv
bnRpZ3VvdXMKPj4gbWVtb3J5IGJ1ZmZlciwgdXNlZCBjb21tb25seSBpbiB0aGUgRFJNIGFuZCBn
cmFwaGljcyBzdWJzeXN0ZW1zLiBJdAo+PiBjb25zaXN0cyBvZiBhIHNjYXR0ZXJsaXN0IHdpdGgg
bWVtb3J5IHBhZ2VzIGFuZCBETUEgYWRkcmVzc2VzIChzZ2wgCj4+IGVudHJ5KSwKPj4gYXMgd2Vs
bCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcyAob3JpZ19u
ZW50cyAKPj4gZW50cnkpCj4+IGFuZCBETUEgbWFwcGVkIHBhZ2VzIChuZW50cyBlbnRyeSkuCj4+
Cj4+IEl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2Ug
bmVudHMgYW5kIAo+PiBvcmlnX25lbnRzCj4+IGVudHJpZXMsIGNhbGxpbmcgRE1BLW1hcHBpbmcg
ZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmllcyBvcgo+PiBpZ25vcmluZyB0
aGUgbnVtYmVyIG9mIG1hcHBlZCBlbnRyaWVzIHJldHVybmVkIGJ5IHRoZSBkbWFfbWFwX3NnKCkK
Pj4gZnVuY3Rpb24uCj4+Cj4+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1v
biBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPj4gZGlyZWN0bHkgb24gdGhlIHN0cnVj
dCBzZ190YWJsZSBvYmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQo+PiBpdGVyYXRvcnMg
d2hlcmUgcG9zc2libGUuIFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8g
dGhlCj4+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1
c3QsIGVhc2llciB0byBmb2xsb3cKPj4gYW5kIGNvcHkvcGFzdGUgc2FmZS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+PiBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
Cj4gQW55IG9iamVjdGlvbiB0aGF0IHdlIHBpY2sgdGhpcyBvbmUgYW5kIHRoZSByYWRlb24gdXAg
aW50byBvdXIgCj4gYnJhbmNoZXMgZm9yIHVwc3RyZWFtaW5nPwo+Cj4gVGhhdCBzaG91bGQgYWJv
dXQgY2xhc2hlcyB3aXRoIG90aGVyIGRyaXZlciBjaGFuZ2VzLgoKSSdtIGZpbmUuIFRoaXMgb25l
IGFuZCByYWRlb24gZG9lc24ndCBkZXBlbmQgb24gdGhlIHByaW1lIGNoYW5nZXMsIHNvIGl0IApz
aG91bGQgbWVyZ2UgZmluZSB2aWEgeW91ciB0cmVlLiBJIHdpbGwgdHJ5IHRvIGFzayBmb3IgbW9y
ZSByZXZpZXcgb2YgCnRoZSByZW1haW5pbmcgcGF0Y2hlcyBhbmQgdGhlbiB0cnkgbWVyZ2luZyB2
aWEgZHJtLW1pc2MuCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1z
dW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
