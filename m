Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C38C1D4FDD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2020 16:03:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A140A65F85
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2020 14:03:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BD5965F94; Fri, 15 May 2020 14:03:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55BB965F89;
	Fri, 15 May 2020 14:03:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4AFE65F80
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2020 14:03:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D6FA865F89; Fri, 15 May 2020 14:03:11 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7B66365F80
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2020 14:03:10 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id z4so1279392wmi.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2020 07:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=hfKkBsIEgs0vkAeFdo392aLMF7GnommANe2U1KeK9uI=;
 b=RMgXZT7KO9CTkS6kIPvcX74XXUl5j5cx6k9cy7v5WbeQv1Cx9p3igt7bDYVtuBt0SA
 Vp+4gzm6eyMPuzyIbLTFo1qrc6NyluyjKngTSkca2RSmWcaXwBGbQzl9k2ytdV30zy3u
 bcjnPrTkgdfos4ZVAAdkPB3ikg8y9duD7K70YMNUKhkUc3u9axB3/A8bjnLfGB7xGgyd
 JqrIAdfCU3amW5LYMesjGYdHjf5FoPXHN+V/2Z39d/2XqT+jvyHTfje1nxCAda+P001B
 4qCL1TXeCBMlU7p0P3MDfb5N5feRNl5QZE5bF6SFWb7Zxr9ZrjiinBEQsJGJt6/EVth+
 GUgw==
X-Gm-Message-State: AOAM531IFQ8IZtKfD270OvIpApnjmSSn0TRKJJJZ2DiGgFtaSVJBwxtT
 g4x2t0uFQe4Meprk+OzXuCvCfg==
X-Google-Smtp-Source: ABdhPJzmhNqsxAdCi4n1OFQV3XDuSejh1CuLln2gJgFMW5yg1LElG7wBgKDi+Hw5Qcxt2Ktc6DQ43w==
X-Received: by 2002:a1c:dc05:: with SMTP id t5mr4402679wmg.112.1589551389616; 
 Fri, 15 May 2020 07:03:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x16sm3814048wrq.23.2020.05.15.07.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:03:08 -0700 (PDT)
Date: Fri, 15 May 2020 16:03:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200515140306.GF206103@phenom.ffwll.local>
Mail-Followup-To: David Stevens <stevensd@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 David Airlie <airlied@linux.ie>,
 "Michael S . Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>,
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
References: <20200311112004.47138-1-stevensd@chromium.org>
 <20200311112004.47138-2-stevensd@chromium.org>
 <CAKMK7uHFgiHLe9oiFBr-VR-6rU9-hLTpBTEVNh0ezyj54u70jw@mail.gmail.com>
 <CAD=HUj6k-y1=64zY8ZFOQBZ7WSUWiQfvkiTpXXt10JB_CGqk1A@mail.gmail.com>
 <20200514123007.GP206103@phenom.ffwll.local>
 <CAD=HUj7452eFfn9i=JWm54Mke3Lew-7AWYeoKZLAjCSg7eLO6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj7452eFfn9i=JWm54Mke3Lew-7AWYeoKZLAjCSg7eLO6A@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel@ffwll.ch>, "open list:VIRTIO CORE,
 NET..." <virtualization@lists.linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDI6MDc6MDZQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCA5OjMwIFBNIERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4gd3JvdGU6Cj4gPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAwNToxOTo0
