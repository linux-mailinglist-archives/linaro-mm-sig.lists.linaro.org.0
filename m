Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2557E231253
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jul 2020 21:18:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0BEB617ED
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jul 2020 19:18:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C508065FCE; Tue, 28 Jul 2020 19:18:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A31F961936;
	Tue, 28 Jul 2020 19:17:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D44E4617ED
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 19:17:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3F3461936; Tue, 28 Jul 2020 19:17:56 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id C2D55617ED
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 19:17:55 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k6so18501430oij.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jul 2020 12:17:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tsQ2Xj7AJ9j1QK6CR85sgGm7aJ0udfYN+K/GnPLpLbM=;
 b=tj7hKE9FFS6OU0+c0WkWQfoGmTrkar7Jn5aDpI7HDWgbBKSuUC/P8B0XW28pyAcTSI
 4upZaLs671955jc0soGjQ6QKoGC0YqM25yXx5xUvgo5Us10qVELIo75Wrix+RglqkmAd
 CxxnnMpCkPj6un3Vzs0feQOgDuRlMbihrHSHsgZX+LHrNSvXPx337tk+4RQ2LeZnWj9F
 HDd3LGwFTlnAkB2D+tuvf4e0AcJbrIy0T1Au3XeQT5C+uKX4d9sRutTLiKxt85E+uAzf
 YB1NXMA9lRAP2CmIfgWpBNUohB4WYCECFYEVF34XL0eWDk66NUgPPU41xC3QK950fN7y
 Nsig==
X-Gm-Message-State: AOAM531SdEUIf3Cb6ZVYmMxM9HpgoSKkZMgO0++S0wTAhVgpMjvaUmEt
 acoq7p0v79uVdhm26S3sHoL/kpK6p16x1oL9pfVT/+CK
X-Google-Smtp-Source: ABdhPJzG+EYMW8ZqVkQmWbz8HGmD3b012cHdzgtF5YTIcW8bgYYQxe6jtAovZ/LwvvmBrtV7DgJbflOpFiiLYO7ljsQ=
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr5015644oif.10.1595963875197; 
 Tue, 28 Jul 2020 12:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 28 Jul 2020 12:17:44 -0700
Message-ID: <CALAqxLXuJQOCXcpyWwyBFZGFK_dEgG0edEEf2=vOpAw6Ng8mBQ@mail.gmail.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christian Koenig <christian.koenig@amd.com>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Introduce
 dma_heap_add_cma() for non-default CMA heap
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

