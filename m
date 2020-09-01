Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F79259F96
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:01:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 745A366715
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:01:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6610D66718; Tue,  1 Sep 2020 20:01:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE88766716;
	Tue,  1 Sep 2020 20:01:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 49D61605D8
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:01:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BBE166716; Tue,  1 Sep 2020 20:01:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 15992605D8
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:01:03 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C75DA1FB;
 Tue,  1 Sep 2020 13:01:02 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CE313F66F;
 Tue,  1 Sep 2020 13:01:00 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362@eucas1p2.samsung.com>
 <20200826063316.23486-18-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d69bd263-c628-170d-3992-d717423196a2@arm.com>
Date: Tue, 1 Sep 2020 21:00:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-18-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 17/32] drm: rockchip: fix common
 struct sg_table related issues
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
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpIGZ1
bmN0aW9uCj4gcmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhl
IERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMgdG8gdGhl
IGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPiBkbWFfdW5tYXBfc2cgbXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzCj4gcGFzc2Vk
IHRvIHRoZSBkbWFfbWFwX3NnKCkuCj4gCj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0
cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVm
ZmVyLCB1c2VkIGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0
Cj4gY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFk
ZHJlc3NlcyAoc2dsIGVudHJ5KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxp
c3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVk
IHBhZ2VzIChuZW50cyBlbnRyeSkuCj4gCj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNv
bW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+IGVudHJpZXMsIGNh
bGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmll
cyBvcgo+IGlnbm9yaW5nIHRoZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkg
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBs
ZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0dGVybGlzdCBwYWdl
Cj4gaXRlcmF0b3JzIHdoZXJlIHBvc3NpYmxlLiBUaGlzLCBhbG1vc3QgYWx3YXlzLCBoaWRlcyBy
ZWZlcmVuY2VzIHRvIHRoZQo+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgoK
UmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+CgooVW50aWwg
bm93IEkgaGFkbid0IG5vdGljZWQgdGhlIGNyaW1lcyBhZ2FpbnN0IHRoZSBBUEkgdGhhdCAKcm9j
a2NoaXBfZ2VtX2dldF9wYWdlcygpIGlzIGNvbW1pdHRpbmcsIGJ1dCBpdCdzIG5vdCB0aGlzIHBh
dGNoJ3MgCmZhdWx0Li4uIEknbGwgaGF2ZSB0byB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgdGhhdCkK
Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0u
YyB8IDIzICsrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9nZW0uYwo+IGluZGV4IDI5NzBlNTM0ZTJiYi4uY2I1MGYyYmEyZTQ2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCj4gQEAg
LTM2LDggKzM2LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1faW9tbXVfbWFwKHN0cnVjdCBy
b2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCj4gICAKPiAgIAlya19vYmotPmRtYV9hZGRyID0g
cmtfb2JqLT5tbS5zdGFydDsKPiAgIAo+IC0JcmV0ID0gaW9tbXVfbWFwX3NnKHByaXZhdGUtPmRv
bWFpbiwgcmtfb2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QtPnNnbCwKPiAtCQkJICAgcmtfb2Jq
LT5zZ3QtPm5lbnRzLCBwcm90KTsKPiArCXJldCA9IGlvbW11X21hcF9zZ3RhYmxlKHByaXZhdGUt
PmRvbWFpbiwgcmtfb2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QsCj4gKwkJCQlwcm90KTsKPiAg
IAlpZiAocmV0IDwgcmtfb2JqLT5iYXNlLnNpemUpIHsKPiAgIAkJRFJNX0VSUk9SKCJmYWlsZWQg
dG8gbWFwIGJ1ZmZlcjogc2l6ZT0lemQgcmVxdWVzdF9zaXplPSV6ZFxuIiwKPiAgIAkJCSAgcmV0
LCBya19vYmotPmJhc2Uuc2l6ZSk7Cj4gQEAgLTk4LDExICs5OCwxMCBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX2dlbV9nZXRfcGFnZXMoc3RydWN0IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikK
PiAgIAkgKiBUT0RPOiBSZXBsYWNlIHRoaXMgYnkgZHJtX2NsZmx1c2hfc2coKSBvbmNlIGl0IGNh
biBiZSBpbXBsZW1lbnRlZAo+ICAgCSAqIHdpdGhvdXQgcmVseWluZyBvbiBzeW1ib2xzIHRoYXQg
YXJlIG5vdCBleHBvcnRlZC4KPiAgIAkgKi8KPiAtCWZvcl9lYWNoX3NnKHJrX29iai0+c2d0LT5z
Z2wsIHMsIHJrX29iai0+c2d0LT5uZW50cywgaSkKPiArCWZvcl9lYWNoX3NndGFibGVfc2cocmtf
b2JqLT5zZ3QsIHMsIGkpCj4gICAJCXNnX2RtYV9hZGRyZXNzKHMpID0gc2dfcGh5cyhzKTsKPiAg
IAo+IC0JZG1hX3N5bmNfc2dfZm9yX2RldmljZShkcm0tPmRldiwgcmtfb2JqLT5zZ3QtPnNnbCwg
cmtfb2JqLT5zZ3QtPm5lbnRzLAo+IC0JCQkgICAgICAgRE1BX1RPX0RFVklDRSk7Cj4gKwlkbWFf
c3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+c2d0LCBETUFfVE9fREVW
SUNFKTsKPiAgIAo+ICAgCXJldHVybiAwOwo+ICAgCj4gQEAgLTM1MCw4ICszNDksOCBAQCB2b2lk
IHJvY2tjaGlwX2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKPiAg
IAkJaWYgKHByaXZhdGUtPmRvbWFpbikgewo+ICAgCQkJcm9ja2NoaXBfZ2VtX2lvbW11X3VubWFw
KHJrX29iaik7Cj4gICAJCX0gZWxzZSB7Cj4gLQkJCWRtYV91bm1hcF9zZyhkcm0tPmRldiwgcmtf
b2JqLT5zZ3QtPnNnbCwKPiAtCQkJCSAgICAgcmtfb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJF
Q1RJT05BTCk7Cj4gKwkJCWRtYV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBya19vYmotPnNndCwK
PiArCQkJCQkgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKPiAgIAkJfQo+ICAgCQlkcm1fcHJpbWVf
Z2VtX2Rlc3Ryb3kob2JqLCBya19vYmotPnNndCk7Cj4gICAJfSBlbHNlIHsKPiBAQCAtNDc2LDE1
ICs0NzUsMTMgQEAgcm9ja2NoaXBfZ2VtX2RtYV9tYXBfc2coc3RydWN0IGRybV9kZXZpY2UgKmRy
bSwKPiAgIAkJCXN0cnVjdCBzZ190YWJsZSAqc2csCj4gICAJCQlzdHJ1Y3Qgcm9ja2NoaXBfZ2Vt
X29iamVjdCAqcmtfb2JqKQo+ICAgewo+IC0JaW50IGNvdW50ID0gZG1hX21hcF9zZyhkcm0tPmRl
diwgc2ctPnNnbCwgc2ctPm5lbnRzLAo+IC0JCQkgICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwo+
IC0JaWYgKCFjb3VudCkKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiArCWludCBlcnIgPSBkbWFfbWFw
X3NndGFibGUoZHJtLT5kZXYsIHNnLCBETUFfQklESVJFQ1RJT05BTCwgMCk7Cj4gKwlpZiAoZXJy
KQo+ICsJCXJldHVybiBlcnI7Cj4gICAKPiAgIAlpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3Vz
X3NpemUoc2cpIDwgYXR0YWNoLT5kbWFidWYtPnNpemUpIHsKPiAgIAkJRFJNX0VSUk9SKCJmYWls
ZWQgdG8gbWFwIHNnX3RhYmxlIHRvIGNvbnRpZ3VvdXMgbGluZWFyIGFkZHJlc3MuXG4iKTsKPiAt
CQlkbWFfdW5tYXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKPiAtCQkJICAgICBE
TUFfQklESVJFQ1RJT05BTCk7Cj4gKwkJZG1hX3VubWFwX3NndGFibGUoZHJtLT5kZXYsIHNnLCBE
TUFfQklESVJFQ1RJT05BTCwgMCk7Cj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCX0KPiAgIAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
