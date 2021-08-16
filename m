Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B65BF3EDFF0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 00:25:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FD9560AA5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 22:25:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 456F060A67; Mon, 16 Aug 2021 22:25:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF6FD6093A;
	Mon, 16 Aug 2021 22:25:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3065E608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 22:25:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2D3B76093A; Mon, 16 Aug 2021 22:25:34 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 24393608D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 22:25:32 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id v4so18557765wro.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 15:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3pjhlUQ9zfXp80LAsXsFddhwkDCjIr1Qa6F73Rea0zo=;
 b=R2kIByJ61EjHKTZg4V2rq3Z7W17o8o4uPxU/T0mj4fztjC60Yn60rkDWcP6k5wuKSe
 pOMwhNxGPeTTcHosG5mvzlvzBfVfTIHyPXfDsxEXaHQVkpwMLcYGdU7mN6+B5fozfxKM
 OTH8GlaS/Js2USbMgOBx7JPthoW4h6Jg5KbFr/zqgfT3gJo3klvwqM672rjTni4+6MPQ
 Dt45zNlkb5nWvdI7+NUwHYNQ+Vn9N9Qm02MZMN9j0YvET7t1EAtJYpGhxwPGK6d8b3SM
 uWIAl+1ZGvF9C4dlLBhDCS2JJiNaIhs9c+wVXkzk4Y2vrItPDVH8Ei36QF0oe7kdEHlS
 j7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3pjhlUQ9zfXp80LAsXsFddhwkDCjIr1Qa6F73Rea0zo=;
 b=qnLLBg3yP2qB7BSOUsLvBBCZzLP969megoFEu9ax2z7088WfB7/R5d3A8w/4T44cso
 e0kpamTGU+8h0sVvCWvvhcfN7NUknlYG15uMobrK2W0VcaGWKvcYjAJblVlvZK0eaF4n
 cS4A66MI45ezEkrrMDZgxFRqoyTaAsV25lYQmRsNXdAVkXKJ1IkKxfYwY8R+qXH32tTk
 osburvwv4YoYlOq/Wj/3/G5h4szkYrWTPJPc8anZfD7HTgrfPn0bi3ro7qk3pSKUBgzi
 M4SnN/MmdSH9nJfLlH3fLa8mWAm3jUYGh/uaFqfdyBktH+kZdpcETydMYPH2qFXc/MTJ
 eyrw==
X-Gm-Message-State: AOAM53215DZ3mnrMPcwUyV559rRrxLckPdjUWR9DNSjLw4oTsB8WXHjy
 YT0SPnh+7X/y8nkMZJLiNg4fKyUXY5GU98Dcda8=
X-Google-Smtp-Source: ABdhPJyNem4NbmX4zNKpNipu1Xbu257Pj4hM0/aydLtGI6NNqHWvdhzNERN5io39lCQQLYxin7sgkoaB45AFy8ihnhE=
X-Received: by 2002:adf:dd11:: with SMTP id a17mr312204wrm.132.1629152731183; 
 Mon, 16 Aug 2021 15:25:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210807183804.459850-1-robdclark@gmail.com>
 <9a7bdcb5-4f6f-539b-060e-d69ec15da874@amd.com>
In-Reply-To: <9a7bdcb5-4f6f-539b-060e-d69ec15da874@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 16 Aug 2021 15:29:49 -0700
Message-ID: <CAF6AEGuwmLXW0xiFGGLie6qiL_ryE47pTiNYxmwwyshrb7eDpQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2 0/5] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Clark <robdclark@chromium.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>, Steven Price <steven.price@arm.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

