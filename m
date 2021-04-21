Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9233662C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 02:01:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9331667BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 00:01:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9B50266852; Wed, 21 Apr 2021 00:01:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 929886684D;
	Wed, 21 Apr 2021 00:00:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E8E0366838
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:00:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DAC3E6684F; Wed, 21 Apr 2021 00:00:43 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id 6A9F36684D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:00:40 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 i26-20020a9d625a0000b02902a2119f7613so634893otk.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 17:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=e9+TAg/KoUWsa99Vc8OUos6cMxUG+phWDsMLGP3+C+w=;
 b=pu8WsCDX4+lcrTSlI2SqIVnKLrQ+grNGVzpiySrXWZM3NGqDHE9MnTsvWvlkL/LIFw
 5l9SsIYSUk0f7eUXFDSjfLEI+du0Sh1xFolVlWV6iQcjcfOj40T+AodIK4hnDTBfKCdz
 lr9qOgjNhLfOdyQg/ScKR313C+aeqommGlDhaG6GQLHI6d8yIFKEX5vb9dS/O1vCVMxA
 ZVxd1jsCy9X8BSicHdwZAQBZb74g6dnkll4sIymgqV2l50E3daV1anWKIx59o9MJYjEQ
 wfP3cXCH2aQgo7QyPOrHtpw4PZ2n11eDeUvqTLKnHlmn1GG+JQnEfB/aIIeWCfoicc3g
 qetw==
X-Gm-Message-State: AOAM531eiDsXGrmchH/K3lQmjJcf0uK4FbAa9pdICpvZznTqg7a4BOdE
 88iyqOICFy8xsjVUdlZ8R9PJA68JOWAYgxKqZKLG4+pX5Alqsg==
X-Google-Smtp-Source: ABdhPJymGN8we/4AVICoWFYllwCiQQt06X+J/UkA1Epkav0/XCuFSaiNnmHrehyuBajDCyPXswh2i+Wd9a8SJ9lTrgw=
X-Received: by 2002:a05:6830:1f12:: with SMTP id
 u18mr14249635otg.132.1618963240005; 
 Tue, 20 Apr 2021 17:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-33-lee.jones@linaro.org>
 <eecd70a6-eb05-ea13-e9ca-c0d989f2210b@amd.com>
In-Reply-To: <eecd70a6-eb05-ea13-e9ca-c0d989f2210b@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 20:00:29 -0400
Message-ID: <CADnq5_MqY6qcv97vncaLX_a0r_JBDTxrfkw=cAcHFXH10QEL0A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Lee Jones <lee.jones@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 32/40] drm/amd/amdgpu/amdgpu_ttm: Fix
 incorrectly documented function 'amdgpu_ttm_copy_mem_to_mem()'
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIEZyaSwgQXByIDE2LCAyMDIxIGF0IDExOjUzIEFN
IENocmlzdGlhbiBLw7ZuaWcKPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBB
bSAxNi4wNC4yMSB1bSAxNjozNyBzY2hyaWViIExlZSBKb25lczoKPiA+IEZpeGVzIHRoZSBmb2xs
b3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOgo+ID4KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jOjMxMTogd2FybmluZzogZXhwZWN0aW5nIHByb3Rv
dHlwZSBmb3IgYW1kZ3B1X2NvcHlfdHRtX21lbV90b19tZW0oKS4gUHJvdG90eXBlIHdhcyBmb3Ig
YW1kZ3B1X3R0bV9jb3B5X21lbV90b19tZW0oKSBpbnN0ZWFkCj4gPgo+ID4gQ2M6IEFsZXggRGV1
Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxp
ZWRAbGludXguaWU+Cj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+ID4g
Q2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiBDYzogSmVyb21l
IEdsaXNzZSA8Z2xpc3NlQGZyZWVkZXNrdG9wLm9yZz4KPiA+IENjOiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+Cj4KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3R0bS5jIHwgMiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0
bS5jCj4gPiBpbmRleCAzYmVmMDQzMmNhYzJmLi44NTkzMTRjMGQ2YTM5IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPiA+IEBAIC0yODgsNyArMjg4LDcg
QEAgc3RhdGljIGludCBhbWRncHVfdHRtX21hcF9idWZmZXIoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibywKPiA+ICAgfQo+ID4KPiA+ICAgLyoqCj4gPiAtICogYW1kZ3B1X2NvcHlfdHRtX21l
bV90b19tZW0gLSBIZWxwZXIgZnVuY3Rpb24gZm9yIGNvcHkKPiA+ICsgKiBhbWRncHVfdHRtX2Nv
cHlfbWVtX3RvX21lbSAtIEhlbHBlciBmdW5jdGlvbiBmb3IgY29weQo+ID4gICAgKiBAYWRldjog
YW1kZ3B1IGRldmljZQo+ID4gICAgKiBAc3JjOiBidWZmZXIvYWRkcmVzcyB3aGVyZSB0byByZWFk
IGZyb20KPiA+ICAgICogQGRzdDogYnVmZmVyL2FkZHJlc3Mgd2hlcmUgdG8gd3JpdGUgdG8KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRl
dmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
