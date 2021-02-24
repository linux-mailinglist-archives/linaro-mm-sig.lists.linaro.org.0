Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 805E832397F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 10:33:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4DAB66014
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 09:33:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 96C1B66018; Wed, 24 Feb 2021 09:33:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7D3A66759;
	Wed, 24 Feb 2021 09:32:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D63DA66018
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 09:31:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C80C366014; Wed, 24 Feb 2021 09:31:25 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com
 [209.85.161.48])
 by lists.linaro.org (Postfix) with ESMTPS id 7137A66014
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 09:31:23 +0000 (UTC)
Received: by mail-oo1-f48.google.com with SMTP id x23so365271oop.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 01:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yO64SmF65dLY5inu45BzDUbRVbnNPzs6fQ+9WkgdAR8=;
 b=Mub1baGydFUVjgvpZQQI/UlOL6vGiCEZhtvs/yIv6mCPmYQR3cfUn7CxBKWRKynexH
 bY+DpT0rHH85t+qsAqZsR9Y+rW7zMYxv4BWrvskjV/4Lw0TVphQpxDZAYOYUQgjPkvUa
 fXyMfrU/WFPYqaHBY2JcBkxRFvtgZ2jA9oBJW/nLsBu90X6Euv2Jhu6YoXY1RuG+zqAQ
 EuBqImXT2gRGTQsiOi65IwNHtVLib9aPgE0OqLjLd116/iwgNBfn84ANiMGkO6B+/8zS
 t7eLsYp0St+JGAkNZmwYBXdWawt8ZXxafxsdEMhaGUH6vMai34gnRmPdGTR8wdYjwcHq
 ve9A==
X-Gm-Message-State: AOAM5339wWDzzHvLIqW+yK4sLomSULjMLu0P0Ev+23JSXe+v54S4PnlO
 f++NPeDWFa3OK3QybDe8FvcM6FCJYWdr6L61fdscig==
X-Google-Smtp-Source: ABdhPJxlGpWmTxsLgmVmbNO5tD2KdzisUXxYIdnLolzjBnYjQ/PpY6Z8HGSVScSYuQZ6smpaISRIESBzC9ltbmHvb3k=
X-Received: by 2002:a4a:be01:: with SMTP id l1mr18496246oop.89.1614159082849; 
 Wed, 24 Feb 2021 01:31:22 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
In-Reply-To: <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 24 Feb 2021 10:31:11 +0100
Message-ID: <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
	mmap
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