ZG1hX2ZlbmNlX2FycmF5IGxvb2tzIHNpbXBsZSBlbm91Z2gsIGp1c3QgcHJvcGFnYXRlIHRoZSBk
ZWFkbGluZSB0bwphbGwgY2hpbGRyZW4uCgpJIGd1ZXNzIGRtYV9mZW5jZV9jaGFpbiBpcyBzaW1p
bGFyIChpZS4gZmVuY2UgaXMgc2lnbmFsbGVkIHdoZW4gYWxsCmNoaWxkcmVuIGFyZSBzaWduYWxs
ZWQpLCB0aGUgZGlmZmVyZW5jZSBiZWluZyBzaW1wbHkgdGhhdCBjaGlsZHJlbiBhcmUKYWRkZWQg
ZHluYW1pY2FsbHk/CgpCUiwKLVIKCk9uIE1vbiwgQXVnIDE2LCAyMDIxIGF0IDM6MTcgQU0gQ2hy
aXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IFRoZSBn
ZW5lcmFsIGFwcHJvYWNoIHNlZW1zIHRvIG1ha2Ugc2Vuc2Ugbm93IEkgdGhpbmsuCj4KPiBPbmUg
bWlub3IgdGhpbmcgd2hpY2ggSSdtIG1pc3NpbmcgaXMgYWRkaW5nIHN1cHBvcnQgZm9yIHRoaXMg
dG8gdGhlCj4gZG1hX2ZlbmNlX2FycmF5IGFuZCBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVycy4K
Pgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4gQW0gMDcuMDguMjEgdW0gMjA6Mzcgc2Nocmll
YiBSb2IgQ2xhcms6Cj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+
Cj4gPgo+ID4gQmFzZWQgb24gZGlzY3Vzc2lvbiBmcm9tIGEgcHJldmlvdXMgc2VyaWVzWzFdIHRv
IGFkZCBhICJib29zdCIgbWVjaGFuaXNtCj4gPiB3aGVuLCBmb3IgZXhhbXBsZSwgdmJsYW5rIGRl
YWRsaW5lcyBhcmUgbWlzc2VkLiAgSW5zdGVhZCBvZiBhIGJvb3N0Cj4gPiBjYWxsYmFjaywgdGhp
cyBhcHByb2FjaCBhZGRzIGEgd2F5IHRvIHNldCBhIGRlYWRsaW5lIG9uIHRoZSBmZW5jZSwgYnkK
PiA+IHdoaWNoIHRoZSB3YWl0ZXIgd291bGQgbGlrZSB0byBzZWUgdGhlIGZlbmNlIHNpZ25hbGxl
ZC4KPiA+Cj4gPiBJJ3ZlIG5vdCB5ZXQgaGFkIGEgY2hhbmNlIHRvIHJlLXdvcmsgdGhlIGRybS9t
c20gcGFydCBvZiB0aGlzLCBidXQKPiA+IHdhbnRlZCB0byBzZW5kIHRoaXMgb3V0IGFzIGFuIFJG
QyBpbiBjYXNlIEkgZG9uJ3QgaGF2ZSBhIGNoYW5jZSB0bwo+ID4gZmluaXNoIHRoZSBkcm0vbXNt
IHBhcnQgdGhpcyB3ZWVrLgo+ID4KPiA+IE9yaWdpbmFsIGRlc2NyaXB0aW9uOgo+ID4KPiA+IElu
IHNvbWUgY2FzZXMsIGxpa2UgZG91YmxlLWJ1ZmZlcmVkIHJlbmRlcmluZywgbWlzc2luZyB2Ymxh
bmtzIGNhbgo+ID4gdHJpY2sgdGhlIEdQVSBpbnRvIHJ1bm5pbmcgYXQgYSBsb3dlciBmcmVxdWVu
Y2UsIHdoZW4gcmVhbGx5IHdlCj4gPiB3YW50IHRvIGJlIHJ1bm5pbmcgYXQgYSBoaWdoZXIgZnJl
cXVlbmN5IHRvIG5vdCBtaXNzIHRoZSB2YmxhbmtzCj4gPiBpbiB0aGUgZmlyc3QgcGxhY2UuCj4g
Pgo+ID4gVGhpcyBpcyBwYXJ0aWFsbHkgaW5zcGlyZWQgYnkgYSB0cmljayBpOTE1IGRvZXMsIGJ1
dCBpbXBsZW1lbnRlZAo+ID4gdmlhIGRtYS1mZW5jZSBmb3IgYSBjb3VwbGUgb2YgcmVhc29uczoK
PiA+Cj4gPiAxKSBUbyBjb250aW51ZSB0byBiZSBhYmxlIHRvIHVzZSB0aGUgYXRvbWljIGhlbHBl
cnMKPiA+IDIpIFRvIHN1cHBvcnQgY2FzZXMgd2hlcmUgZGlzcGxheSBhbmQgZ3B1IGFyZSBkaWZm
ZXJlbnQgZHJpdmVycwo+ID4KPiA+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzkwMzMxLwo+ID4KPiA+IHYxOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzkzMDM1Lwo+ID4gdjI6IE1vdmUgZmlsdGVyaW5nIG91dCBvZiBsYXRlciBk
ZWFkbGluZXMgdG8gZmVuY2UgaW1wbGVtZW50YXRpb24KPiA+ICAgICAgdG8gYXZvaWQgaW5jcmVh
c2luZyB0aGUgc2l6ZSBvZiBkbWFfZmVuY2UKPiA+Cj4gPiBSb2IgQ2xhcmsgKDUpOgo+ID4gICAg
ZG1hLWZlbmNlOiBBZGQgZGVhZGxpbmUgYXdhcmVuZXNzCj4gPiAgICBkcm0vdmJsYW5rOiBBZGQg
aGVscGVyIHRvIGdldCBuZXh0IHZibGFuayB0aW1lCj4gPiAgICBkcm0vYXRvbWljLWhlbHBlcjog
U2V0IGZlbmNlIGRlYWRsaW5lIGZvciB2YmxhbmsKPiA+ICAgIGRybS9zY2hlZHVsZXI6IEFkZCBm
ZW5jZSBkZWFkbGluZSBzdXBwb3J0Cj4gPiAgICBkcm0vbXNtOiBBZGQgZGVhZGxpbmUgYmFzZWQg
Ym9vc3Qgc3VwcG9ydAo+ID4KPiA+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAgICAg
ICAgICAgIHwgMjAgKysrKysrKwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxw
ZXIuYyAgICAgfCAzNiArKysrKysrKysrKysKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2RybV92Ymxh
bmsuYyAgICAgICAgICAgIHwgMzEgKysrKysrKysrKwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9mZW5jZS5jICAgICAgICAgfCA3NiArKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmggICAgICAgICB8IDIwICsrKysrKysKPiA+
ICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmggICAgICAgICAgIHwgIDEgKwo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVfZGV2ZnJlcS5jICAgfCAyMCArKysrKysrCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDI1ICsrKysrKysrCj4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jICB8ICAzICsKPiA+ICAg
aW5jbHVkZS9kcm0vZHJtX3ZibGFuay5oICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4gICBpbmNs
dWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAgICAgfCAgNiArKwo+ID4gICBpbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgICAgfCAxNiArKysrKysKPiA+ICAgMTIgZmls
ZXMgY2hhbmdlZCwgMjU1IGluc2VydGlvbnMoKykKPiA+Cj4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
