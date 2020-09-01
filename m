Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E969E259F55
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:40:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BAEF66715
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:40:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E856066716; Tue,  1 Sep 2020 19:40:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEEBC66714;
	Tue,  1 Sep 2020 19:39:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9A7D766710
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:39:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 79F0466714; Tue,  1 Sep 2020 19:39:04 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by lists.linaro.org (Postfix) with ESMTPS id 35F8966710
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:39:00 +0000 (UTC)
IronPort-SDR: X0K2Qyz3SbD5KWAZN14T1j/7GhQjHENg//TLLbTbjg8FWqqNz5YhVAcr89qAd760dGYhrDS6ji
 ZduUsS9UPzcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="158258157"
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="158258157"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 12:38:59 -0700
IronPort-SDR: 61Amtlaes050RxB0qQH7XOzsM3bz8pU+DMPJXc2mdFfd5F2AgqumdZmYXriBmSvC/d2wlrasXC
 L7mwHzZZwUmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="404882026"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2020 12:38:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Sep 2020 12:38:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Sep 2020 12:38:57 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Tue, 1 Sep 2020 12:38:57 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-gfx] [PATCH v9 08/32] drm: i915: fix common struct
 sg_table related issues
Thread-Index: AQHWe3Ml/rRJPBw9lEWMq6REwJ0ovqlUN/gw
Date: Tue, 1 Sep 2020 19:38:57 +0000
Message-ID: <259df561c4bb4ef484799e3776dbb402@intel.com>
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0@eucas1p2.samsung.com>
 <20200826063316.23486-9-m.szyprowski@samsung.com>
