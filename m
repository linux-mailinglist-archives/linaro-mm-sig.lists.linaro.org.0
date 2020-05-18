Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E663A1D76A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2020 13:17:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2443B60732
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2020 11:17:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11A1E61778; Mon, 18 May 2020 11:17:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B932A61725;
	Mon, 18 May 2020 11:17:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4272760723
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2020 11:17:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2A87961725; Mon, 18 May 2020 11:17:16 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id B89D760723
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2020 11:17:14 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id f18so3567505otq.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2020 04:17:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g503Ck8Hmnwm3Mle9RPu3pG4Ds3hYRoRksfGfnX5Wtc=;
 b=TwI0Ikp+AEprDh+226OCY9u5iH4eW6f0y96u9OlAzYicpktEt8adP+3Ku3ZmgL4NIY
 8KzBWZROpyxC0GgslTeAbvjFGxJX3y8RdRk37AdvrbObc/ZUIkrl/BoAqL3U6aYeEbAw
 hzpnF2Jw+8WU2hL6/pkDe93pP9rKNx7YDdGgGmmAdTzHdUlqr3PIyrFB0P6woWlosLPF
 K70wb9N66X6Fi6qKIJbV4FuaLbkptNSYM77LjIe3YJEjzUCBser1dVBUmmUVc3StdoiG
 Hdl/r7494eV8A8/NEZDVZtB1b2rFUqRSbMJgHLX9CE8SjJVDRErjBWNwzYtCfadfdAPW
 38GA==
X-Gm-Message-State: AOAM532d2aVWVreHbV0093hun1PyGIDOLpgu+UhTBBU0rkCymTBiklqx
 gpDwtcVehaGGzWZxLFzmg0xN1zfbAv/WKPCZ9Pt0ulSa
X-Google-Smtp-Source: ABdhPJwl5rqs5VWO5Jkao2XeEWkRX+lCx01ip7F50tguMxrw+WswGeYLG9OGd+5XHn6jnx/Q1aQbMIwBn56Y/9LJcLA=
X-Received: by 2002:a9d:ec7:: with SMTP id 65mr11530376otj.164.1589800633898; 
 Mon, 18 May 2020 04:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200311112004.47138-1-stevensd@chromium.org>
 <20200311112004.47138-2-stevensd@chromium.org>
 <CAKMK7uHFgiHLe9oiFBr-VR-6rU9-hLTpBTEVNh0ezyj54u70jw@mail.gmail.com>
 <CAD=HUj6k-y1=64zY8ZFOQBZ7WSUWiQfvkiTpXXt10JB_CGqk1A@mail.gmail.com>
 <20200514123007.GP206103@phenom.ffwll.local>
 <CAD=HUj7452eFfn9i=JWm54Mke3Lew-7AWYeoKZLAjCSg7eLO6A@mail.gmail.com>
 <20200515140306.GF206103@phenom.ffwll.local>
In-Reply-To: <20200515140306.GF206103@phenom.ffwll.local>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 18 May 2020 16:47:02 +0530
Message-ID: <CAO_48GG85PhyoZ1yzXuwv8tT12V4dkDsXc8_RaMd--oinkpN2g@mail.gmail.com>
To: David Stevens <stevensd@chromium.org>, Tomasz Figa <tfiga@chromium.org>, 
 Gerd Hoffmann <kraxel@redhat.com>, David Airlie <airlied@linux.ie>, 
 "Michael S . Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:VIRTIO CORE, NET..." <virtualization@lists.linux-foundation.org>, 
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, 
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 virtio-dev@lists.oasis-open.org
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/4] dma-buf: add support for virtio
	exported objects
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

