Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EB4327A62
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Mar 2021 10:06:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD3E666712
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Mar 2021 09:06:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B053B6677C; Mon,  1 Mar 2021 09:06:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 460B4666F4;
	Mon,  1 Mar 2021 09:05:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5870C610E6
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Mar 2021 09:05:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4932B666F4; Mon,  1 Mar 2021 09:05:43 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 70526610E6
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Mar 2021 09:05:41 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id f12so11434116wrx.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Mar 2021 01:05:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cVbwaILawr8VFjKUKwesruDRur2V1zj4ivYNWTbHSSk=;
 b=PkFoG3mD38n6M0jevP+iHM3L2Y9SW/tKhyU3sGZX1RJGcQ5jWLK+XulRkJ+OShxM36
 B0r05zRSwVT61pASTKSanZSuL4guNMXqUtUt9QSWp0OUAki47KKT7TW1+fc4XV3EWx8n
 c8bSjfz8Vv/7TkRhksn2m/b5/hsxoYqdBvg21IWma4Jp95wndolsNaLQmtup2iw5rAxJ
 8JdZpmXNgEUY/EetCuUguUsU8wiSvIASmeqwiZp5E309ehjRbnfuxttSK3gOG9l/xH3u
 AhGoVUZik/qjtD0ibYC+AJoOAtnuoJa2A9gUSp0B9f1kUNr967+qOJ7CtZfU4IQgu4GO
 Lm8Q==
X-Gm-Message-State: AOAM532OnNnsrSuItqn13S6QDYus4Mb9IeluwZMSddokEPxbH83oOpdc
 927bp7i+tbDGzvyw4pZPUi2XWA==
X-Google-Smtp-Source: ABdhPJwbxk9JTsmEAmPPb6Sdkee8KtxRRRHjT6lI6Dvpux7/UqbYuCRW2gXVLVTMIID9pGDYw8LWZQ==
X-Received: by 2002:adf:e8c9:: with SMTP id k9mr15735421wrn.315.1614589540614; 
 Mon, 01 Mar 2021 01:05:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j16sm1090049wmi.2.2021.03.01.01.05.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 01:05:40 -0800 (PST)
Date: Mon, 1 Mar 2021 10:05:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <YDyuYk8x5QeX83s6@phenom.ffwll.local>
References: <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
 <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
 <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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

