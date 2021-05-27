Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D47392610
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 May 2021 06:21:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69F8160BEB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 May 2021 04:21:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E3A3B60B55; Thu, 27 May 2021 04:21:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21D9E60A9E;
	Thu, 27 May 2021 04:21:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E635660A30
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 May 2021 04:21:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E407560A9E; Thu, 27 May 2021 04:21:09 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by lists.linaro.org (Postfix) with ESMTPS id DD0C060A30
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 May 2021 04:21:07 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id z3so3864684oib.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 21:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=g3ObGWoYw8A3770dDfoAtEJd60ASO6sSETw7hq7iaWw=;
 b=jOs3/1jJupOalzeebxv4XckU9+Uu9UMC/mX+6ifUQ46qaTC0M/5bL7tZkCX2UZYODu
 gjR2CFjIrySHfkeUdf+ZsLqMwxDhghv9UDS9xWD4ty/L+uvKlpL5QJj/3/4s5LSrQ9h7
 sFVXC2ofmcrknmIAPan0e+iYNqsedzQLW529FdHYzR4qTd8P4QgLA79XgLKjBzRTaeye
 aBKoFNWbmICiMVRKzbfHhPlzEEbcszXkGs06yOIDu3APuchNNjH+oNyK163+l3B054oD
 NcM7OTxUYYcXGsZJFF5U/Ei4n8382PwTqcEgQlnE3JQ96J57UyPGajV5tqIi0O8q2gLX
 Clsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=g3ObGWoYw8A3770dDfoAtEJd60ASO6sSETw7hq7iaWw=;
 b=ntacHG6X7V6XghaaFOsHDaMi9wN22iUlC5C4GmHOCse252hZcyvnU5x6ljNp/9MYgO
 BwNxS8qRrgTbCSckumOGoedYLrWxFwgC91wFgpz1jDWLf85PR8F2SYts1myAgKyZ0LfS
 8xQuQY6P43GIhnEXrd8e+eEwwrJSnYg7HtLRBhRXU25hqLivoxrx6puomSlovkHoQLkr
 0DepProunzR338NF86eK/IGxPNcw//f9Z1NtFaSGrP7fIDrsb+sH/SfldcYKMEdOk/+W
 oF+uqUA7LUWlNgL8xogm01K3YPvJfqvAluhDFQulRSCansQ38Jisd3wmiT8NvLcALa8u
 A/+A==
X-Gm-Message-State: AOAM532UvBDuq7mPV2RnfNaKM6B+iXYZun7JVAu0Ab9AbSl4x9qaj80X
 t/jj5YjEcqksJ++vR2IaUDAFhGXhjax2EQ3GTmQ=
X-Google-Smtp-Source: ABdhPJyz5ycopmTnjB2ZTxePhB77r9FoMwpQJutSgFKAIAc3x1USuW/E9yoOdo9oKVskhKra+DE3aZI7rmCir48ptR0=
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr1068439oiw.123.1622089267401; 
 Wed, 26 May 2021 21:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210526084726.552052-1-lee.jones@linaro.org>
 <20210526084726.552052-20-lee.jones@linaro.org>
In-Reply-To: <20210526084726.552052-20-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 27 May 2021 00:20:56 -0400
Message-ID: <CADnq5_NzewQQNd_JvZVKWibzJKL9GEQp9VD0qUZ4KdhJAmgY-Q@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 19/34] drm/amd/amdgpu/amdgpu_device:
 Make local function static
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

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFdlZCwgTWF5IDI2LCAyMDIxIGF0IDQ6NDggQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZGV2aWNlLmM6NDYyNDo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5
cGUgZm9yIOKAmGFtZGdwdV9kZXZpY2VfcmVjaGVja19ndWlsdHlfam9ic+KAmSBbLVdtaXNzaW5n
LXByb3RvdHlwZXNdCj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQu
Y29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
Cj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RldmljZS5jCj4gaW5kZXggNGEwNDBmODljYTVhYS4uZjE1ZTE4MDc2MmQyZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKPiBAQCAtNDY5
Miw3ICs0NjkyLDcgQEAgc3RhdGljIGludCBhbWRncHVfZGV2aWNlX3N1c3BlbmRfZGlzcGxheV9h
dWRpbyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikKPiAgICAgICAgIHJldHVybiAwOwo+ICB9
Cj4KPiAtdm9pZCBhbWRncHVfZGV2aWNlX3JlY2hlY2tfZ3VpbHR5X2pvYnMoCj4gK3N0YXRpYyB2
b2lkIGFtZGdwdV9kZXZpY2VfcmVjaGVja19ndWlsdHlfam9icygKPiAgICAgICAgIHN0cnVjdCBh
bWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgbGlzdF9oZWFkICpkZXZpY2VfbGlzdF9oYW5kbGUs
Cj4gICAgICAgICBzdHJ1Y3QgYW1kZ3B1X3Jlc2V0X2NvbnRleHQgKnJlc2V0X2NvbnRleHQpCj4g
IHsKPiAtLQo+IDIuMzEuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