SGVsbG8gRGF2aWQsCgpPbiBGcmksIDE1IE1heSAyMDIwIGF0IDE5OjMzLCBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDI6
MDc6MDZQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3cm90ZToKPiA+IE9uIFRodSwgTWF5IDE0LCAy
MDIwIGF0IDk6MzAgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+
ID4gT24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDU6MTk6NDBQTSArMDkwMCwgRGF2aWQgU3RldmVu
cyB3cm90ZToKPiA+ID4gPiBTb3JyeSBmb3IgdGhlIGR1cGxpY2F0ZSByZXBseSwgZGlkbid0IG5v
dGljZSB0aGlzIHVudGlsIG5vdy4KPiA+ID4gPgo+ID4gPiA+ID4gSnVzdCBzdG9yaW5nCj4gPiA+
ID4gPiB0aGUgdXVpZCBzaG91bGQgYmUgZG9hYmxlIChhc3N1bWluZyB0aGlzIGRvZXNuJ3QgY2hh
bmdlIGR1cmluZyB0aGUKPiA+ID4gPiA+IGxpZmV0aW1lIG9mIHRoZSBidWZmZXIpLCBzbyBubyBu
ZWVkIGZvciBhIGNhbGxiYWNrLgo+ID4gPiA+Cj4gPiA+ID4gRGlyZWN0bHkgc3RvcmluZyB0aGUg
dXVpZCBkb2Vzbid0IHdvcmsgdGhhdCB3ZWxsIGJlY2F1c2Ugb2YKPiA+ID4gPiBzeW5jaHJvbml6
YXRpb24gaXNzdWVzLiBUaGUgdXVpZCBuZWVkcyB0byBiZSBzaGFyZWQgYmV0d2VlbiBtdWx0aXBs
ZQo+ID4gPiA+IHZpcnRpbyBkZXZpY2VzIHdpdGggaW5kZXBlbmRlbnQgY29tbWFuZCBzdHJlYW1z
LCBzbyB0byBwcmV2ZW50IHJhY2VzCj4gPiA+ID4gYmV0d2VlbiBpbXBvcnRpbmcgYW5kIGV4cG9y
dGluZywgdGhlIGV4cG9ydGluZyBkcml2ZXIgY2FuJ3Qgc2hhcmUgdGhlCj4gPiA+ID4gdXVpZCB3
aXRoIG90aGVyIGRyaXZlcnMgdW50aWwgaXQga25vd3MgdGhhdCB0aGUgZGV2aWNlIGhhcyBmaW5p
c2hlZAo+ID4gPiA+IHJlZ2lzdGVyaW5nIHRoZSB1dWlkLiBUaGF0IHJlcXVpcmVzIGEgcm91bmQg
dHJpcCB0byBhbmQgdGhlbiBiYWNrIGZyb20KPiA+ID4gPiB0aGUgZGV2aWNlLiBVc2luZyBhIGNh
bGxiYWNrIGFsbG93cyB0aGUgbGF0ZW5jeSBmcm9tIHRoYXQgcm91bmQgdHJpcAo+ID4gPiA+IHJl
Z2lzdHJhdGlvbiB0byBiZSBoaWRkZW4uCj4gPiA+Cj4gPiA+IFVoLCB0aGF0IG1lYW5zIHlvdSBh
Y3R1YWxseSBkbyBzb21ldGhpbmcgYW5kIHRoZXJlJ3MgbG9ja2luZyBpbnZvbHZlZC4KPiA+ID4g
TWFrZXMgc3R1ZmYgbW9yZSBjb21wbGljYXRlZCwgaW52YXJpYW50IGF0dHJpYnV0ZXMgYXJlIGEg
bG90IGVhc2llcgo+ID4gPiBnZW5lcmFsbHkuIFJlZ2lzdGVyaW5nIHRoYXQgdXVpZCBqdXN0IGFs
d2F5cyBkb2Vzbid0IHdvcmssIGFuZCBibG9ja2luZwo+ID4gPiB3aGVuIHlvdSdyZSBleHBvcnRp
bmc/Cj4gPgo+ID4gUmVnaXN0ZXJpbmcgdGhlIGlkIGF0IGNyZWF0aW9uIGFuZCBibG9ja2luZyBp
biBnZW0gZXhwb3J0IGlzIGZlYXNpYmxlLAo+ID4gYnV0IGl0IGRvZXNuJ3Qgd29yayB3ZWxsIGZv
ciBzeXN0ZW1zIHdpdGggYSBjZW50cmFsaXplZCBidWZmZXIKPiA+IGFsbG9jYXRvciB0aGF0IGRv
ZXNuJ3Qgc3VwcG9ydCBiYXRjaCBhbGxvY2F0aW9ucyAoZS5nLiBncmFsbG9jKS4gSW4KPiA+IHN1
Y2ggYSBzeXN0ZW0sIHRoZSByb3VuZCB0cmlwIGxhdGVuY3kgd291bGQgYWxtb3N0IGNlcnRhaW5s
eSBiZQo+ID4gaW5jbHVkZWQgaW4gdGhlIGJ1ZmZlciBhbGxvY2F0aW9uIHRpbWUuIEF0IGxlYXN0
IG9uIHRoZSBzeXN0ZW0gSSdtCj4gPiB3b3JraW5nIG9uLCBJIHN1c3BlY3QgdGhhdCB3b3VsZCBh
ZGQgMTBzIG9mIG1pbGxpc2Vjb25kcyBvZiBzdGFydHVwCj4gPiBsYXRlbmN5IHRvIHZpZGVvIHBp
cGVsaW5lcyAoYWx0aG91Z2ggSSBoYXZlbid0IGJlbmNobWFya2VkIHRoZQo+ID4gZGlmZmVyZW5j
ZSkuIERvaW5nIHRoZSBibG9ja2luZyBhcyBsYXRlIGFzIHBvc3NpYmxlIG1lYW5zIG1vc3Qgb3Ig
YWxsCj4gPiBvZiB0aGUgbGF0ZW5jeSBjYW4gYmUgaGlkZGVuIGJlaGluZCBvdGhlciBwaXBlbGlu
ZSBzZXR1cCB3b3JrLgo+ID4KPiA+IEluIHRlcm1zIG9mIGNvbXBsZXhpdHksIEkgdGhpbmsgdGhl
IHN5bmNocm9uaXphdGlvbiB3b3VsZCBiZSBiYXNpY2FsbHkKPiA+IHRoZSBzYW1lIGluIGVpdGhl
ciBhcHByb2FjaCwganVzdCBpbiBkaWZmZXJlbnQgbG9jYXRpb25zLiBBbGwgaXQgd291bGQKPiA+
IGRvIGlzIGFsbGV2aWF0ZSB0aGUgbmVlZCBmb3IgYSBjYWxsYmFjayB0byBmZXRjaCB0aGUgVVVJ
RC4KPgpJIHRoaW5rIEkgYWdyZWUgd2l0aCBEYW5pZWwgdGhlcmUgLSB0aGlzIHNlZW1zIGJlc3Qg
c3VpdGVkIGZvciBjb2RlCndpdGhpbiB2aXJ0aW8uCgo+IEhtIG9rLiBJIGd1ZXNzIGlmIHdlIGdv
IHdpdGggdGhlIG9sZGVyIHBhdGNoLCB3aGVyZSB0aGlzIGFsbCBpcyBhIGxvdCBtb3JlCj4ganVz
dCBjb2RlIGluIHZpcnRpbywgZG9pbmcgYW4gZXh0cmEgZnVuY3Rpb24gdG8gYWxsb2NhdGUgdGhl
IHV1aWQgc291bmRzCj4gZmluZS4gVGhlbiBzeW5jaHJvbml6YXRpb24gaXMgZW50aXJlbHkgdXAg
dG8gdGhlIHZpcnRpbyBzdWJzeXN0ZW0gYW5kIG5vdAo+IGEgZG1hLWJ1ZiBwcm9ibGVtIChhbmQg
aGVuY2Ugbm90IG1pbmUpLiBZb3UgY2FuIHVzZSBkbWFfcmVzdl9sb2NrIG9yIHNvLAo+IGJ1dCBu
byBuZWVkIHRvLiBCdXQgd2l0aCBjYWxsYmFja3MgcG90ZW50aWFsbHkgZ29pbmcgYm90aCB3YXlz
IHRoaW5ncwo+IGFsd2F5cyBnZXQgYSBiaXQgaW50ZXJlc3Rpbmcgd3J0IGxvY2tpbmcgLSB0aGlz
IGlzIHdoYXQgbWFrZXMgcGVlcjJwZWVyCj4gZG1hLWJ1ZiBzbyBwYWluZnVsIHJpZ2h0IG5vdy4g
SGVuY2UgSSdkIGxpa2UgdG8gYXZvaWQgdGhhdCBpZiBuZWVkZWQsIGF0Cj4gbGVhc3QgYXQgdGhl
IGRtYS1idWYgbGV2ZWwuIHZpcnRpbyBjb2RlIEkgZG9uJ3QgbWluZCB3aGF0IHlvdSBkbyB0aGVy
ZSA6LSkKPgo+IENoZWVycywgRGFuaWVsCj4gLS0KPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCkJlc3Qs
ClN1bWl0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
