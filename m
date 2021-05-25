Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF73905A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 17:39:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5458460AEE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 15:39:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BEAA60BF0; Tue, 25 May 2021 15:39:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B03160ADB;
	Tue, 25 May 2021 15:39:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D648760A6A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 15:39:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CC11760ADB; Tue, 25 May 2021 15:39:00 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by lists.linaro.org (Postfix) with ESMTPS id C226F60A6A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 15:38:58 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id
 u25-20020a0568302319b02902ac3d54c25eso29029783ote.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 08:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=G29C7319Dv2jp3aawArMwM12C1t7ygPQnrD+x7K3emo=;
 b=KU7xaHHWx+wjYxjyiCHaCZEWUPHeUexy/WMEsPCmjL8AAcOY6Vq2QpeGYW0xF87Ll7
 q261c+N8lKPgZf/XwQ7j7x3C6Qa6A12CgzAe3UzfA2ubPMbkB1zFND9rE4wuz9ScI9+J
 agYywA53hAc2mlCHM4WT2j/Y1/8PaTyCaXJMDwnj9xHnIl/jxyOV6TuuFx1Vk6Z+b0nz
 l/ha/d3NccEWuIY09x7gkQPjt9pmGPRYLH+KxlE2+Z6ZSQqlYUIedi/QPpWaGTKOTfqO
 S+AvIR8SGj09nK1ODGEOX5JoJS05lrzwrYIAvbnJAF6ZkmkyKm18LulSYjCIKAWTsTT3
 jkiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G29C7319Dv2jp3aawArMwM12C1t7ygPQnrD+x7K3emo=;
 b=SwTVPSK0ZW4GngjGeL99ITJRtp4tjBfq7fKMfbyeyjLX8Lr6Mn3cQP/LmOYZDLQX9V
 EZU6OISBAAfNC+UpcOrIbSop47fhOcbuVhRX00N5VxUoQX1Expzo+atXKeTVt0WGzZlB
 kgUh9ZlDJw22iyZYiTlR78kQR3fdfsCi3zJURH99hM/6Zw0d1nuI5MGAhE2mJDpZDeCL
 V3TVmrsUOVe+MoD44gCmteDK96XtPP9QRxRNlt982YygEXQdAa6ie7Pew5QQikAgQOdR
 N/rasyOluLDhovb5uYk/D03IqXzJhtmsRHVZ0Jwm7rATnshd5f3PObld9Qy3J2QAAfsI
 tyQw==
X-Gm-Message-State: AOAM533j4AxbB83fQIqgI7kOHLcwyilM3bazlChbJUInMbYB8iIf1MTI
 cqtvICAa4Sh28Hu9Q0iAoOkOJp7VjX4gdCrix+I=
X-Google-Smtp-Source: ABdhPJyGNsx4a/dIqRXAcEEjQuHqAgdTAML8/MtCbrWA0+YY4Kkwm24gxdVHMVAyL+bFEaY7hRXemO0XzttpEfnPt+s=
X-Received: by 2002:a9d:74c6:: with SMTP id a6mr24158328otl.132.1621957138307; 
 Tue, 25 May 2021 08:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <1621853213-55876-1-git-send-email-jiapeng.chong@linux.alibaba.com>
 <CADnq5_N3WkoYHcn8b1-qZ23+t=E9xxV5fV_1Lwqck6x2dUPqmA@mail.gmail.com>
 <950d5d2a-c01f-35d4-0933-04cae2c4984d@gmail.com>
In-Reply-To: <950d5d2a-c01f-35d4-0933-04cae2c4984d@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 25 May 2021 11:38:47 -0400
Message-ID: <CADnq5_PgmZMTOKGSt29_MkonMaf5exgBy1VUgHyd14dKT+_13A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: remove unreachable code
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBNYXkgMjUsIDIwMjEgYXQgMTE6MjcgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQW0gMjQuMDUuMjEgdW0gMjA6
NDggc2NocmllYiBBbGV4IERldWNoZXI6Cj4gPiBBcHBsaWVkLiAgVGhhbmtzIQo+Cj4gT2ssIHRo
YXQncyB1bmZvcnR1bmF0ZS4KPgo+IElJUkMgd2UgYWRkZWQgdGhlIGNvZGUgYmVjYXVzZSBvZiBh
IGRpZmZlcmVudCBjb21waWxlciB3YXJuaW5nLgo+CgpJIGNhbiByZXZlcnQgaXQuCgpBbGV4Cgo+
IENocmlzdGlhbi4KPgo+ID4KPiA+IEFsZXgKPiA+Cj4gPiBPbiBNb24sIE1heSAyNCwgMjAyMSBh
dCA2OjQ3IEFNIEppYXBlbmcgQ2hvbmcKPiA+IDxqaWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEu
Y29tPiB3cm90ZToKPiA+PiBJbiB0aGUgZnVuY3Rpb24gYW1kZ3B1X3V2ZF9jc19tc2coKSwgZXZl
cnkgYnJhbmNoIGluIHRoZSBzd2l0Y2gKPiA+PiBzdGF0ZW1lbnQgd2lsbCBoYXZlIGEgcmV0dXJu
LCBzbyB0aGUgY29kZSBiZWxvdyB0aGUgc3dpdGNoIHN0YXRlbWVudAo+ID4+IHdpbGwgbm90IGJl
IGV4ZWN1dGVkLgo+ID4+Cj4gPj4gRWxpbWluYXRlIHRoZSBmb2xsb3cgc21hdGNoIHdhcm5pbmc6
Cj4gPj4KPiA+PiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXZkLmM6ODQ1IGFt
ZGdwdV91dmRfY3NfbXNnKCkgd2FybjoKPiA+PiBpZ25vcmluZyB1bnJlYWNoYWJsZSBjb2RlLgo+
ID4+Cj4gPj4gUmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90IDxhYmFjaUBsaW51eC5hbGliYWJhLmNv
bT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxqaWFwZW5nLmNob25nQGxpbnV4
LmFsaWJhYmEuY29tPgo+ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3V2ZC5jIHwgMiAtLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0p
Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3V2ZC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3V2ZC5jCj4gPj4gaW5k
ZXggODJmMDU0Mi4uMzc1YjM0NiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdXZkLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdXZkLmMKPiA+PiBAQCAtODQyLDggKzg0Miw2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X3V2ZF9jc19tc2coc3RydWN0IGFtZGdwdV91dmRfY3NfY3R4ICpjdHgsCj4gPj4gICAgICAgICAg
ICAgICAgICBEUk1fRVJST1IoIklsbGVnYWwgVVZEIG1lc3NhZ2UgdHlwZSAoJWQpIVxuIiwgbXNn
X3R5cGUpOwo+ID4+ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPj4gICAgICAg
ICAgfQo+ID4+IC0gICAgICAgQlVHKCk7Cj4gPj4gLSAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+
PiAgIH0KPiA+Pgo+ID4+ICAgLyoqCj4gPj4gLS0KPiA+PiAxLjguMy4xCj4gPj4KPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBhbWQtZ2Z4IG1h
aWxpbmcgbGlzdAo+ID4gYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeAo+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
