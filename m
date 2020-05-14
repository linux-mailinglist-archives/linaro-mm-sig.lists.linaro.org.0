Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C20BB1D2FB4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 14:29:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB31A65F93
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 12:29:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBE9465F89; Thu, 14 May 2020 12:29:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9D7665F91;
	Thu, 14 May 2020 12:29:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F2BD365F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:28:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E404865F91; Thu, 14 May 2020 12:28:56 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id A665265F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:28:55 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w7so3761271wre.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 05:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=MhSXdQmfGHknlE+HXPCeR7P0ZV8ATRBftwFVeEaaAyc=;
 b=hXubujclCxJdyEi1++OtgfY6WuGRDV+xbEU4b1GgOZP1im4xUp4Egss+6qnxQpncte
 8Mv6Q9zkGRo3pMuO3ipb1jZH6eUJjioN04pPE8qCovjQ3jySzakKqHFn+xqab8Z/TOb1
 8nfsk6rFKYRWkcOUQp7SJuWMTKTygwp1CyU28Zmnf6sy0tuuAFLWlvfFGw+9rz72WFOn
 lcySk4k7Gj+W8k9+FFMgAaHunvsj51Gy/mR9f9LoHGmz6bq0uPF76Q1+Z/LHADDo2KBO
 81CfRSHdRvw3962ZbAMtKErMMnvvKm5U24s3CN9dx+JYzbv6J0aNWfri7aliuJ7y1AoB
 t16w==
X-Gm-Message-State: AOAM531nUu3QHpLO5b9zBNdd2gk5v8/n4bKxoLEH3JIeyXkiqZ5k3iDd
 H6Ywlda8jqF7PEkh4Q0Polbnog==
X-Google-Smtp-Source: ABdhPJyi0dv4TvrSEI6BLeM7V23XeYGER8KAK6n/kWqLKYuPlyYwM4QLzJwBgLkyP3bhqCn4hd3iBw==
X-Received: by 2002:adf:f38b:: with SMTP id m11mr5136675wro.65.1589459334793; 
 Thu, 14 May 2020 05:28:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b2sm4451847wrm.30.2020.05.14.05.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:28:53 -0700 (PDT)
Date: Thu, 14 May 2020 14:28:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200514122851.GO206103@phenom.ffwll.local>
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
 <CAD=HUj6d9gdZegTGad6thKdHv5b+qOZnkCv5VcWo9AcHifR9uA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj6d9gdZegTGad6thKdHv5b+qOZnkCv5VcWo9AcHifR9uA@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:VIRTIO CORE, NET..." <virtualization@lists.linux-foundation.org>,
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

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMTE6MDg6NTJBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAxMjo0NSBBTSBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4gT24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMTI6MjAg
UE0gRGF2aWQgU3RldmVucyA8c3RldmVuc2RAY2hyb21pdW0ub3JnPiB3cm90ZToKPiA+ID4KPiA+
ID4gVGhpcyBjaGFuZ2UgYWRkcyBhIG5ldyBkbWEtYnVmIG9wZXJhdGlvbiB0aGF0IGFsbG93cyBk
bWEtYnVmcyB0byBiZSB1c2VkCj4gPiA+IGJ5IHZpcnRpbyBkcml2ZXJzIHRvIHNoYXJlIGV4cG9y
dGVkIG9iamVjdHMuIFRoZSBuZXcgb3BlcmF0aW9uIGFsbG93cwo+ID4gPiB0aGUgaW1wb3J0aW5n
IGRyaXZlciB0byBxdWVyeSB0aGUgZXhwb3J0aW5nIGRyaXZlciBmb3IgdGhlIFVVSUQgd2hpY2gK
PiA+ID4gaWRlbnRpZmllcyB0aGUgdW5kZXJseWluZyBleHBvcnRlZCBvYmplY3QuCj4gPiA+Cj4g
PiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFN0ZXZlbnMgPHN0ZXZlbnNkQGNocm9taXVtLm9yZz4K
PiA+Cj4gPiBBZGRpbmcgVG9tYXN6IEZpZ2EsIEkndmUgZGlzY3Vzc2VkIHRoaXMgd2l0aCBoaW0g
YXQgZWxjZSBsYXN0IHllYXIgSQo+ID4gdGhpbmsuIEp1c3QgdG8gbWFrZSBzdXJlLgo+ID4KPiA+
IEJ1bmNoIG9mIHRoaW5nczoKPiA+IC0gb2J2aW91c2x5IHdlIG5lZWQgdGhlIHVzZXJzIG9mIHRo
aXMgaW4gYSBmZXcgZHJpdmVycywgY2FuJ3QgcmVhbGx5Cj4gPiByZXZpZXcgYW55dGhpbmcgc3Rh
bmQtYWxvbmUKPiAKPiBIZXJlIGlzIGEgbGluayB0byB0aGUgdXNhZ2Ugb2YgdGhpcyBmZWF0dXJl
IGJ5IHRoZSBjdXJyZW50bHkgdW5kZXIKPiBkZXZlbG9wbWVudCB2aXJ0aW8tdmlkZW8gZHJpdmVy
Ogo+IGh0dHBzOi8vbWFya21haWwub3JnL3RocmVhZC9qNHhscWFhaW0yNjZxcGtzCj4gCj4gPiAt
IGFkZGluZyB2ZXJ5IHNwZWNpZmljIG9wcyB0byB0aGUgZ2VuZXJpYyBpbnRlcmZhY2UgaXMgcmF0
aGVyIGF3a3dhcmQsCj4gPiBldmVudHVhbGx5IGV2ZXJ5b25lIHdhbnRzIHRoYXQgYW5kIHdlIGVu
ZCB1cCBpbiBhIG1lc3MuIEkgdGhpbmsgdGhlCj4gPiBiZXN0IHNvbHV0aW9uIGhlcmUgd291bGQg
YmUgaWYgd2UgY3JlYXRlIGEgc3RydWN0IHZpcnRpb19kbWFfYnVmIHdoaWNoCj4gPiBzdWJjbGFz
c2VzIGRtYS1idWYsIGFkZCBhIChob3BlZnVsbHkgc2FmZSkgcnVudGltZSB1cGNhc3RpbmcKPiA+
IGZ1bmN0aW9ucywgYW5kIHRoZW4gYSB2aXJ0aW9fZG1hX2J1Zl9nZXRfdXVpZCgpIGZ1bmN0aW9u
LiBKdXN0IHN0b3JpbmcKPiA+IHRoZSB1dWlkIHNob3VsZCBiZSBkb2FibGUgKGFzc3VtaW5nIHRo
aXMgZG9lc24ndCBjaGFuZ2UgZHVyaW5nIHRoZQo+ID4gbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlciks
IHNvIG5vIG5lZWQgZm9yIGEgY2FsbGJhY2suCj4gCj4gU28geW91IHdvdWxkIHByZWZlciBhIHNv
bHV0aW9uIHNpbWlsYXIgdG8gdGhlIG9yaWdpbmFsIHZlcnNpb24gb2YgdGhpcwo+IHBhdGNoc2V0
PyBodHRwczovL21hcmttYWlsLm9yZy9tZXNzYWdlL3o3aWY0dTU2cTVmbWFvazQKCnl1cC4KLURh
bmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRp
b24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
