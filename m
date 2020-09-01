Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B76259FF1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:25:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 282B76671F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:25:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1052A66721; Tue,  1 Sep 2020 20:25:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 909A16671D;
	Tue,  1 Sep 2020 20:24:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E0B7E66717
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:24:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C7E9C6671D; Tue,  1 Sep 2020 20:24:50 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 8928866717
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:24:49 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BAF91063;
 Tue,  1 Sep 2020 13:24:49 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C94E3F66F;
 Tue,  1 Sep 2020 13:24:47 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063629eucas1p1a3c9c93e281b4c432a6d9940e734e3c4@eucas1p1.samsung.com>
 <20200826063316.23486-32-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <925232f3-7371-c7eb-ad31-4b041cbbca4f@arm.com>
Date: Tue, 1 Sep 2020 21:24:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-32-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 31/32] media: pci: fix common ALSA
 DMA-mapping related codes
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOC0yNiAwNzozMywgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBUaGUgRG9jdW1l
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCBkbWFfbWFwX3NnIHJldHVybnMg
dGhlCj4gbnVtZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmllcyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3Bh
Y2UuIEhvd2V2ZXIgdGhlCj4gc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19mb3Jfe2Rl
dmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQo+IGNhbGxlZCB3aXRoIHRoZSBvcmln
aW5hbCBudW1iZXIgb2YgZW50cmllcyBwYXNzZWQgdG8gZG1hX21hcF9zZy4gVGhlCj4gc2dfdGFi
bGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9zZyBjYWxs
IGFzIHN0YXRlZAo+IGluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3Bj
aS9jeDIzODg1L2N4MjM4ODUtYWxzYS5jIHwgMiArLQo+ICAgZHJpdmVycy9tZWRpYS9wY2kvY3gy
NTgyMS9jeDI1ODIxLWFsc2EuYyB8IDIgKy0KPiAgIGRyaXZlcnMvbWVkaWEvcGNpL2N4ODgvY3g4
OC1hbHNhLmMgICAgICAgfCAyICstCj4gICBkcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcx
MzQtYWxzYS5jIHwgMiArLQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjM4ODUv
Y3gyMzg4NS1hbHNhLmMgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDIzODg1L2N4MjM4ODUtYWxzYS5j
Cj4gaW5kZXggZGY0NGVkNzM5M2EwLi4zZjM2NmU0ZTQ2ODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wY2kvY3gyMzg4NS9jeDIzODg1LWFsc2EuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGNpL2N4MjM4ODUvY3gyMzg4NS1hbHNhLmMKPiBAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBp
bnQgY3gyMzg4NV9hbHNhX2RtYV91bm1hcChzdHJ1Y3QgY3gyMzg4NV9hdWRpb19kZXYgKmRldikK
PiAgIAlpZiAoIWJ1Zi0+c2dsZW4pCj4gICAJCXJldHVybiAwOwo+ICAgCj4gLQlkbWFfdW5tYXBf
c2coJmRldi0+cGNpLT5kZXYsIGJ1Zi0+c2dsaXN0LCBidWYtPnNnbGVuLCBQQ0lfRE1BX0ZST01E
RVZJQ0UpOwo+ICsJZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNnbGlzdCwgYnVm
LT5ucl9wYWdlcywgUENJX0RNQV9GUk9NREVWSUNFKTsKCklmIHdlJ3JlIHRvdWNoaW5nIHRoZXNl
IGxpbmVzIGFueXdheSwgd2Ugc2hvdWxkIHVwZGF0ZSB0aGVtIHRvIHVzZSB0aGUgCm1vZGVybiBE
TUFfRlJPTV9ERVZJQ0UgZGVmaW5pdGlvbnMgdG9vLgoKUm9iaW4uCgo+ICAgCWJ1Zi0+c2dsZW4g
PSAwOwo+ICAgCXJldHVybiAwOwo+ICAgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bj
aS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9wY2kvY3gyNTgyMS9jeDI1
ODIxLWFsc2EuYwo+IGluZGV4IDMwMTYxNjQyNmQ4YS4uYzQwMzA0ZDMzNzc2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGNpL2N4MjU4MjEvY3gyNTgyMS1hbHNhLmMKPiArKysgYi9kcml2
ZXJzL21lZGlhL3BjaS9jeDI1ODIxL2N4MjU4MjEtYWxzYS5jCj4gQEAgLTE5Myw3ICsxOTMsNyBA
QCBzdGF0aWMgaW50IGN4MjU4MjFfYWxzYV9kbWFfdW5tYXAoc3RydWN0IGN4MjU4MjFfYXVkaW9f
ZGV2ICpkZXYpCj4gICAJaWYgKCFidWYtPnNnbGVuKQo+ICAgCQlyZXR1cm4gMDsKPiAgIAo+IC0J
ZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBidWYtPnNnbGlzdCwgYnVmLT5zZ2xlbiwgUENJ
X0RNQV9GUk9NREVWSUNFKTsKPiArCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRldiwgYnVmLT5z
Z2xpc3QsIGJ1Zi0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURFVklDRSk7Cj4gICAJYnVmLT5zZ2xl
biA9IDA7Cj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGNpL2N4ODgvY3g4OC1hbHNhLmMgYi9kcml2ZXJzL21lZGlhL3BjaS9jeDg4L2N4ODgtYWxzYS5j
Cj4gaW5kZXggN2Q3YWNlZWNjOTg1Li4zYzZmZTZjZWIwYjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wY2kvY3g4OC9jeDg4LWFsc2EuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4
ODgvY3g4OC1hbHNhLmMKPiBAQCAtMzMyLDcgKzMzMiw3IEBAIHN0YXRpYyBpbnQgY3g4OF9hbHNh
X2RtYV91bm1hcChzdHJ1Y3QgY3g4OF9hdWRpb19kZXYgKmRldikKPiAgIAlpZiAoIWJ1Zi0+c2ds
ZW4pCj4gICAJCXJldHVybiAwOwo+ICAgCj4gLQlkbWFfdW5tYXBfc2coJmRldi0+cGNpLT5kZXYs
IGJ1Zi0+c2dsaXN0LCBidWYtPnNnbGVuLAo+ICsJZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2
LCBidWYtPnNnbGlzdCwgYnVmLT5ucl9wYWdlcywKPiAgIAkJICAgICBQQ0lfRE1BX0ZST01ERVZJ
Q0UpOwo+ICAgCWJ1Zi0+c2dsZW4gPSAwOwo+ICAgCXJldHVybiAwOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jIGIvZHJpdmVycy9tZWRpYS9w
Y2kvc2FhNzEzNC9zYWE3MTM0LWFsc2EuYwo+IGluZGV4IDU0NGNhNTdlZWU3NS4uMzk4YzQ3ZmY0
NzNkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGNpL3NhYTcxMzQvc2FhNzEzNC1hbHNh
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BjaS9zYWE3MTM0L3NhYTcxMzQtYWxzYS5jCj4gQEAg
LTMxMyw3ICszMTMsNyBAQCBzdGF0aWMgaW50IHNhYTcxMzRfYWxzYV9kbWFfdW5tYXAoc3RydWN0
IHNhYTcxMzRfZGV2ICpkZXYpCj4gICAJaWYgKCFkbWEtPnNnbGVuKQo+ICAgCQlyZXR1cm4gMDsK
PiAgIAo+IC0JZG1hX3VubWFwX3NnKCZkZXYtPnBjaS0+ZGV2LCBkbWEtPnNnbGlzdCwgZG1hLT5z
Z2xlbiwgUENJX0RNQV9GUk9NREVWSUNFKTsKPiArCWRtYV91bm1hcF9zZygmZGV2LT5wY2ktPmRl
diwgZG1hLT5zZ2xpc3QsIGRtYS0+bnJfcGFnZXMsIFBDSV9ETUFfRlJPTURFVklDRSk7Cj4gICAJ
ZG1hLT5zZ2xlbiA9IDA7Cj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
