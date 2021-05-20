Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DE438B70B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:16:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FAF8613F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:16:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2AF0261394; Thu, 20 May 2021 19:16:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E791F6131F;
	Thu, 20 May 2021 19:16:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6B7F16130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:16:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6942F6131F; Thu, 20 May 2021 19:16:13 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by lists.linaro.org (Postfix) with ESMTPS id 6161D6130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:16:11 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id c196so9229829oib.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8IA4EK6QCZUPS2VJM/CthWGQXD1VY0qEbTyCJO+YaKI=;
 b=IB7FUTa3Fm9U+stZPo8LH03erUcgUmfhx7Jry7EQ7Jtzc3Ac1SG4eaPkgQitM1UHr0
 jpEDSZeQG+skg4Dwxxv/gO/wLl867g1RwV0EN1QvM6I+Djtd7951uvKVrQnx7hOJfg+o
 miEzOj5wK5zSDduqudgNH7DiQDBvLljTQapNLDsAXmkfTZOF02r1LiNMkbwwlPnnVFIH
 VvXftcgZxL+5WaQrD86+D4UAPJ5Dp/4yu/z0PNs/LeQ8/NuzS0R31Fk8I68nEDKmDGjP
 5zohz3AsNpNBp5VfyqmlQ7bZTKU3kL7PcB/G5XVu3FrGbBJHk7ejRMG4qU8InVWmjbpW
 rw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8IA4EK6QCZUPS2VJM/CthWGQXD1VY0qEbTyCJO+YaKI=;
 b=LKqdIiufng7EfXsEZGiUtQL0uuuImZwKGLF8QkHNwBFU0opPIslfOvIBUnrA/GaEI9
 k1rDUAFv+dG2xvCH2Zow4WT98BfA0j1HylDo/Sq2haUsVw4ov+gV2REwGbCX3w6X8wkv
 uNLc9TSDLQvVHYH/o/+4EbgpBQREMCBqxhK4coHuc/k3K83hbg3aFZYj12CuvVglk6/k
 vEdKpXM9PtXlxZkP7q0VsasWPQs1uqpz69K/sJV57x2sRjQIUIaZaec1cgBSFYYuAF6H
 oQ9WP3YPefOI5bNaCCcQ9pd8/wMPWZeGyyBCiejJDn3spvliNocEqYAch+qrB2HQTxbA
 ETDg==
X-Gm-Message-State: AOAM533j+gyYcNtNm5UD9ujPQnb2ElHpeEtOtTdPcQ3A5/mQxYublce8
 x89ZaXW4fcQspcVBu40UK8Gy+nwV40O7SsQ8LDc=
X-Google-Smtp-Source: ABdhPJyjZJXNvUa5xHZWnGMQdRLZVinC4OBHnKgEG8wYkwieJ5ywWJUtdKBa3zvbFenStYoZkol8ak3wmyzA1Ffu+LI=
X-Received: by 2002:a05:6808:249:: with SMTP id
 m9mr4194241oie.120.1621538170961; 
 Thu, 20 May 2021 12:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-20-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-20-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:15:59 -0400
Message-ID: <CADnq5_OZR3qTX2hcDQyhgSGUyWAgCdUiJu3ODD_owJRip_RMOw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 19/38] drm/radeon/cik: Fix incorrectly
 named function 'cik_irq_suspend()'
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
L2Npay5jOjc0NTA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGNpa19pcnFfZGlz
YWJsZSgpLiBQcm90b3R5cGUgd2FzIGZvciBjaWtfaXJxX3N1c3BlbmQoKSBpbnN0ZWFkCj4KPiBD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgfCAyICst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cmFkZW9uL2Npay5jCj4gaW5kZXggNDJhOGFmYTgzOWNiYi4uNzNlYTUxODlkZmIxYSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9jaWsuYwo+IEBAIC03NDM5LDcgKzc0MzksNyBAQCBzdGF0aWMgdm9pZCBjaWtf
aXJxX2Rpc2FibGUoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpCj4gIH0KPgo+ICAvKioKPiAt
ICogY2lrX2lycV9kaXNhYmxlIC0gZGlzYWJsZSBpbnRlcnJ1cHRzIGZvciBzdXNwZW5kCj4gKyAq
IGNpa19pcnFfc3VzcGVuZCAtIGRpc2FibGUgaW50ZXJydXB0cyBmb3Igc3VzcGVuZAo+ICAgKgo+
ICAgKiBAcmRldjogcmFkZW9uX2RldmljZSBwb2ludGVyCj4gICAqCj4gLS0KPiAyLjMxLjEKPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
