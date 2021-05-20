Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8053338B75D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:21:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 838026140D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:21:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7A4786137B; Thu, 20 May 2021 19:21:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D8266137E;
	Thu, 20 May 2021 19:21:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5415361376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:21:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FB946137E; Thu, 20 May 2021 19:21:03 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53])
 by lists.linaro.org (Postfix) with ESMTPS id 4A36C61376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:21:01 +0000 (UTC)
Received: by mail-oo1-f53.google.com with SMTP id
 v13-20020a4aa40d0000b02902052145a469so4039180ool.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jFT2vUjneyK4vqRQTSud440oIlDIOlBm9ntEGOINv5Y=;
 b=D/khYlkLs8eViqkgfzspKIJORMK1dqfOo1QORFPm78nkMtTSIa1UQj6LQt0fIE6ssK
 O9lGaXHlOXL0EV3fv5Y7a3jr8Zi4S3yLbWxTmBOLNyY0PZvYryPpLCycq/h5tkzT2HuY
 3jV0KhJ1nlMefUkBn7EhcQ3JcPl/mvqQg2LfwO2IHXEmlwsyszD2SCOp6Oxpo90sUv48
 07FSiNdFZFri7Qmk2zpc9QYfYxH+jElnevL3fMYQsO5uiR4P7O5gYqgVfynSMG3iWNAI
 ffhBH8v2gU5bqy03nFTAr4jH8Vf9/R3ruvrIfz59jVqo0gHklxN+Pv9gT1P4hByy4TNd
 rnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jFT2vUjneyK4vqRQTSud440oIlDIOlBm9ntEGOINv5Y=;
 b=C/5gnLiQnOFZEJ43P3JoapwoVfzL/l0+nt0X4rG25yY4aMWF7bqMGQ0QyM5E0DssFF
 PkE4HowOgvkNJ036oA7O863/hMge0n32AmGIu51fctkaFk/w4/HPT2MWN0/pK3AxQJXh
 9G69dP8d29EGdibCx0bPNUsj12m4UNWXhvyLHpjdzTlTgE9z3z/5GOecw3sn63jli7Zr
 MJMmQzEG5xp1CKahvsqRUUrGrqHMQN/8XRHf8z3PyhCaPB4iz6bZV/uSL0zWWAr7arwO
 Kq75JjPnOxd2Fk9+r5Cjp8etTY6pMzfavHwDYTgQJ9LPZmM5700NrUZuMZGVHW3QeVXx
 APNw==
X-Gm-Message-State: AOAM531FZw7BcsPaJq5Pb/pvAKM/j7PX1mK1huavufg6bJkMDBDB0l4Z
 +UqNRng4wjYb0o2OKLj1TqZCNPgfwB/BwMm3Bpc=
X-Google-Smtp-Source: ABdhPJwJQXId/bdVgc0jHCEOn9JarUKc13A1Cej/AgWqhMN32NoS8pW18t/ZaSTqNE9XaYPco1cgGarYCI/JzluP2as=
X-Received: by 2002:a4a:d543:: with SMTP id q3mr4945275oos.72.1621538460855;
 Thu, 20 May 2021 12:21:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-30-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-30-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:20:49 -0400
Message-ID: <CADnq5_PjnKC8qRMY7+TGfi2mpOXpiF-0bkm6VfB9+aqgi3bWmA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 29/38] drm/radeon/r100: Realign doc
 header with function 'r100_cs_packet_parse_vline()'
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

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDMgQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3IxMDAuYzoxNDIzOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciByMTAwX2NzX3Bh
Y2tldF9uZXh0X3ZsaW5lKCkuIFByb3RvdHlwZSB3YXMgZm9yIHIxMDBfY3NfcGFja2V0X3BhcnNl
X3ZsaW5lKCkgaW5zdGVhZAo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJA
YW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5
OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3IxMDAuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
MTAwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYwo+IGluZGV4IGZjZmNhZWMyNWE5
ZWYuLjNjNGU3YzE1ZmQxNTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
MTAwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYwo+IEBAIC0xNDA2LDcg
KzE0MDYsNyBAQCBpbnQgcjEwMF9jc19wYXJzZV9wYWNrZXQwKHN0cnVjdCByYWRlb25fY3NfcGFy
c2VyICpwLAo+ICB9Cj4KPiAgLyoqCj4gLSAqIHIxMDBfY3NfcGFja2V0X25leHRfdmxpbmUoKSAt
IHBhcnNlIHVzZXJzcGFjZSBWTElORSBwYWNrZXQKPiArICogcjEwMF9jc19wYWNrZXRfcGFyc2Vf
dmxpbmUoKSAtIHBhcnNlIHVzZXJzcGFjZSBWTElORSBwYWNrZXQKPiAgICogQHA6ICAgICAgICAg
cGFyc2VyIHN0cnVjdHVyZSBob2xkaW5nIHBhcnNpbmcgY29udGV4dC4KPiAgICoKPiAgICogVXNl
cnNwYWNlIHNlbmRzIGEgc3BlY2lhbCBzZXF1ZW5jZSBmb3IgVkxJTkUgd2FpdHMuCj4gLS0KPiAy
LjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