MFBNICswOTAwLCBEYXZpZCBTdGV2ZW5zIHdyb3RlOgo+ID4gPiBTb3JyeSBmb3IgdGhlIGR1cGxp
Y2F0ZSByZXBseSwgZGlkbid0IG5vdGljZSB0aGlzIHVudGlsIG5vdy4KPiA+ID4KPiA+ID4gPiBK
dXN0IHN0b3JpbmcKPiA+ID4gPiB0aGUgdXVpZCBzaG91bGQgYmUgZG9hYmxlIChhc3N1bWluZyB0
aGlzIGRvZXNuJ3QgY2hhbmdlIGR1cmluZyB0aGUKPiA+ID4gPiBsaWZldGltZSBvZiB0aGUgYnVm
ZmVyKSwgc28gbm8gbmVlZCBmb3IgYSBjYWxsYmFjay4KPiA+ID4KPiA+ID4gRGlyZWN0bHkgc3Rv
cmluZyB0aGUgdXVpZCBkb2Vzbid0IHdvcmsgdGhhdCB3ZWxsIGJlY2F1c2Ugb2YKPiA+ID4gc3lu
Y2hyb25pemF0aW9uIGlzc3Vlcy4gVGhlIHV1aWQgbmVlZHMgdG8gYmUgc2hhcmVkIGJldHdlZW4g
bXVsdGlwbGUKPiA+ID4gdmlydGlvIGRldmljZXMgd2l0aCBpbmRlcGVuZGVudCBjb21tYW5kIHN0
cmVhbXMsIHNvIHRvIHByZXZlbnQgcmFjZXMKPiA+ID4gYmV0d2VlbiBpbXBvcnRpbmcgYW5kIGV4
cG9ydGluZywgdGhlIGV4cG9ydGluZyBkcml2ZXIgY2FuJ3Qgc2hhcmUgdGhlCj4gPiA+IHV1aWQg
d2l0aCBvdGhlciBkcml2ZXJzIHVudGlsIGl0IGtub3dzIHRoYXQgdGhlIGRldmljZSBoYXMgZmlu
aXNoZWQKPiA+ID4gcmVnaXN0ZXJpbmcgdGhlIHV1aWQuIFRoYXQgcmVxdWlyZXMgYSByb3VuZCB0
cmlwIHRvIGFuZCB0aGVuIGJhY2sgZnJvbQo+ID4gPiB0aGUgZGV2aWNlLiBVc2luZyBhIGNhbGxi
YWNrIGFsbG93cyB0aGUgbGF0ZW5jeSBmcm9tIHRoYXQgcm91bmQgdHJpcAo+ID4gPiByZWdpc3Ry
YXRpb24gdG8gYmUgaGlkZGVuLgo+ID4KPiA+IFVoLCB0aGF0IG1lYW5zIHlvdSBhY3R1YWxseSBk
byBzb21ldGhpbmcgYW5kIHRoZXJlJ3MgbG9ja2luZyBpbnZvbHZlZC4KPiA+IE1ha2VzIHN0dWZm
IG1vcmUgY29tcGxpY2F0ZWQsIGludmFyaWFudCBhdHRyaWJ1dGVzIGFyZSBhIGxvdCBlYXNpZXIK
PiA+IGdlbmVyYWxseS4gUmVnaXN0ZXJpbmcgdGhhdCB1dWlkIGp1c3QgYWx3YXlzIGRvZXNuJ3Qg
d29yaywgYW5kIGJsb2NraW5nCj4gPiB3aGVuIHlvdSdyZSBleHBvcnRpbmc/Cj4gCj4gUmVnaXN0
ZXJpbmcgdGhlIGlkIGF0IGNyZWF0aW9uIGFuZCBibG9ja2luZyBpbiBnZW0gZXhwb3J0IGlzIGZl
YXNpYmxlLAo+IGJ1dCBpdCBkb2Vzbid0IHdvcmsgd2VsbCBmb3Igc3lzdGVtcyB3aXRoIGEgY2Vu
dHJhbGl6ZWQgYnVmZmVyCj4gYWxsb2NhdG9yIHRoYXQgZG9lc24ndCBzdXBwb3J0IGJhdGNoIGFs
bG9jYXRpb25zIChlLmcuIGdyYWxsb2MpLiBJbgo+IHN1Y2ggYSBzeXN0ZW0sIHRoZSByb3VuZCB0
cmlwIGxhdGVuY3kgd291bGQgYWxtb3N0IGNlcnRhaW5seSBiZQo+IGluY2x1ZGVkIGluIHRoZSBi
dWZmZXIgYWxsb2NhdGlvbiB0aW1lLiBBdCBsZWFzdCBvbiB0aGUgc3lzdGVtIEknbQo+IHdvcmtp
bmcgb24sIEkgc3VzcGVjdCB0aGF0IHdvdWxkIGFkZCAxMHMgb2YgbWlsbGlzZWNvbmRzIG9mIHN0
YXJ0dXAKPiBsYXRlbmN5IHRvIHZpZGVvIHBpcGVsaW5lcyAoYWx0aG91Z2ggSSBoYXZlbid0IGJl
bmNobWFya2VkIHRoZQo+IGRpZmZlcmVuY2UpLiBEb2luZyB0aGUgYmxvY2tpbmcgYXMgbGF0ZSBh
cyBwb3NzaWJsZSBtZWFucyBtb3N0IG9yIGFsbAo+IG9mIHRoZSBsYXRlbmN5IGNhbiBiZSBoaWRk
ZW4gYmVoaW5kIG90aGVyIHBpcGVsaW5lIHNldHVwIHdvcmsuCj4gCj4gSW4gdGVybXMgb2YgY29t
cGxleGl0eSwgSSB0aGluayB0aGUgc3luY2hyb25pemF0aW9uIHdvdWxkIGJlIGJhc2ljYWxseQo+
IHRoZSBzYW1lIGluIGVpdGhlciBhcHByb2FjaCwganVzdCBpbiBkaWZmZXJlbnQgbG9jYXRpb25z
LiBBbGwgaXQgd291bGQKPiBkbyBpcyBhbGxldmlhdGUgdGhlIG5lZWQgZm9yIGEgY2FsbGJhY2sg
dG8gZmV0Y2ggdGhlIFVVSUQuCgpIbSBvay4gSSBndWVzcyBpZiB3ZSBnbyB3aXRoIHRoZSBvbGRl
ciBwYXRjaCwgd2hlcmUgdGhpcyBhbGwgaXMgYSBsb3QgbW9yZQpqdXN0IGNvZGUgaW4gdmlydGlv
LCBkb2luZyBhbiBleHRyYSBmdW5jdGlvbiB0byBhbGxvY2F0ZSB0aGUgdXVpZCBzb3VuZHMKZmlu
ZS4gVGhlbiBzeW5jaHJvbml6YXRpb24gaXMgZW50aXJlbHkgdXAgdG8gdGhlIHZpcnRpbyBzdWJz
eXN0ZW0gYW5kIG5vdAphIGRtYS1idWYgcHJvYmxlbSAoYW5kIGhlbmNlIG5vdCBtaW5lKS4gWW91
IGNhbiB1c2UgZG1hX3Jlc3ZfbG9jayBvciBzbywKYnV0IG5vIG5lZWQgdG8uIEJ1dCB3aXRoIGNh
bGxiYWNrcyBwb3RlbnRpYWxseSBnb2luZyBib3RoIHdheXMgdGhpbmdzCmFsd2F5cyBnZXQgYSBi
aXQgaW50ZXJlc3Rpbmcgd3J0IGxvY2tpbmcgLSB0aGlzIGlzIHdoYXQgbWFrZXMgcGVlcjJwZWVy
CmRtYS1idWYgc28gcGFpbmZ1bCByaWdodCBub3cuIEhlbmNlIEknZCBsaWtlIHRvIGF2b2lkIHRo
YXQgaWYgbmVlZGVkLCBhdApsZWFzdCBhdCB0aGUgZG1hLWJ1ZiBsZXZlbC4gdmlydGlvIGNvZGUg
SSBkb24ndCBtaW5kIHdoYXQgeW91IGRvIHRoZXJlIDotKQoKQ2hlZXJzLCBEYW5pZWwKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