T24gTW9uLCBNYXIgMDEsIDIwMjEgYXQgMDk6Mzk6NTNBTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gKEludGVsKSB3cm90ZToKPiBIaSwKPiAKPiBPbiAzLzEvMjEgOToyOCBBTSwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+IE9uIFNhdCwgRmViIDI3LCAyMDIxIGF0IDk6MDYgQU0gVGhvbWFzIEhl
bGxzdHLDtm0gKEludGVsKQo+ID4gPHRob21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+ID4g
PiBPbiAyLzI2LzIxIDI6MjggUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gU28gSSB0
aGluayBpdCBzdG9wcyBndXAuIEJ1dCBJIGhhdmVuJ3QgdmVyaWZpZWQgYXQgYWxsLiBXb3VsZCBi
ZSBnb29kCj4gPiA+ID4gaWYgQ2hyaXN0aWFuIGNhbiBjaGVjayB0aGlzIHdpdGggc29tZSBkaXJl
Y3QgaW8gdG8gYSBidWZmZXIgaW4gc3lzdGVtCj4gPiA+ID4gbWVtb3J5Lgo+ID4gPiBIbW0sCj4g
PiA+IAo+ID4gPiBEb2NzIChhZ2FpbiB2bV9ub3JtYWxfcGFnZSgpIHNheSkKPiA+ID4gCj4gPiA+
ICAgICogVk1fTUlYRURNQVAgbWFwcGluZ3MgY2FuIGxpa2V3aXNlIGNvbnRhaW4gbWVtb3J5IHdp
dGggb3Igd2l0aG91dCAic3RydWN0Cj4gPiA+ICAgICogcGFnZSIgYmFja2luZywgaG93ZXZlciB0
aGUgZGlmZmVyZW5jZSBpcyB0aGF0IF9hbGxfIHBhZ2VzIHdpdGggYSBzdHJ1Y3QKPiA+ID4gICAg
KiBwYWdlICh0aGF0IGlzLCB0aG9zZSB3aGVyZSBwZm5fdmFsaWQgaXMgdHJ1ZSkgYXJlIHJlZmNv
dW50ZWQgYW5kCj4gPiA+IGNvbnNpZGVyZWQKPiA+ID4gICAgKiBub3JtYWwgcGFnZXMgYnkgdGhl
IFZNLiBUaGUgZGlzYWR2YW50YWdlIGlzIHRoYXQgcGFnZXMgYXJlIHJlZmNvdW50ZWQKPiA+ID4g
ICAgKiAod2hpY2ggY2FuIGJlIHNsb3dlciBhbmQgc2ltcGx5IG5vdCBhbiBvcHRpb24gZm9yIHNv
bWUgUEZOTUFQCj4gPiA+IHVzZXJzKS4gVGhlCj4gPiA+ICAgICogYWR2YW50YWdlIGlzIHRoYXQg
d2UgZG9uJ3QgaGF2ZSB0byBmb2xsb3cgdGhlIHN0cmljdCBsaW5lYXJpdHkgcnVsZSBvZgo+ID4g
PiAgICAqIFBGTk1BUCBtYXBwaW5ncyBpbiBvcmRlciB0byBzdXBwb3J0IENPV2FibGUgbWFwcGlu
Z3MuCj4gPiA+IAo+ID4gPiBidXQgaXQncyB0cnVlIF9fdm1faW5zZXJ0X21peGVkKCkgZW5kcyB1
cCBpbiB0aGUgaW5zZXJ0X3BmbigpIHBhdGgsIHNvCj4gPiA+IHRoZSBhYm92ZSBpc24ndCByZWFs
bHkgdHJ1ZSwgd2hpY2ggbWFrZXMgbWUgd29uZGVyIGlmIGFuZCBpbiB0aGF0IGNhc2UKPiA+ID4g
d2h5IHRoZXJlIGNvdWxkIGFueSBsb25nZXIgZXZlciBiZSBhIHNpZ25pZmljYW50IHBlcmZvcm1h
bmNlIGRpZmZlcmVuY2UKPiA+ID4gYmV0d2VlbiBNSVhFRE1BUCBhbmQgUEZOTUFQLgo+ID4gWWVh
aCBpdCdzIGRlZmluaXRlbHkgY29uZnVzaW5nLiBJIGd1ZXNzIEknbGwgaGFjayB1cCBhIHBhdGNo
IGFuZCBzZWUKPiA+IHdoYXQgc3RpY2tzLgo+ID4gCj4gPiA+IEJUVyByZWdhcmRpbmcgdGhlIFRU
TSBodWdlcHRlcywgSSBkb24ndCB0aGluayB3ZSBldmVyIGxhbmRlZCB0aGF0IGRldm1hcAo+ID4g
PiBoYWNrLCBzbyB0aGV5IGFyZSAoZm9yIHRoZSBub24tZ3VwIGNhc2UpIHJlbHlpbmcgb24KPiA+
ID4gdm1hX2lzX3NwZWNpYWxfaHVnZSgpLiBGb3IgdGhlIGd1cCBjYXNlLCBJIHRoaW5rIHRoZSBi
dWcgaXMgc3RpbGwgdGhlcmUuCj4gPiBNYXliZSB0aGVyZSdzIGFub3RoZXIgZGV2bWFwIGhhY2ss
IGJ1dCB0aGUgdHRtX3ZtX2luc2VydCBmdW5jdGlvbnMgZG8KPiA+IHVzZSBQRk5fREVWIGFuZCBh
bGwgdGhhdC4gQW5kIEkgdGhpbmsgdGhhdCBzdG9wcyBndXBfZmFzdCBmcm9tIHRyeWluZwo+ID4g
dG8gZmluZCB0aGUgdW5kZXJseWluZyBwYWdlLgo+ID4gLURhbmllbAo+IAo+IEhtbSBwZXJoYXBz
IGl0IG1pZ2h0LCBidXQgSSBkb24ndCB0aGluayBzby4gVGhlIGZpeCBJIHRyaWVkIG91dCB3YXMg
dG8gc2V0Cj4gCj4gUEZOX0RFViB8IFBGTl9NQVAgZm9yIGh1Z2UgUFRFcyB3aGljaCBjYXVzZXMg
cGZuX2Rldm1hcCgpIHRvIGJlIHRydWUsIGFuZAo+IHRoZW4KPiAKPiBmb2xsb3dfZGV2bWFwX3Bt
ZCgpLT5nZXRfZGV2X3BhZ2VtYXAoKSB3aGljaCByZXR1cm5zIE5VTEwgYW5kIGd1cF9mYXN0KCkK
PiBiYWNrcyBvZmYsCj4gCj4gaW4gdGhlIGVuZCB0aGF0IHdvdWxkIG1lYW4gc2V0dGluZyBpbiBz
dG9uZSB0aGF0ICJpZiB0aGVyZSBpcyBhIGh1Z2UgZGV2bWFwCj4gcGFnZSB0YWJsZSBlbnRyeSBm
b3Igd2hpY2ggd2UgaGF2ZW4ndCByZWdpc3RlcmVkIGFueSBkZXZtYXAgc3RydWN0IHBhZ2VzCj4g
KGdldF9kZXZfcGFnZW1hcCByZXR1cm5zIE5VTEwpLCB3ZSBzaG91bGQgdHJlYXQgdGhhdCBhcyBh
ICJzcGVjaWFsIiBodWdlCj4gcGFnZSB0YWJsZSBlbnRyeSIuCj4gCj4gRnJvbSB3aGF0IEkgY2Fu
IHRlbGwsIGFsbCBjb2RlIGNhbGxpbmcgZ2V0X2Rldl9wYWdlbWFwKCkgYWxyZWFkeSBkb2VzIHRo
YXQsCj4gaXQncyBqdXN0IGEgcXVlc3Rpb24gb2YgZ2V0dGluZyBpdCBhY2NlcHRlZCBhbmQgZm9y
bWFsaXppbmcgaXQuCgpPaCBJIHRob3VnaHQgdGhhdCdzIGFscmVhZHkgaG93IGl0IHdvcmtzLCBz
aW5jZSBJIGRpZG4ndCBzcG90IGFueXRoaW5nCmVsc2UgdGhhdCB3b3VsZCBibG9jayBndXBfZmFz
dCBmcm9tIGZhbGxpbmcgb3Zlci4gSSBndWVzcyByZWFsbHkgd291bGQKbmVlZCBzb21lIHRlc3Rj
YXNlcyB0byBtYWtlIHN1cmUgZGlyZWN0IGkvbyAodGhhdCdzIHRoZSBlYXNpZXN0IHRvIHRlc3Qp
CmZhaWxzIGxpa2Ugd2UgZXhwZWN0LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
