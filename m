Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 410A827BD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 13:33:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4097F609D6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 11:33:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 33E1F6104E; Thu, 23 May 2019 11:33:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 383EF60F5B;
	Thu, 23 May 2019 11:33:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D502F609D6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:33:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C7E7460908; Thu, 23 May 2019 11:33:06 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 75B2F60908
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:33:05 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 66so5106604otq.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 04:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RzyQ8G6AdBkyKfsiGPKnoMpo2vHcQ3F0lK5nskdGOrI=;
 b=c1+kVOSyr2NnUSGjc3oxF7l+YQuQpbYdpg9BBBakfEtRUiarUs7s0bmhfE7UtoR9nk
 Tso0yZ17tpPcORMKWqRq9zU1Nx1HxLsKDY4B2k7vv+PlFRhi38R0XEhnT783FDmWMmWA
 8fOisnJyyD9+8oC5u76XopHQz2sWvZAdDeyhBHye4jMZloxrXp7g3+7ZsTH8f4qjncL/
 /j/VYDnkWaWDOg2mm5+BEUTtQhBRUEARfptEo2nCipmoEjwQQLnmaAcSfbqItFx53FoU
 fYJHraFZ3v4jKlcYh1h+PhCeMSVh2d8stDQ0OAr3MCG4+CxNmHOTqhC21eVOKqcJmjoq
 6/sQ==
X-Gm-Message-State: APjAAAUvBMZmllS4vB6vXZhPruinhRN83MjpwC3BxJd9KqmHeLdByBRN
 fRwMhz0svaGLcA5t2vYI0F9KuqSFtxt3u6R6KvfjIg==
X-Google-Smtp-Source: APXvYqwLlaxX3R34G4U4F21wOufeX5k4td5xFijLsxhYJGRNTajPV/nglCPFuGGuWF/xfZHTMm1fgwb3TOe6ohnPRYU=
X-Received: by 2002:a05:6830:1597:: with SMTP id
 i23mr145576otr.281.1558611184952; 
 Thu, 23 May 2019 04:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190416183841.1577-1-christian.koenig@amd.com>
 <1556323269-19670-1-git-send-email-lmark@codeaurora.org>
 <CAO_48GGanguXbmYDD+p1kK_VkiWdZSTYAD1y-0JQK7hqL_OPPg@mail.gmail.com>
 <d7fb2a6b-f516-b506-247d-0f3d4d59ec8e@gmail.com>
 <CAKMK7uEaeVW0EMtCUeH+WeUmFnovEySz3kebRUcybLeySb4GSA@mail.gmail.com>
 <cbb1f3a1-6cd1-c231-f1b2-8f20a6bad067@amd.com>
 <CAKMK7uFghnEHjyOaJyui+8g9gJahhnhNWPruPMqPr6VAN1UvsA@mail.gmail.com>