T24gVGh1LCBKdWwgMTYsIDIwMjAgYXQgNjoxMCBQTSBLdW5paGlrbyBIYXlhc2hpCjxoYXlhc2hp
Lmt1bmloaWtvQHNvY2lvbmV4dC5jb20+IHdyb3RlOgo+Cj4gQ3VycmVudCBkbWEtYnVmIGhlYXBz
IGNhbiBoYW5kbGUgb25seSBkZWZhdWx0IENNQS4gVGhpcyBpbnRyb2R1Y2VzCj4gZG1hX2hlYXBf
YWRkX2NtYSgpIGZ1bmN0aW9uIHRvIGF0dGFjaCBDTUEgaGVhcHMgdGhhdCBiZWxvbmdzIHRvIGEg
ZGV2aWNlLgo+Cj4gQXQgZmlyc3QsIHRoZSBkcml2ZXIgY2FsbHMgb2ZfcmVzZXJ2ZWRfbWVtX2Rl
dmljZV9pbml0KCkgdG8gc2V0Cj4gbWVtb3J5LXJlZ2lvbiBwcm9wZXJ0eSBhc3NvY2lhdGVkIHdp
dGggcmVzZXJ2ZWQtbWVtb3J5IGRlZmluZWQgYXMgQ01BCj4gdG8gdGhlIGRldmljZS4gQW5kIHdo
ZW4gdGhlIGRyaXZlciBjYWxscyB0aGlzIGRtYV9oZWFwX2FkZF9jbWEoKSwKPiB0aGUgQ01BIHdp
bGwgYmUgYWRkZWQgdG8gZG1hLWJ1ZiBoZWFwcy4KPgo+IEZvciBleGFtcGxlLCBwcmVwYXJlIENN
QSBub2RlIG5hbWVkICJsaW51eCxjbWFAMTAwMDAwMDAiIGFuZAo+IHNwZWNpZnkgdGhlIG5vZGUg
Zm9yIG1lbW9yeS1yZWdpb24gcHJvcGVydHkuIEFmdGVyIHRoZSBhYm92ZSBjYWxscwo+IGluIHRo
ZSBkcml2ZXIsIGEgZGV2aWNlIGZpbGUgIi9kZXYvZG1hX2hlYXAvbGludXgsY21hQDEwMDAwMDAw
Igo+IGFzc29jaWF0ZWQgd2l0aCB0aGUgQ01BIGJlY29tZSBhdmFpbGFibGUgYXMgZG1hLWJ1ZiBo
ZWFwcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEt1bmloaWtvIEhheWFzaGkgPGhheWFzaGkua3VuaWhp
a29Ac29jaW9uZXh0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFw
LmMgfCAxMiArKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oICAgICAgICAg
fCAgOSArKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCgpIZXkh
IFNvcnJ5IGZvciB0aGUgc2xvdyByZXNwb25zZSBvbiB0aGlzISBJIGp1c3QgcmVhbGl6ZWQgSSBu
ZXZlciByZXBsaWVkIQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9o
ZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYwo+IGluZGV4IDYyNmNmN2Yu
LjVkMjQ0MmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMK
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYwo+IEBAIC0xNjIsNiArMTYy
LDE4IEBAIHN0YXRpYyBpbnQgX19hZGRfY21hX2hlYXAoc3RydWN0IGNtYSAqY21hLCB2b2lkICpk
YXRhKQo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICsvKiBhZGQgZGV2aWNlIENNQSBoZWFw
IHRvIGRtYWJ1ZiBoZWFwcyAqLwo+ICtpbnQgZG1hX2hlYXBfYWRkX2NtYShzdHJ1Y3QgZGV2aWNl
ICpkZXYpCj4gK3sKPiArICAgICAgIHN0cnVjdCBjbWEgKmNtYSA9IGRldl9nZXRfY21hX2FyZWEo
ZGV2KTsKPiArCj4gKyAgICAgICBpZiAoIWNtYSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1F
Tk9NRU07Cj4gKwo+ICsgICAgICAgcmV0dXJuIF9fYWRkX2NtYV9oZWFwKGNtYSwgTlVMTCk7Cj4g
K30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2hlYXBfYWRkX2NtYSk7Cj4gKwo+ICBzdGF0aWMg
aW50IGFkZF9kZWZhdWx0X2NtYV9oZWFwKHZvaWQpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBjbWEg
KmRlZmF1bHRfY21hID0gZGV2X2dldF9jbWFfYXJlYShOVUxMKTsKPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtaGVhcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oCj4gaW5kZXgg
NDU0ZTM1NC4uMTZiZWM3ZCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgK
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgKPiBAQCAtNTYsNCArNTYsMTMgQEAgdm9p
ZCAqZG1hX2hlYXBfZ2V0X2RydmRhdGEoc3RydWN0IGRtYV9oZWFwICpoZWFwKTsKPiAgICovCj4g
IHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBv
cnRfaW5mbyAqZXhwX2luZm8pOwo+Cj4gKyNpZmRlZiBDT05GSUdfRE1BQlVGX0hFQVBTX0NNQQo+
ICsvKioKPiArICogZG1hX2hlYXBfYWRkX2NtYSAtIGFkZHMgYSBkZXZpY2UgQ01BIGhlYXAgdG8g
ZG1hYnVmIGhlYXBzCj4gKyAqIEBkZXY6ICAgICAgIGRldmljZSB3aXRoIGEgQ01BIGhlYXAgdG8g
cmVnaXN0ZXIKPiArICovCj4gK2ludCBkbWFfaGVhcF9hZGRfY21hKHN0cnVjdCBkZXZpY2UgKmRl
dik7Cj4gKwo+ICsjZW5kaWYgLyogQ09ORklHX0RNQUJVRl9IRUFQU19DTUEgKi8KPiArCj4gICNl
bmRpZiAvKiBfRE1BX0hFQVBTX0ggKi8KPiAtLQo+IDIuNy40CgpMb29rcyBzYW5lIHRvIG1lLiAg
QmVpbmcgYWJsZSB0byBleHBvc2UgZGlmZmVyZW50IG11bHRpcGxlIENNQSBoZWFwcwppcyBuZWVk
ZWQsIGFuZCBJIGFncmVlIHRoaXMgd2F5IChhcyBvcHBvc2VkIHRvIG15IGVhcmxpZXIgZHRzCmFw
cHJhb2NoKSBpcyBwcm9iYWJseSB0aGUgYmVzdCBhcHByb2FjaC4gVGhlIG9ubHkgYml0IEknbSBz
by1zbyBvbiBpcwphZGRpbmcgdGhlIENNQSBoZWFwIHNwZWNpZmljIGNhbGwgaW4gdGhlIGRtYS1o
ZWFwLmgsIGJ1dCBhdCB0aGUgc2FtZQp0aW1lIEkgY2FuJ3QganVzdGlmeSBhZGRpbmcgYSB3aG9s
ZSBuZXcgaGVhZGVyIGZvciBhIHNpbmdsZSBmdW5jdGlvbi4KCkRvIHlvdSBoYXZlIGEgdXBzdHJl
YW0gZHJpdmVyIHRoYXQgeW91IHBsYW4gdG8gbWFrZSB1c2UgdGhpcyBuZXcgY2FsbD8KV2Ugd2Fu
dCB0byBoYXZlIGluLXRyZWUgdXNlcnMgb2YgY29kZSBhZGRlZC4KCkJ1dCBpZiBzbywgZmVlbCBm
cmVlIHRvIGFkZCBteToKICBBY2tlZC1ieTogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFy
by5vcmc+ClRvIHRoaXMgcGF0Y2ggd2hlbiB5b3Ugc3VibWl0IHRoZSBkcml2ZXIgY2hhbmdlcy4K
CnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
