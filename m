Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 502D62AE446
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Nov 2020 00:42:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75DCB6661F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:42:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 691EC66608; Tue, 10 Nov 2020 23:42:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F04F2665FA;
	Tue, 10 Nov 2020 23:40:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A735B6192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:40:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 984F1665EF; Tue, 10 Nov 2020 23:40:37 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 78E40665EE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:40:35 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p1so315388wrf.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 15:40:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7Kkc+sXRhJ1ZOnG2Idz2D/eyp50AaUEzxdbosWJCnfc=;
 b=pH+1h/9AJxXyq3yi6HhwPIs7Sc6hrnFEwO9UJ1ygOgnrRw9L5Q5UU+DEGt7PtA7/b4
 +cLInjE8adaPA+5wXyyld5CKHge2nF9U7XD0WLUfGqU+jCVLfTZXCGZu81spL6M0Tg3a
 xBakB3MqeRQ7oOGh95T7SRk0dCeHHbTw319hjSIiQ7ATs9xjsJDUb2KdzmafgDktV3Q3
 ZjhkuS2zoL2StiuFVdRd9NPoC9w8mHy1r43Ho6BKjboYUGOk8aJpyxL/ujlvHDeQJMRj
 iGKSVc8dlgMEMZ3RzIig/nwo0A883eJ8BBb6lxZQ381wrWWcUJegsFBD3Xc+E3X5HIO+
 AusA==
X-Gm-Message-State: AOAM5317qdfQxZsozy0jxMC0qpZQWGbgBpLoiobcU083t5PAU5flWvCm
 SKcJiw9aqXv6YYJ8f+m7w6cNFu+Uf/uh7Qcqfpo=
X-Google-Smtp-Source: ABdhPJwDpXAdtq2BWrkbbFcS4rEJ6TQP6GK4YglRDW4qrqj+0WgIyXJz/2t5rDQl8yv8FHy71t/uUQ6HD/bc1bwV47o=
X-Received: by 2002:adf:f246:: with SMTP id b6mr26172437wrp.111.1605051634647; 
 Tue, 10 Nov 2020 15:40:34 -0800 (PST)
MIME-Version: 1.0
References: <20201110193112.988999-1-lee.jones@linaro.org>
 <20201110193112.988999-11-lee.jones@linaro.org>
In-Reply-To: <20201110193112.988999-11-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 18:40:20 -0500
Message-ID: <CADnq5_NRMtfiuVtORwQC0_3wwXG9N9Hx7BrmO-atOfAOM1qwwA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 10/30] drm/radeon/radeon_sync: Add
 description for function param 'rdev'
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

T24gVHVlLCBOb3YgMTAsIDIwMjAgYXQgMjozMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3N5bmMuYzo5Mjog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmRldicgbm90IGRlc2NyaWJl
ZCBpbiAncmFkZW9uX3N5bmNfcmVzdicKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVk
LW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBUaGFu
a3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMg
fCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fc3luYy5jCj4gaW5kZXggNTVjYzc3YTczYzdiNy4uNWQzMzAyOTQ1MDc2YiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKPiBAQCAtNzksNiArNzksNyBA
QCB2b2lkIHJhZGVvbl9zeW5jX2ZlbmNlKHN0cnVjdCByYWRlb25fc3luYyAqc3luYywKPiAgLyoq
Cj4gICAqIHJhZGVvbl9zeW5jX3Jlc3YgLSB1c2UgdGhlIHNlbWFwaG9yZXMgdG8gc3luYyB0byBh
IHJlc2VydmF0aW9uIG9iamVjdAo+ICAgKgo+ICsgKiBAcmRldjogcmFkZW9uX2RldmljZSBwb2lu
dGVyCj4gICAqIEBzeW5jOiBzeW5jIG9iamVjdCB0byBhZGQgZmVuY2VzIGZyb20gcmVzZXJ2YXRp
b24gb2JqZWN0IHRvCj4gICAqIEByZXN2OiByZXNlcnZhdGlvbiBvYmplY3Qgd2l0aCBlbWJlZGRl
ZCBmZW5jZQo+ICAgKiBAc2hhcmVkOiB0cnVlIGlmIHdlIHNob3VsZCBvbmx5IHN5bmMgdG8gdGhl
IGV4Y2x1c2l2ZSBmZW5jZQo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
