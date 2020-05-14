Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3742A1D2FC6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 14:30:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E89D65F96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 12:30:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F90C65F91; Thu, 14 May 2020 12:30:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC2DD65F91;
	Thu, 14 May 2020 12:30:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DBDF165F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:30:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CBACA65F91; Thu, 14 May 2020 12:30:12 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 815DB65F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:30:11 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 50so3783611wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 05:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=J2ZtatzqD3OE8VdsdW4HBUMkQqixlxQVBQrLMq5CUUY=;
 b=a3V4iKReEfJguKv3+tHYSZ/eYINFzb0jQvJuQVRVjmJkLd0bD8Zn0JXu0wMro2Stoo
 I2QZ94X936zOHH7XxSLtT95jRTxnZYTT0maxvPwFaxhg6vb+1CNxf2b2PaLuDfDRZrbJ
 6yMgmrXGxE4I7By+mjz3m/6uCbVQYPjvWl0QFsE7dsUCUZGIRgzkxgaad+LbXMF8czSN
 gOysEaH9m7D7KNtB7EagL9fB/l3J7Grit32XfUCAX0XfSLLhnOxCQuERezg/OwMoSYL7
 23IqgL6q7MVdAxf3POkk42wHz1JMoBcc8T7o0hOJqeEnMz3Q6HE6n1rK4TC0Cm1DGmki
 oIhg==
X-Gm-Message-State: AOAM533nCw460Vi8qplz5lEdnxFZlAIEQySb2GWzM86NrUXmX9YhBMAH
 IlZmZxmU8u9k871PqDeQyjGjpg==
X-Google-Smtp-Source: ABdhPJxzzUZ9N249No4GSzh95gQlAWDkP3vcLToZAWmJAuT2AF/3WaSYIEjZHpBOhUMq5YlyAgExqA==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr5203956wru.62.1589459410673;
 Thu, 14 May 2020 05:30:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p7sm4269731wmg.38.2020.05.14.05.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:30:09 -0700 (PDT)
Date: Thu, 14 May 2020 14:30:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200514123007.GP206103@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj6k-y1=64zY8ZFOQBZ7WSUWiQfvkiTpXXt10JB_CGqk1A@mail.gmail.com>
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

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDU6MTk6NDBQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBTb3JyeSBmb3IgdGhlIGR1cGxpY2F0ZSByZXBseSwgZGlkbid0IG5vdGljZSB0aGlz
IHVudGlsIG5vdy4KPiAKPiA+IEp1c3Qgc3RvcmluZwo+ID4gdGhlIHV1aWQgc2hvdWxkIGJlIGRv
YWJsZSAoYXNzdW1pbmcgdGhpcyBkb2Vzbid0IGNoYW5nZSBkdXJpbmcgdGhlCj4gPiBsaWZldGlt
ZSBvZiB0aGUgYnVmZmVyKSwgc28gbm8gbmVlZCBmb3IgYSBjYWxsYmFjay4KPiAKPiBEaXJlY3Rs
eSBzdG9yaW5nIHRoZSB1dWlkIGRvZXNuJ3Qgd29yayB0aGF0IHdlbGwgYmVjYXVzZSBvZgo+IHN5
bmNocm9uaXphdGlvbiBpc3N1ZXMuIFRoZSB1dWlkIG5lZWRzIHRvIGJlIHNoYXJlZCBiZXR3ZWVu
IG11bHRpcGxlCj4gdmlydGlvIGRldmljZXMgd2l0aCBpbmRlcGVuZGVudCBjb21tYW5kIHN0cmVh
bXMsIHNvIHRvIHByZXZlbnQgcmFjZXMKPiBiZXR3ZWVuIGltcG9ydGluZyBhbmQgZXhwb3J0aW5n
LCB0aGUgZXhwb3J0aW5nIGRyaXZlciBjYW4ndCBzaGFyZSB0aGUKPiB1dWlkIHdpdGggb3RoZXIg
ZHJpdmVycyB1bnRpbCBpdCBrbm93cyB0aGF0IHRoZSBkZXZpY2UgaGFzIGZpbmlzaGVkCj4gcmVn
aXN0ZXJpbmcgdGhlIHV1aWQuIFRoYXQgcmVxdWlyZXMgYSByb3VuZCB0cmlwIHRvIGFuZCB0aGVu
IGJhY2sgZnJvbQo+IHRoZSBkZXZpY2UuIFVzaW5nIGEgY2FsbGJhY2sgYWxsb3dzIHRoZSBsYXRl
bmN5IGZyb20gdGhhdCByb3VuZCB0cmlwCj4gcmVnaXN0cmF0aW9uIHRvIGJlIGhpZGRlbi4KClVo
LCB0aGF0IG1lYW5zIHlvdSBhY3R1YWxseSBkbyBzb21ldGhpbmcgYW5kIHRoZXJlJ3MgbG9ja2lu
ZyBpbnZvbHZlZC4KTWFrZXMgc3R1ZmYgbW9yZSBjb21wbGljYXRlZCwgaW52YXJpYW50IGF0dHJp
YnV0ZXMgYXJlIGEgbG90IGVhc2llcgpnZW5lcmFsbHkuIFJlZ2lzdGVyaW5nIHRoYXQgdXVpZCBq
dXN0IGFsd2F5cyBkb2Vzbid0IHdvcmssIGFuZCBibG9ja2luZwp3aGVuIHlvdSdyZSBleHBvcnRp
bmc/Ci1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
