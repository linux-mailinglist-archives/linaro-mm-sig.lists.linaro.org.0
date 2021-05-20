Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50438B775
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:24:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 235BE6140A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:24:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 15A9761423; Thu, 20 May 2021 19:24:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD59F61394;
	Thu, 20 May 2021 19:24:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E9EFC6137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:24:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E0F6361394; Thu, 20 May 2021 19:24:07 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id CA60C6137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:24:05 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 t10-20020a05683022eab0290304ed8bc759so15841994otc.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uDEsiQtbchmRIITN3UCJ9tWbvJK1S8JafoWC9Tf39fo=;
 b=cT527s+sufXiRjfevP2Z86/uo3kcGD/J3zfs21rZAvE9FxI/yXy4JxlWbMvo3xV8nw
 31J9i5dKdSOAY8W5i7n7sVEz/f45QGFodvdQ2PgvkF1O64CrRQ3LuSf7N8zMu4nU5bmd
 dPksVTTUuwMI9AaXqhPaWyFaaf/U5KkmA2c/sKtwJB3uQDoYEKf39Oq4ks//qmm7Bg3M
 mzcyotkXXBQBsJDlz72MxszK2dLyM+zdIfVTREUOyfRIEoYKUV991fUHX6XB2gD8qVpp
 s3EIUQpeY3jMSwMKdj5lwwbAgFDIq3vwDq8hYHKLM14ibVCSYstqzQKIFjZYvWLxL0Qk
 Wi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uDEsiQtbchmRIITN3UCJ9tWbvJK1S8JafoWC9Tf39fo=;
 b=GxYIXnjb5biOXRGumDj3XQLgTVwWkJ6JgMelJMGNEWqvcOJAX1qgpU0jgYwjGvZvx/
 Ue+qZnp6knSEiBavNNqyThndfX7fvi7POwA4RfpF1QEJMwOdYviG6G0ZU4HRrStcgqqR
 BYGHlYHl0QMJJOExafesfPmFDWDirbF2mrgSsIbn3YQvStZ2Pjox+yYSAA3w8Qi84DnM
 oeX5Y1KzJlaeB2NQ8ZSmU4LNSvF+Let4Zc1yZyT55FBHWk2yQvunJYKA9qZB65WQDETE
 MXZhs7MW8FL5wfq0Jqzb4TvTLyklAS5ibTNnmJYwoIYQedhZTEOsg8Tv2cW0/9PxoRQb
 aFbA==
X-Gm-Message-State: AOAM530Dt7eEeXObo2i1lSneqMITLPTwtR8p4ix2sk+93KJtf2PqncOD
 jB9PcFPf64iWLtileAbE50/1z5nlLNVVkmrdans=
X-Google-Smtp-Source: ABdhPJyzye1K6JHvOg90QPOZBsYe6gdLyPfrjFwT1au75ov5XHlqzFhSAKtHadiPVsL4JEI9JtvR32tUOIE95DLglKc=
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr5126794oti.23.1621538645387; 
 Thu, 20 May 2021 12:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-34-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-34-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:23:54 -0400
Message-ID: <CADnq5_N-V0uGfGtwTQGhQrT+ex7jG0t3ipu4+EBxzAEq6m_Jug@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 33/38] drm/amd/amdgpu/sdma_v5_0: Fix
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
ZGdwdS9zZG1hX3Y1XzAuYzo1NjM6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNk
bWFfdl8wX2N0eF9zd2l0Y2hfZW5hYmxlKCkuIFByb3RvdHlwZSB3YXMgZm9yIHNkbWFfdjVfMF9j
dHhfc3dpdGNoX2VuYWJsZSgpIGluc3RlYWQKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRl
ci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8wLmMgfCAyICstCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvc2RtYV92NV8wLmMKPiBpbmRleCA3NWQ3MzEwZjg0MzkyLi4yYTJiOWQ1MGFmYjcwIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NV8wLmMKPiBAQCAtNTcxLDcgKzU3
MSw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjVfMF9ybGNfc3RvcChzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldikKPiAgfQo+Cj4gIC8qKgo+IC0gKiBzZG1hX3ZfMF9jdHhfc3dpdGNoX2VuYWJsZSAt
IHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQgc3dpdGNoCj4gKyAqIHNkbWFfdjVf
MF9jdHhfc3dpdGNoX2VuYWJsZSAtIHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzIGNvbnRleHQg
c3dpdGNoCj4gICAqCj4gICAqIEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIKPiAgICogQGVu
YWJsZTogZW5hYmxlL2Rpc2FibGUgdGhlIERNQSBNRXMgY29udGV4dCBzd2l0Y2guCj4gLS0KPiAy
LjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
