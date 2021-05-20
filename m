Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9DD38B773
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:23:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5FBC61441
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:23:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9B65761439; Thu, 20 May 2021 19:23:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CDB061394;
	Thu, 20 May 2021 19:23:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B26D96137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:23:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AE95161394; Thu, 20 May 2021 19:23:33 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by lists.linaro.org (Postfix) with ESMTPS id A0A196137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:23:31 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id d21so17409031oic.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k8jbqnkIhb6Scb2ilNgSqrLUoD8EKnp1ewooO1thaYY=;
 b=ky35ahVtuQfQMvjOeiiTTPbXaYneyr4RFONeMzlHZyexsj5rX8XhdDpXsJiz3dYVul
 wYEKc3B8k42wdypOpMotQdOBiW6RXqUf466s1oEBZQU6IkBUzqApaFH279BKcODv9hry
 PkF70uZo9+I53o7qHAZUR34SlhlZoBHznh7PXCQFdZ4P27ZO3q0mS1oAkkk6diq9K7wA
 H0TVgKnJXqieJQMfk5bah0AGLFSycfWfD1VdIj7QrdhLZc3kUcsgrJHYSJ5WnDM3V1ln
 buTBOgiEZaYLxzGvxv+fah+PD2XV36vh3/drhElt98f6HpQPL7x3i7dthMbIZ7mDX0/o
 QpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k8jbqnkIhb6Scb2ilNgSqrLUoD8EKnp1ewooO1thaYY=;
 b=nIEk65eb5+477NEHwrGTztsNGHym/BUllqIMmZGy0ihR2h21Zt3nnf97rFwkQKlCzF
 X/MBJvCn25UsQKmU/Yb3/+gludvXUF9+NUHjn5s61AHTPniyPXqZMzNnLt/nOlwPsxN0
 BGB2PhKumG4Qfr+kjoy7oad0r06FnE95hoPIdXgZ4EmUeFA5VcuBNoH10BDFB2KncO3F
 m2cvep3NEnjhRSTo4FXRnpLwrqA3hqMh5DwkZdRTqVWzKWeEApYuA306nKOb2OiKAMm6
 UKuZvcrqJSpH8m0o44SUlOAnapuHLKPPj6cz+XXwCdFnRVo7BYv/Tt+zi1Fyb9jqhZF4
 sNOg==
X-Gm-Message-State: AOAM531u4ZfoMUXyD+IHqFNgqLy44aXGjoOsu36AKsAOpGH1O6TdQ9SP
 z/6U+ZCE/eD2tfvBYTSR7TZ9hLzHI3npBtoUQtE=
X-Google-Smtp-Source: ABdhPJy+NQtM83k5lhJDRCaPOOpyGysTMYGPd3KkfE/RldWsZC16fzPXRl9aFd4m2P2dyrXamOmLBaNBTAo1U4tUMGA=
X-Received: by 2002:a05:6808:249:: with SMTP id
 m9mr4210776oie.120.1621538611248; 
 Thu, 20 May 2021 12:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-33-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-33-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:23:20 -0400
Message-ID: <CADnq5_OMyd3JpAhjAsBmZGCNTqWTV4ZSOcvTv6jJCAokBg0y=Q@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 32/38] drm/amd/amdgpu/sdma_v4_0: Realign
 functions with their headers
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
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9zZG1hX3Y0XzAuYzo3NjQ6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNk
bWFfdjRfMF9wYWdlX3Jpbmdfc2V0X3dwdHIoKS4gUHJvdG90eXBlIHdhcyBmb3Igc2RtYV92NF8w
X3Jpbmdfc2V0X3dwdHIoKSBpbnN0ZWFkCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3Nk
bWFfdjRfMC5jOjgzMDogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3Igc2RtYV92NF8w
X3Jpbmdfc2V0X3dwdHIoKS4gUHJvdG90eXBlIHdhcyBmb3Igc2RtYV92NF8wX3BhZ2VfcmluZ19z
ZXRfd3B0cigpIGluc3RlYWQKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVy
QGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvc2RtYV92NF8wLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y0XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L3NkbWFfdjRfMC5jCj4gaW5kZXggZDE5NzE4NWY3Nzg5MC4uYWU1NDY0ZTI1MzVhOCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y0XzAuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfMC5jCj4gQEAgLTc1NCw3ICs3NTQsNyBA
QCBzdGF0aWMgdWludDY0X3Qgc2RtYV92NF8wX3JpbmdfZ2V0X3dwdHIoc3RydWN0IGFtZGdwdV9y
aW5nICpyaW5nKQo+ICB9Cj4KPiAgLyoqCj4gLSAqIHNkbWFfdjRfMF9wYWdlX3Jpbmdfc2V0X3dw
dHIgLSBjb21taXQgdGhlIHdyaXRlIHBvaW50ZXIKPiArICogc2RtYV92NF8wX3Jpbmdfc2V0X3dw
dHIgLSBjb21taXQgdGhlIHdyaXRlIHBvaW50ZXIKPiAgICoKPiAgICogQHJpbmc6IGFtZGdwdSBy
aW5nIHBvaW50ZXIKPiAgICoKPiBAQCAtODIwLDcgKzgyMCw3IEBAIHN0YXRpYyB1aW50NjRfdCBz
ZG1hX3Y0XzBfcGFnZV9yaW5nX2dldF93cHRyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZykKPiAg
fQo+Cj4gIC8qKgo+IC0gKiBzZG1hX3Y0XzBfcmluZ19zZXRfd3B0ciAtIGNvbW1pdCB0aGUgd3Jp
dGUgcG9pbnRlcgo+ICsgKiBzZG1hX3Y0XzBfcGFnZV9yaW5nX3NldF93cHRyIC0gY29tbWl0IHRo
ZSB3cml0ZSBwb2ludGVyCj4gICAqCj4gICAqIEByaW5nOiBhbWRncHUgcmluZyBwb2ludGVyCj4g
ICAqCj4gLS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
