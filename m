Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 530FF38B77F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:25:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FAB261401
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:25:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 507396138C; Thu, 20 May 2021 19:25:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D6B661394;
	Thu, 20 May 2021 19:25:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C85826137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:25:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C473F61394; Thu, 20 May 2021 19:25:06 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id BD0296137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:25:04 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id j75so17402562oih.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lVeE6IXTSZq52YIMiJlL2kagzPEUqCZI6X+G12sjjFk=;
 b=NppzDjpIoyI0AJgaBtwTYOMbeW6j7IM2/FKF5wmpjpVAf4XOhG1i+aZmXpKAYWmrEZ
 QWZu3sRp244vQJASQrXoVgkbhZuCUAaCF6K7KeYAl3q3jfA6FFjH+Iov8R72ZT+bT+np
 xHilSrgDF4womkZkKuDJEbZwxHL6nvz/aBrqYIdcJUuue2K+fqt4216E4zwAsVwffm9N
 0HNP7n+XXlKXVG8UjfrGU6/bH+2Jw2Sl7hjQw7Y6fhmOJz0Vms9S9GCRJEvOQ1MP2/bp
 sYANxZ5PRJ4jVNRVha7NGZFm9xcZ3PDPiOo/1nhCvjvP9Bq0yA9qx27hNa2Nm3usoL4e
 SsjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lVeE6IXTSZq52YIMiJlL2kagzPEUqCZI6X+G12sjjFk=;
 b=SMyQT/su+yus5B2iCPEn6NOeEnLHrtaWVvfS0g8gmnglA4SQ51TRu/txo/JTZZAm2b
 dBHyT/qj8vHDrMSl+vnU7d8x20suZ9NqoM5PkyPWC0XPfrmL4NZ5y+zlvTi9UbVsfUIN
 4x6O92Uya5qwj8iza4Un6qOeFSRlPNBtBjOqOziQnVwXFUodmQwQyxJ0bIBq5z0dC3/t
 NWVVgjS19zfhR8plImH3vCR0C5MolfrYGgRQXjNZinufasRLjsZRXQvHykc7b3J/q7J1
 v5ahY8dqQBWuIsM55jH2i4qSIprHMLM7UCs8zmv0KmoqNFluWEzr7RV9LNmvVzX4WivZ
 NMOw==
X-Gm-Message-State: AOAM5317sjBrgOqoJQW/tBOdo3V0yA9sgqE6QAxNnNI0u0zNxNlYDqP9
 2Sh+Mg2iuT1KvLUZqnH2rEy7BnFZ5ZZspDNCu+I=
X-Google-Smtp-Source: ABdhPJwUTj/6hABxGzsumBBPCdBSvbVvUey+E+MnywXwN4uKu+7momw2GO2WmgYigcRZgt26sng4UQTTieCnXeyCtKo=
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr2494803oiw.123.1621538704376; 
 Thu, 20 May 2021 12:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-36-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-36-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:24:53 -0400
Message-ID: <CADnq5_Pk9ez0e46DD=zZzUOnORh6JX1QCow7hCZvT-UucwJ9Tg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 35/38] drm/amd/amdgpu/sdma_v5_2: Repair
 typo in function name
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9zZG1hX3Y1XzIuYzo1MDE6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNk
bWFfdl8wX2N0eF9zd2l0Y2hfZW5hYmxlKCkuIFByb3RvdHlwZSB3YXMgZm9yIHNkbWFfdjVfMl9j
dHhfc3dpdGNoX2VuYWJsZSgpIGluc3RlYWQKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRl
ci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmMgfCAyICstCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvc2RtYV92NV8yLmMKPiBpbmRleCBlY2I4MmMzOWIxMDYyLi5kZWI5MDdmOTYwOTA2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMi5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8yLmMKPiBAQCAtNTE3LDcgKzUx
Nyw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjVfMl9ybGNfc3RvcChzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldikKPiAgfQo+Cj4gIC8qKgo+IC0gKiBzZG1hX3ZfMF9jdHhfc3dpdGNoX2VuYWJsZSAt
IHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQgc3dpdGNoCj4gKyAqIHNkbWFfdjVf
Ml9jdHhfc3dpdGNoX2VuYWJsZSAtIHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQg
c3dpdGNoCj4gICAqCj4gICAqIEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIKPiAgICogQGVu
YWJsZTogZW5hYmxlL2Rpc2FibGUgdGhlIERNQSBNRXMgY29udGV4dCBzd2l0Y2guCj4gLS0KPiAy
LjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