In-Reply-To: <CAKMK7uFghnEHjyOaJyui+8g9gJahhnhNWPruPMqPr6VAN1UvsA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 23 May 2019 13:32:53 +0200
Message-ID: <CAKMK7uGj3HEZO4j-2eNSEqJ+C5sNqvNbaeGnFZHDXXMTNN-teg@mail.gmail.com>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Liam Mark <lmark@codeaurora.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 01/12] dma-buf: add dynamic caching of
	sg_table
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTozMCBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMToyMSBQTSBLb2VuaWcs
IENocmlzdGlhbgo+IDxDaHJpc3RpYW4uS29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4KPiA+IEFt
IDIyLjA1LjE5IHVtIDIwOjMwIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+ID4gW1NOSVBdCj4g
PiA+PiBXZWxsLCBpdCBzZWVtcyB5b3UgYXJlIG1ha2luZyBpbmNvcnJlY3QgYXNzdW1wdGlvbnMg
YWJvdXQgdGhlIGNhY2hlCj4gPiA+PiBtYWludGVuYW5jZSBvZiBETUEtYnVmIGhlcmUuCj4gPiA+
Pgo+ID4gPj4gQXQgbGVhc3QgZm9yIGFsbCBEUk0gZGV2aWNlcyBJJ20gYXdhcmUgb2YgbWFwcGlu
Zy91bm1hcHBpbmcgYW4KPiA+ID4+IGF0dGFjaG1lbnQgZG9lcyAqTk9UKiBoYXZlIGFueSBjYWNo
ZSBtYWludGVuYW5jZSBpbXBsaWNhdGlvbnMuCj4gPiA+Pgo+ID4gPj4gRS5nLiB0aGUgdXNlIGNh
c2UgeW91IGRlc2NyaWJlIGFib3ZlIHdvdWxkIGNlcnRhaW5seSBmYWlsIHdpdGggYW1kZ3B1LAo+
ID4gPj4gcmFkZW9uLCBub3V2ZWF1IGFuZCBpOTE1IGJlY2F1c2UgbWFwcGluZyBhIERNQS1idWYg
ZG9lc24ndCBzdG9wIHRoZQo+ID4gPj4gZXhwb3J0ZXIgZnJvbSByZWFkaW5nL3dyaXRpbmcgdG8g
dGhhdCBidWZmZXIgKGp1c3QgdGhlIG9wcG9zaXRlIGFjdHVhbGx5KS4KPiA+ID4+Cj4gPiA+PiBB
bGwgb2YgdGhlbSBhc3N1bWUgcGVyZmVjdGx5IGNvaGVyZW50IGFjY2VzcyB0byB0aGUgdW5kZXJs
eWluZyBtZW1vcnkuCj4gPiA+PiBBcyBmYXIgYXMgSSBrbm93IHRoZXJlIGlzIG5vIGRvY3VtZW50
ZWQgY2FjaGUgbWFpbnRlbmFuY2UgcmVxdWlyZW1lbnRzCj4gPiA+PiBmb3IgRE1BLWJ1Zi4KPiA+
ID4gSSB0aGluayBpdCBpcyBkb2N1bWVudGVkLiBJdCdzIGp1c3QgdGhhdCBvbiB4ODYsIHdlIGln
bm9yZSB0aGF0Cj4gPiA+IGJlY2F1c2UgdGhlIGRtYS1hcGkgcHJldGVuZHMgdGhlcmUncyBuZXZl
ciBhIG5lZWQgZm9yIGNhY2hlIGZsdXNoaW5nCj4gPiA+IG9uIHg4NiwgYW5kIHRoYXQgZXZlcnl0
aGluZyBzbm9vcHMgdGhlIGNwdSBjYWNoZXMuIFdoaWNoIGlzbid0IHRydWUKPiA+ID4gc2luY2Ug
b3ZlciAyMCBhZ28gd2hlbiBBR1AgaGFwcGVuZWQuIFRoZSBhY3R1YWwgcnVsZXMgZm9yIHg4NiBk
bWEtYnVmCj4gPiA+IGFyZSB2ZXJ5IG11Y2ggYWQtaG9jIChhbmQgd2Ugb2NjYXNpb25hbGx5IHJl
YXBwbHkgc29tZSBkdWN0LXRhcGUgd2hlbgo+ID4gPiBjYWNoZWxpbmUgbm9pc2Ugc2hvd3MgdXAg
c29tZXdoZXJlKS4KPiA+Cj4gPiBXZWxsIEkgc3Ryb25nbHkgZGlzYWdyZWUgb24gdGhpcy4gRXZl
biBvbiB4ODYgYXQgbGVhc3QgQU1EIEdQVXMgYXJlIGFsc28KPiA+IG5vdCBmdWxseSBjb2hlcmVu
dC4KPiA+Cj4gPiBGb3IgZXhhbXBsZSB5b3UgaGF2ZSB0aGUgdGV4dHVyZSBjYWNoZSBhbmQgdGhl
IEhEUCByZWFkL3dyaXRlIGNhY2hlLiBTbwo+ID4gd2hlbiBib3RoIGFtZGdwdSBhcyB3ZWxsIGFz
IGk5MTUgd291bGQgd3JpdGUgdG8gdGhlIHNhbWUgYnVmZmVyIGF0IHRoZQo+ID4gc2FtZSB0aW1l
IHdlIHdvdWxkIGdldCBhIGNvcnJ1cHRlZCBkYXRhIGFzIHdlbGwuCj4gPgo+ID4gVGhlIGtleSBw
b2ludCBpcyB0aGF0IGl0IGlzIE5PVCBETUEtYnVmIGluIGl0J3MgbWFwL3VubWFwIGNhbGwgd2hv
IGlzCj4gPiBkZWZpbmluZyB0aGUgY29oZXJlbmN5LCBidXQgcmF0aGVyIHRoZSByZXNlcnZhdGlv
biBvYmplY3QgYW5kIGl0cwo+ID4gYXR0YWNoZWQgZG1hX2ZlbmNlIGluc3RhbmNlcy4KPiA+Cj4g
PiBTbyBmb3IgZXhhbXBsZSBhcyBsb25nIGFzIGEgZXhjbHVzaXZlIHJlc2VydmF0aW9uIG9iamVj
dCBmZW5jZSBpcyBzdGlsbAo+ID4gbm90IHNpZ25hbGVkIEkgY2FuJ3QgYXNzdW1lIHRoYXQgYWxs
IGNhY2hlcyBhcmUgZmx1c2hlZCBhbmQgc28gY2FuJ3QKPiA+IHN0YXJ0IHdpdGggbXkgb3duIG9w
ZXJhdGlvbi9hY2Nlc3MgdG8gdGhlIGRhdGEgaW4gcXVlc3Rpb24uCj4KPiBUaGUgZG1hLWFwaSBk
b2Vzbid0IGZsdXNoIGRldmljZSBjYWNoZXMsIGV2ZXIuIEl0IG1pZ2h0IGZsdXNoIHNvbWUKPiBp
b21tdSBjYWNoZXMgb3Igc29tZSBvdGhlciBidXMgY2FjaGUgc29tZXdoZXJlIGluLWJldHdlZW4u
IFNvIGl0IGFsc28KPiB3b24ndCBldmVyIG1ha2Ugc3VyZSB0aGF0IG11bHRpcGxlIGRldmljZXMg
ZG9uJ3QgdHJhbXBsZSBvbiBlYWNoCj4gYW5vdGhlci4gRm9yIHRoYXQgeW91IG5lZWQgc29tZXRo
aW5nIGVsc2UgKGxpa2UgcmVzZXJ2YXRpb24gb2JqZWN0LAo+IGJ1dCBJIHRoaW5rIHRoYXQncyBu
b3QgcmVhbGx5IGZvbGxvd2VkIG91dHNpZGUgb2YgZHJtIG11Y2gpLgo+Cj4gVGhlIG90aGVyIGJp
dCBpcyB0aGUgY29oZXJlbnQgdnMuIG5vbi1jb2hlcmVudCB0aGluZywgd2hpY2ggaW4gdGhlCj4g
ZG1hLWFwaSBsYW5kIGp1c3QgdGFsa3MgYWJvdXQgd2hldGhlciBjcHUvZGV2aWNlIGFjY2VzcyBu
ZWVkIGV4dHJhCj4gZmx1c2hpbmcgb3Igbm90LiBOb3cgaW4gcHJhY3RpY2UgdGhhdCBleHRyYSBm
bHVzaGluZyBpcyBhbHdheXMgb25seQo+IGNwdSBzaWRlLCBpLmUuIHdpbGwgY3B1IHdyaXRlcy9y
ZWFkcyBnbyB0aHJvdWdoIHRoZSBjcHUgY2FjaGUsIGFuZAo+IHdpbGwgZGV2aWNlIHJlYWRzL3dy
aXRlcyBzbm9vcCB0aGUgY3B1IGNhY2hlcy4gVGhhdCdzIChhZmFpayBhdCBsZWFzdCwKPiBhbiBp
biBwcmFjdGljZSwgbm90IHRoZSBhYnN0cmFjdCBzcGVjKSB0aGUgX29ubHlfIHRoaW5nIGRtYS1h
cGkncwo+IGNhY2hlIG1haW50ZW5hbmNlIGRvZXMuIEZvciAwIGNvcHkgdGhhdCdzIGFsbCBjb21w
bGV0ZWx5IGlycmVsZXZhbnQsCj4gYmVjYXVzZSBhcyBzb29uIGFzIHlvdSBwaWNrIGEgbW9kZSB3
aGVyZSB5b3UgbmVlZCB0byBkbyBtYW51YWwgY2FjaGUKPiBtYW5hZ2VtZW50IHlvdSd2ZSBzY3Jl
d2VkIHVwLCBpdCdzIG5vdCAwLWNvcHkgYW55bW9yZSByZWFsbHkuCj4KPiBUaGUgb3RoZXIgaGls
YXJpb3VzIHN0dWZmIGlzIHRoYXQgb24geDg2IHdlIGxldCB1c2Vyc3BhY2UgKGF0IGxlYXN0Cj4g
d2l0aCBpOTE1KSBkbyB0aGF0IGNhY2hlIG1hbmFnZW1lbnQsIHNvIHRoZSBrZXJuZWwgZG9lc24n
dCBldmVuIGhhdmUgYQo+IGNsdWUuIEkgdGhpbmsgd2hhdCB3ZSBuZWVkIGluIGRtYS1idWYgKGFu
ZCBkbWEtYXBpIHBlb3BsZSB3aWxsIHNjcmVhbQo+IGFib3V0IHRoZSAiYWJzdHJhY3Rpb24gbGVh
ayIpIGlzIHNvbWUgbm90aXRpb24gYWJvdXQgd2hldGhlciBhbgo+IGltcG9ydGVyIHNob3VsZCBz
bm9vcCBvciBub3QgKG9yIGlmIHRoYXQgZGV2aWNlIGFsd2F5cyB1c2VzIG5vbi1zbm9vcAo+IG9y
IHNub29wZWQgdHJhbnNhY3Rpb25zKS4gQnV0IHRoYXQgd291bGQgc2hyZWQgdGhlIGlsbHVzaW9u
IHRoZQo+IGRtYS1hcGkgdHJpZXMgdG8ga2VlcCB1cCB0aGF0IGFsbCB0aGF0IG1hdHRlcnMgaXMg
d2hldGhlciBhIG1hcHBpbmcgaXMKPiBjb2hlcmVudCBmcm9tIHRoZSBjcHUncyBwb3Ygb3Igbm90
LCBhbmQgeW91IGNhbiBhY2hpZXZlIGNvaGVyZW5jZSBib3RoCj4gd2l0aCBhIGNhY2hlIGNwdSBt
YXBwaW5nICsgc25vb3BlZCB0cmFuc2FjdGlvbnMsIG9yIHdpdGggd2MgY3B1IHNpZGUKPiBhbmQg
bm9uLXNub29wZWQgdHJhbnNhY3Rpb25zLiBUcnlpbmcgdG8gYWRkIGNhY2hlIG1hbmFnbWVudCAo
d2hpY2gKPiBzb21lIGRtYS1idWYgZXhwb3J0ZXIgZG8gaW5kZWVkIGF0dGVtcHQgdG8pIHdpbGwg
YmUgZXZlbiB3b3JzZS4KPgo+IEFnYWluLCBub25lIG9mIHRoaXMgaXMgYWJvdXQgcHJldmVudGlu
ZyBjb25jdXJyZW50IHdyaXRlcywgb3IgbWFraW5nCj4gc3VyZSBkZXZpY2UgY2FjaGVzIGFyZSBm
bHVzaGVkIGNvcnJlY3RseSBhcm91bmQgYmF0Y2hlcy4KCmJ0dyBJIGp1c3QgZ3JlcHBlZCBmb3Ig
cmVzZXJ2YXRpb25fb2JqZWN0LCBubyBvbmUgb3V0c2lkZSBvZgpkcml2ZXJzL2dwdSBpcyB1c2lu
ZyB0aGF0LiBTbyBmb3IgZGV2aWNlIGFjY2VzcyBzeW5jaHJvbml6YXRpb24KZXZlcnlvbmUgZWxz
ZSBpcyByZWx5aW5nIG9uIHVzZXJzcGFjZSBvcmRlcmluZyByZXF1ZXN0cyBjb3JyZWN0bHkgb24K
aXRzIG93bi4gSWlyYyB2NGwvbWVkaWEgaXMgcG9uZGVyaW5nIGFkZGluZyBkbWEtZmVuY2Ugc3Vw
cG9ydCwgYnV0CnRoYXQncyBub3QgZ29pbmcgYW55d2hlcmUuCgpBbHNvLCBmb3IgY29ycmVjdG5l
c3MgcmVzZXJ2YXRpb25zIGFyZW4ndCBuZWVkZWQsIHdlIGFsbG93IGV4cGxpY2l0CnN5bmNpbmcg
dXNlcnNwYWNlIHRvIG1hbmFnZWQgZG1hLWZlbmNlcy9kcm1fc3luY29iaiBvbiB0aGVpciBvd24s
IGFuZAp0aGV5IGFyZSBhbGxvd2VkIHRvIGdldCB0aGlzIHdyb25nLgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