In-Reply-To: <20200826063316.23486-9-m.szyprowski@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH v9 08/32] drm: i915: fix
 common struct sg_table related issues
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj5Gcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj5NYXJlayBTenlwcm93
c2tpCj5TZW50OiBXZWRuZXNkYXksIEF1Z3VzdCAyNiwgMjAyMCAyOjMzIEFNCj5UbzogZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW9tbXVAbGlzdHMubGludXgtZm91bmRhdGlvbi5v
cmc7Cj5saW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcKPkNjOiBCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ft
c3VuZy5jb20+OyBEYXZpZCBBaXJsaWUKPjxhaXJsaWVkQGxpbnV4LmllPjsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgUm9iaW4gTXVycGh5Cj48cm9iaW4ubXVycGh5QGFybS5jb20+
OyBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT47IGxpbnV4LWFybS0KPmtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnOyBNYXJlayBTenlwcm93c2tpCj48bS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tPgo+U3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHY5IDA4LzMyXSBkcm06IGk5MTU6IGZp
eCBjb21tb24gc3RydWN0IHNnX3RhYmxlCj5yZWxhdGVkIGlzc3Vlcwo+Cj5UaGUgRG9jdW1lbnRh
dGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpCj5mdW5j
dGlvbgo+cmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhlIERN
QSBhZGRyZXNzIHNwYWNlLgo+SG93ZXZlciB0aGUgc3Vic2VxdWVudCBjYWxscyB0byB0aGUgZG1h
X3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1fSgpIGFuZAo+ZG1hX3VubWFwX3NnIG11c3QgYmUgY2Fs
bGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwo+cGFzc2VkIHRvIHRo
ZSBkbWFfbWFwX3NnKCkuCj4KPnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1Y3R1cmUg
dXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCj5tZW1vcnkgYnVmZmVyLCB1c2Vk
IGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0Cj5jb25zaXN0
cyBvZiBhIHNjYXR0ZXJsaXN0IHdpdGggbWVtb3J5IHBhZ2VzIGFuZCBETUEgYWRkcmVzc2VzIChz
Z2wgZW50cnkpLAo+YXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6
IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKPmFuZCBETUEgbWFwcGVkIHBhZ2VzIChuZW50
cyBlbnRyeSkuCj4KPkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKPmVudHJpZXMsIGNhbGxpbmcgRE1BLW1hcHBp
bmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmllcyBvcgo+aWdub3Jpbmcg
dGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBieSB0aGUgZG1hX21hcF9zZygp
Cj5mdW5jdGlvbi4KPgo+VGhpcyBkcml2ZXIgY3JlYXRpdmVseSB1c2VzIHNnX3RhYmxlLT5vcmln
X25lbnRzIHRvIHN0b3JlIHRoZSBzaXplIG9mIHRoZQo+YWxsb2NhdGVkIHNjYXR0ZXJsaXN0IGFu
ZCBpZ25vcmVzIHRoZSBudW1iZXIgb2YgdGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKPmRtYV9tYXBf
c2cgZnVuY3Rpb24uIFRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBpcyAobWlzKXVzZWQgdG8gcHJv
cGVybHkKPmZyZWUgdGhlIChvdmVyKWFsbG9jYXRlZCBzY2F0dGVybGlzdC4KPgo+VGhpcyBwYXRj
aCBvbmx5IGludHJvZHVjZXMgdGhlIGNvbW1vbiBETUEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRp
bmcKPmRpcmVjdGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyB0byB0aGUgZG1hYnVm
IHJlbGF0ZWQgZnVuY3Rpb25zLAo+c28gdGhlIG90aGVyIGRyaXZlcnMsIHdoaWNoIG1pZ2h0IHNo
YXJlIGJ1ZmZlcnMgd2l0aCBpOTE1IGNvdWxkIHJlbHkgb24KPnRoZSBwcm9wZXJseSBzZXQgbmVu
dHMgYW5kIG9yaWdfbmVudHMgdmFsdWVzLgo+Cj5TaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgICAgfCAxMSArKystLS0tLS0tLQo+IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYyB8ICA3ICsrKy0tLS0KPiAy
IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPmIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCj5pbmRleCAyNjc5MzgwMTU5
ZmMuLjhhOTg4NTkyNzE1YiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kbWFidWYuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2RtYWJ1Zi5jCj5AQCAtNDgsMTIgKzQ4LDkgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkx
NV9nZW1fbWFwX2RtYV9idWYoc3RydWN0Cj5kbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lCj4g
CQlzcmMgPSBzZ19uZXh0KHNyYyk7Cj4gCX0KPgo+LQlpZiAoIWRtYV9tYXBfc2dfYXR0cnMoYXR0
YWNobWVudC0+ZGV2LAo+LQkJCSAgICAgIHN0LT5zZ2wsIHN0LT5uZW50cywgZGlyLAo+LQkJCSAg
ICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7Cj4tCQlyZXQgPSAtRU5PTUVNOwoKWW91IGhh
dmUgZHJvcHBlZCB0aGlzIGVycm9yIHZhbHVlLgoKRG8geW91IG5vdyBpZiB0aGlzIGlzIGEgYmVu
aWduIGxvc3M/CgpNCgo+KwlyZXQgPSBkbWFfbWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCBz
dCwgZGlyLAo+RE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Cj4rCWlmIChyZXQpCj4gCQlnb3RvIGVy
cl9mcmVlX3NnOwo+LQl9Cj4KPiAJcmV0dXJuIHN0Owo+Cj5AQCAtNzMsOSArNzAsNyBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV91bm1hcF9kbWFfYnVmKHN0cnVjdAo+ZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2htZW50LAo+IHsKPiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGRt
YV9idWZfdG9fb2JqKGF0dGFjaG1lbnQtCj4+ZG1hYnVmKTsKPgo+LQlkbWFfdW5tYXBfc2dfYXR0
cnMoYXR0YWNobWVudC0+ZGV2LAo+LQkJCSAgIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyLAo+LQkJ
CSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwo+KwlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2ht
ZW50LT5kZXYsIHNnLCBkaXIsCj5ETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPiAJc2dfZnJlZV90
YWJsZShzZyk7Cj4gCWtmcmVlKHNnKTsKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYwo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKPmluZGV4IGRlYmFmN2IxOGFiNS4uYmUzMGIyN2Uy
OTI2IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2Nr
X2RtYWJ1Zi5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tf
ZG1hYnVmLmMKPkBAIC0yOCwxMCArMjgsOSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICptb2Nr
X21hcF9kbWFfYnVmKHN0cnVjdAo+ZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAo+IAkJ
c2cgPSBzZ19uZXh0KHNnKTsKPiAJfQo+Cj4tCWlmICghZG1hX21hcF9zZyhhdHRhY2htZW50LT5k
ZXYsIHN0LT5zZ2wsIHN0LT5uZW50cywgZGlyKSkgewo+LQkJZXJyID0gLUVOT01FTTsKPisJZXJy
ID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc3QsIGRpciwgMCk7Cj4rCWlmIChl
cnIpCj4gCQlnb3RvIGVycl9zdDsKPi0JfQo+Cj4gCXJldHVybiBzdDsKPgo+QEAgLTQ2LDcgKzQ1
LDcgQEAgc3RhdGljIHZvaWQgbW9ja191bm1hcF9kbWFfYnVmKHN0cnVjdAo+ZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2htZW50LAo+IAkJCSAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnN0LAo+IAkJ
CSAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCj4gewo+LQlkbWFfdW5tYXBfc2co
YXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVudHMsIGRpcik7Cj4rCWRtYV91bm1hcF9z
Z3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc3QsIGRpciwgMCk7Cj4gCXNnX2ZyZWVfdGFibGUoc3Qp
Owo+IAlrZnJlZShzdCk7Cj4gfQo+LS0KPjIuMTcuMQo+Cj5fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+SW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