T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgMTA6MTYgQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVs
KQo8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIDIvMjQvMjEgOTo0NSBB
TSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE9uIFdlZCwgRmViIDI0LCAyMDIxIGF0IDg6NDYg
QU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo+ID4gPHRob21hc19vc0BzaGlwbWFpbC5vcmc+
IHdyb3RlOgo+ID4+Cj4gPj4gT24gMi8yMy8yMSAxMTo1OSBBTSwgRGFuaWVsIFZldHRlciB3cm90
ZToKPiA+Pj4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGlu
ZyB0aGF0IHlvdSBjYW4gdXNlCj4gPj4+IHRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0
X3VzZXJfcGFnZXMgd29ya3MsIG9yIHRoYXQgdGhleSdyZQo+ID4+PiBhY2NvdW50aW5nIGxpa2Ug
YW55IG90aGVyIG5vcm1hbCBtZW1vcnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgo+ID4+Pgo+ID4+
PiBTaW5jZSBzb21lIHVzZXJzcGFjZSBvbmx5IHJ1bnMgb24gaW50ZWdyYXRlZCBkZXZpY2VzLCB3
aGVyZSBhbGwKPiA+Pj4gYnVmZmVycyBhcmUgYWN0dWFsbHkgYWxsIHJlc2lkZW50IHN5c3RlbSBt
ZW1vcnksIHRoZXJlJ3MgYSBodWdlCj4gPj4+IHRlbXB0YXRpb24gdG8gYXNzdW1lIHRoYXQgYSBz
dHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBhbmQgdXNlYWJsZQo+ID4+PiBsaWtlIGZvciBh
bnkgbW9yZSBwYWdlY2FjaGUgYmFja2VkIG1tYXAuIFRoaXMgaGFzIHRoZSBwb3RlbnRpYWwgdG8K
PiA+Pj4gcmVzdWx0IGluIGEgdWFwaSBuaWdodG1hcmUuCj4gPj4+Cj4gPj4+IFRvIHN0b3AgdGhp
cyBnYXAgcmVxdWlyZSB0aGF0IERNQSBidWZmZXIgbW1hcHMgYXJlIFZNX1BGTk1BUCwgd2hpY2gK
PiA+Pj4gYmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90aGVyIHN0cnVjdCBwYWdl
IGJhc2VkCj4gPj4+IGluZnJhc3RydWN0dXJlIGZvciBldmVyeW9uZS4gSW4gc3Bpcml0IHRoaXMg
aXMgdGhlIHVhcGkgY291bnRlcnBhcnQgdG8KPiA+Pj4gdGhlIGtlcm5lbC1pbnRlcm5hbCBDT05G
SUdfRE1BQlVGX0RFQlVHLgo+ID4+Pgo+ID4+PiBNb3RpdmF0ZWQgYnkgYSByZWNlbnQgcGF0Y2gg
d2hpY2ggd2FudGVkIHRvIHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1Zgo+ID4+PiBoZWFwIHRvIHZt
X2luc2VydF9wYWdlIGluc3RlYWQgb2Ygdm1faW5zZXJ0X3Bmbi4KPiA+Pj4KPiA+Pj4gdjI6Cj4g
Pj4+Cj4gPj4+IEphc29uIGJyb3VnaHQgdXAgdGhhdCB3ZSBhbHNvIHdhbnQgdG8gZ3VhcmFudGVl
IHRoYXQgYWxsIHB0ZXMgaGF2ZSB0aGUKPiA+Pj4gcHRlX3NwZWNpYWwgZmxhZyBzZXQsIHRvIGNh
dGNoIGZhc3QgZ2V0X3VzZXJfcGFnZXMgKG9uIGFyY2hpdGVjdHVyZXMKPiA+Pj4gdGhhdCBzdXBw
b3J0IHRoaXMpLiBBbGxvd2luZyBWTV9NSVhFRE1BUCAobGlrZSBWTV9TUEVDSUFMIGRvZXMpIHdv
dWxkCj4gPj4+IHN0aWxsIGFsbG93IHZtX2luc2VydF9wYWdlLCBidXQgbGltaXRpbmcgdG8gVk1f
UEZOTUFQIHdpbGwgY2F0Y2ggdGhhdC4KPiA+Pj4KPiA+Pj4gICBGcm9tIGF1ZGl0aW5nIHRoZSB2
YXJpb3VzIGZ1bmN0aW9ucyB0byBpbnNlcnQgcGZuIHB0ZSBlbnRpcmVzCj4gPj4+ICh2bV9pbnNl
cnRfcGZuX3Byb3QsIHJlbWFwX3Bmbl9yYW5nZSBhbmQgYWxsIGl0J3MgY2FsbGVycyBsaWtlCj4g
Pj4+IGRtYV9tbWFwX3djKSBpdCBsb29rcyBsaWtlIFZNX1BGTk1BUCBpcyBhbHJlYWR5IHJlcXVp
cmVkIGFueXdheSwgc28KPiA+Pj4gdGhpcyBzaG91bGQgYmUgdGhlIGNvcnJlY3QgZmxhZyB0byBj
aGVjayBmb3IuCj4gPj4+Cj4gPj4gSWYgd2UgcmVxdWlyZSBWTV9QRk5NQVAsIGZvciBvcmRpbmFy
eSBwYWdlIG1hcHBpbmdzLCB3ZSBhbHNvIG5lZWQgdG8KPiA+PiBkaXNhbGxvdyBDT1cgbWFwcGlu
Z3MsIHNpbmNlIGl0IHdpbGwgbm90IHdvcmsgb24gYXJjaGl0ZWN0dXJlcyB0aGF0Cj4gPj4gZG9u
J3QgaGF2ZSBDT05GSUdfQVJDSF9IQVNfUFRFX1NQRUNJQUwsIChzZWUgdGhlIGRvY3MgZm9yIHZt
X25vcm1hbF9wYWdlKCkpLgo+ID4gSG0gSSBmaWd1cmVkIGV2ZXJ5b25lIGp1c3QgdXNlcyBNQVBf
U0hBUkVEIGZvciBidWZmZXIgb2JqZWN0cyBzaW5jZQo+ID4gQ09XIHJlYWxseSBtYWtlcyBhYnNv
bHV0ZWx5IG5vIHNlbnNlLiBIb3cgd291bGQgd2UgZW5mb3JjZSB0aGlzPwo+Cj4gUGVyaGFwcyBy
ZXR1cm5pbmcgLUVJTlZBTCBvbiBpc19jb3dfbWFwcGluZygpIGF0IG1tYXAgdGltZS4gRWl0aGVy
IHRoYXQKPiBvciBhbGxvd2luZyBNSVhFRE1BUC4KPgo+ID4+IEFsc28gd29ydGggbm90aW5nIGlz
IHRoZSBjb21tZW50IGluICB0dG1fYm9fbW1hcF92bWFfc2V0dXAoKSB3aXRoCj4gPj4gcG9zc2li
bGUgcGVyZm9ybWFuY2UgaW1wbGljYXRpb25zIHdpdGggeDg2ICsgUEFUICsgVk1fUEZOTUFQICsg
bm9ybWFsCj4gPj4gcGFnZXMuIFRoYXQncyBhIHZlcnkgb2xkIGNvbW1lbnQsIHRob3VnaCwgYW5k
IG1pZ2h0IG5vdCBiZSB2YWxpZCBhbnltb3JlLgo+ID4gSSB0aGluayB0aGF0J3Mgd2h5IHR0bSBo
YXMgYSBwYWdlIGNhY2hlIGZvciB0aGVzZSwgYmVjYXVzZSBpdCBpbmRlZWQKPiA+IHN1Y2tzLiBU
aGUgUEFUIGNoYW5nZXMgb24gcGFnZXMgYXJlIHJhdGhlciBleHBlbnNpdmUuCj4KPiBJSVJDIHRo
ZSBwYWdlIGNhY2hlIHdhcyBpbXBsZW1lbnRlZCBiZWNhdXNlIG9mIHRoZSBzbG93bmVzcyBvZiB0
aGUKPiBjYWNoaW5nIG1vZGUgdHJhbnNpdGlvbiBpdHNlbGYsIG1vcmUgc3BlY2lmaWNhbGx5IHRo
ZSB3YmludmQoKSBjYWxsICsKPiBnbG9iYWwgVExCIGZsdXNoLgo+Cj4gPgo+ID4gVGhlcmUgaXMg
c3RpbGwgYW4gaXNzdWUgZm9yIGlvbWVtIG1hcHBpbmdzLCBiZWNhdXNlIHRoZSBQQVQgdmFsaWRh
dGlvbgo+ID4gZG9lcyBhIGxpbmVhciB3YWxrIG9mIHRoZSByZXNvdXJjZSB0cmVlIChsb2wpIGZv
ciBldmVyeSB2bV9pbnNlcnRfcGZuLgo+ID4gQnV0IGZvciBpOTE1IGF0IGxlYXN0IHRoaXMgaXMg
Zml4ZWQgYnkgdXNpbmcgdGhlIGlvX21hcHBpbmcKPiA+IGluZnJhc3RydWN0dXJlLCB3aGljaCBk
b2VzIHRoZSBQQVQgcmVzZXJ2YXRpb24gb25seSBvbmNlIHdoZW4geW91IHNldAo+ID4gdXAgdGhl
IG1hcHBpbmcgYXJlYSBhdCBkcml2ZXIgbG9hZC4KPgo+IFllcywgSSBndWVzcyB0aGF0IHdhcyB0
aGUgaXNzdWUgdGhhdCB0aGUgY29tbWVudCBkZXNjcmliZXMsIGJ1dCB0aGUKPiBpc3N1ZSB3YXNu
J3QgdGhlcmUgd2l0aCB2bV9pbnNlcnRfbWl4ZWQoKSArIFZNX01JWEVETUFQLgo+Cj4gPgo+ID4g
QWxzbyBUVE0gdXNlcyBWTV9QRk5NQVAgcmlnaHQgbm93IGZvciBldmVyeXRoaW5nLCBzbyBpdCBj
YW4ndCBiZSBhCj4gPiBwcm9ibGVtIHRoYXQgaHVydHMgbXVjaCA6LSkKPgo+IEhtbSwgYm90aCA1
LjExIGFuZCBkcm0tdGlwIGFwcGVhcnMgdG8gc3RpbGwgdXNlIE1JWEVETUFQPwo+Cj4gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9ib192bS5jI0w1NTQKClVoIHRoYXQncyBiYWQsIGJlY2F1c2UgbWl4ZWQgbWFwcyBw
b2ludGluZyBhdCBzdHJ1Y3QgcGFnZSB3b250IHN0b3AKZ3VwLiBBdCBsZWFzdCBhZmFpay4KCkNo
cmlzdGlhbiwgZG8gd2UgbmVlZCB0byBwYXRjaCB0aGlzIHVwLCBhbmQgbWF5YmUgZml4IHVwIHR0
bSBmYXVsdApoYW5kbGVyIHRvIHVzZSBpb19tYXBwaW5nIHNvIHRoZSB2bV9pbnNlcnRfcGZuIHN0
dWZmIGlzIGZhc3Q/Ci1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
