Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id du5mHBNhPWrt2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E52CF6C7B97
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="G/odx3uZ";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10F8E44965
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:10:42 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lists.linaro.org (Postfix) with ESMTPS id E03B2401CC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 09:07:13 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-806c225f4d3so20068817b3.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 02:07:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782378433; cv=none;
        d=google.com; s=arc-20260327;
        b=gB7+dECr+jNkX9eySPi76kOZQ8A2Hm5wuKrZm1PUmUM3kd0se2/dhgxGkbnl+FuLXL
         Te3SBn/E/ccP/RurwRPkOBhRvwKsR8Yiw92OoTQ97v+d759FGNEWahMZr1kut6UU0s7F
         FDHplUYhjhAV+3hHQthg+xTlffJZukO7ruF7iCESxPvvp/HXxxfm5Q0FfuR/6eq32keE
         mePm7ltCKeVWTD3QuJH/+1RT05hKPy68gEWDrQJwBxe0XRTv5yPDASgfsVMxnU2gpuDF
         G59nnw6OVejwrKbJKhEJ3IeA+mjXYMqol2Qn2Khb5cvd077+os46HdmHELiHbd8d+b+Q
         2mGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:references:in-reply-to:dkim-signature;
        bh=NxMnKEtRmutvBESglMehXusUK7HyhLRrYQtbmHJavXY=;
        fh=1YnvMpKyNMvmWedQmbkzx7vPpeq9unYrdFqLGoeiJDw=;
        b=F9jESA22y9+s/q2elOffXSa5lCNyTPFZxRdZ7owfJBRGtToN9TFUB6v5vTxyTEHR7+
         xq8fTvCnWx95GEzVToitFLk1SmUntDlqUwyWFYFuqqNSoifOgOVagrhSNEzWsOHl4Snc
         4PmH3wHuPZznV8MEzZ/zt1rWSf6Btlu5kRYk2msUhuN5tKE7zU+TbTdtBuPCi+xB+xtY
         LzCChtLoIOZeBokEkPfzeCRtiSmmD+eX26vHOtEC7+VVcgfmhRqjVt1LGwd+f+GSZMEw
         dz5igY+G49uQXjzNX2FCaQSYlTuK//SL55CndVfh+K3iE7ol89/aFsC44QMLEsJN/474
         k4Pg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782378433; x=1782983233; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:references:in-reply-to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxMnKEtRmutvBESglMehXusUK7HyhLRrYQtbmHJavXY=;
        b=G/odx3uZOGOOnE0VO7v1o/DiPUJuAEVuaDVuWgE+eD99ta2uV5Y1n5Mbzmh68m4Rlm
         XZwUngKv5s3GwznMy6OgOqbvu27PiL3AdH7g6GQDV7WRXMHjGrT9dOBFZ3cI+TB9oh9r
         nbQnvYh/bfOFlyC4m7GjVX9ZVsa2JN4roh86vROAF7+5oofz/u2MKzo2JixdkhAAY4Jg
         MWW8iqM4Qi+U+CSNOH9jva4p5RmpJvUrM+9Wmjt2rqjmsW2apNpu0pF2gBWiNh3cVeMw
         7EoU9zDr+C3ZRNURKX8kig8z5Dcki8rtcLqCx+LHmY67H5Af6LiFYb4k8MYiDqeeK9qy
         gZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782378433; x=1782983233;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:references:in-reply-to:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NxMnKEtRmutvBESglMehXusUK7HyhLRrYQtbmHJavXY=;
        b=im4t8zOTxkstveFwEwM/h7X+KCKkutfYfdutvaB3AH4iwmklSnbPxgC5OQ2D49Cd10
         1he6OfsRE6ygGbOHvoLZ0z/92yykSOvGF+33hBISnUSD39JMEALjcdCtJbBjCJKNgg2D
         E3bOIC6kMXAW57MwCiNOKMO/Wx+fqNs438E0DStF6/VnNR84U7ieuv06n1r9J5EB8zpr
         Ig8GjRd6F/e5FpPi4rszG5ZoIaKCbLO0O58W5tafk9Fbeohteo+KlL+REkw4KV2+RFDc
         b09jDypZavPhs8ExdSu5c+ihfblum3V6Q1WlRS8eMQrh+3DY216j/QkMK0tTkXSbgIjf
         j/5g==
X-Forwarded-Encrypted: i=1; AHgh+RrkPVK/EF4/Tf8BzKM3M+HAfMzXf7h1utc9+IVD/bwUM7ZrNR3gbHETunjbfkKZy4Gs7z0zvMGbMVs/i6sl@lists.linaro.org
X-Gm-Message-State: AOJu0YwLuj/TxK7noAzbjdM1QGxdBEhTGSof026dkbbpaI7YT4tCoWEG
	kcrBkyrirPPYgrkj8ETJTj0C20O7NjUOuZbisYjCVjtJpTxGfn06H5ZIbUKhFRH9ImliCijtRlh
	ajK5ohV6YOLtLBQG0H8lQrKKhaQhByFI=
X-Gm-Gg: AfdE7clnSMrHQ9+v71a5Ub8VCX6ee08MWYQ4oclKM4Q7y4FYH61HEosKjlunsdOz6Bp
	A6WUf44A7zh5Gt9Cb5JEZbMH5dl6FT6SFuKV3jqxZk7HzDZPw6UTXDr19UnGbi270DY96FNmPx7
	qOVk25SBUpU9MrtHQIPs8/2N2UCsqw5GlthnyYHD+q43MDDtdA82nB20NmJdow9vqqJVLKQrBcu
	L0Icp4na3vj3fAXN/U+hSTsH9NYlmhCAd4hplgVPVJYcQlW/ZgaeVMqo6DlUQ6hAC73hB3HOA==
X-Received: by 2002:a05:690c:6d01:b0:7f6:bed8:5420 with SMTP id
 00721157ae682-80a688ddd42mr17613747b3.16.1782378433216; Thu, 25 Jun 2026
 02:07:13 -0700 (PDT)
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Thu, 25 Jun 2026 02:07:10 -0700
Received: from 77377267392 named unknown by gmailapi.google.com with HTTPREST;
 Thu, 25 Jun 2026 02:07:10 -0700
In-Reply-To: <06bddfca-d868-4043-ac6f-28ca103fff02@amd.com>
References: <20260624125242.11232-1-alhouseenyousef@gmail.com> <06bddfca-d868-4043-ac6f-28ca103fff02@amd.com>
MIME-Version: 1.0
From: Yousef Alhouseen <alhouseenyousef@gmail.com>
Date: Thu, 25 Jun 2026 02:07:10 -0700
X-Gm-Features: AVVi8CezeCOLduwTJPystmNQMhzBFoDmS1Ku5dFQnx-yRqXL5wq6-ysBxSe0GV0
Message-ID: <CAMuQ4bUdL+7OujEf6f-OUPeDgVK4FHXbL32vk3cPBN9DbGOkmA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>,
	Sumit Semwal <sumit.semwal@linaro.org>
X-Spamd-Bar: ----
X-MailFrom: alhouseenyousef@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S4L3GJQV44MN3USSNWTVDG67FOHNSJ57
X-Message-ID-Hash: S4L3GJQV44MN3USSNWTVDG67FOHNSJ57
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: udmabuf: avoid list copy size overflow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S4L3GJQV44MN3USSNWTVDG67FOHNSJ57/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E52CF6C7B97

SGkgQ2hyaXN0aWFuLA0KDQpBZ3JlZWQuIEkgc2VudCBhIGZvbGxvdy11cCB0aGF0IG1ha2VzIGxp
c3RfbGltaXQgdW5zaWduZWQgYW5kIGtlZXBzDQp0aGUgY2hlY2tlZCBhcnJheSBjb3B5IHBhdGgu
DQoNClRoYW5rcywNCllvdXNlZg0KDQpPbiBXZWQsIDI0IEp1biAyMDI2IDE0OjU4OjU4ICswMjAw
LCAiQ2hyaXN0aWFuIEvDtm5pZyINCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0K
PiBPbiA2LzI0LzI2IDE0OjUyLCBZb3VzZWYgQWxob3VzZWVuIHdyb3RlOg0KPiA+IFVETUFCVUZf
Q1JFQVRFX0xJU1QgY29waWVzIGFuIGFycmF5IHdob3NlIGVsZW1lbnQgY291bnQgY29tZXMgZnJv
bQ0KPiA+IHVzZXJzcGFjZS4gVGhlIGNvdW50IGlzIGNvbXBhcmVkIGFnYWluc3QgbGlzdF9saW1p
dCwgYnV0IGxpc3RfbGltaXQgaXMgYQ0KPiA+IHNpZ25lZCBtb2R1bGUgcGFyYW1ldGVyIHdoaWxl
IHRoZSBjb3VudCBpcyB1MzIuDQo+DQo+IFdlIHNob3VsZCBwcm9iYWJseSBqdXN0IGRyb3AgdGhl
IHNpZ24gZnJvbSB0aGUgbW9kdWxlIHBhcmFtZXRlciBpbnN0ZWFkLg0KPg0KPiBJIGRvbid0IHNl
ZSBhbiB1c2UgY2FzZSBmb3IgbmVnYXRpdmUgdmFsdWVzIGhlcmUuDQo+DQo+IFJlZ2FyZHMsDQo+
IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+IElmIHRoZSBsaW1pdCBpcyByYWlzZWQgdG9vIGZhciBv
ciBtYWRlIG5lZ2F0aXZlLCB0aGF0IGNvbXBhcmlzb24gbm8NCj4gPiBsb25nZXIgYm91bmRzIHRo
ZSBjb3VudCB0byBhIHJhbmdlIHdoZXJlIHNpemVvZigqbGlzdCkgKiBjb3VudCBmaXRzIGluDQo+
ID4gdGhlIHUzMiB0ZW1wb3JhcnkgdXNlZCBmb3IgdGhlIGNvcHkgbGVuZ3RoLiBBIHdyYXBwZWQg
Y29weSBsZW5ndGggbGV0cw0KPiA+IG1lbWR1cF91c2VyKCkgY29weSBmZXdlciBlbnRyaWVzIHRo
YW4gdWRtYWJ1Zl9jcmVhdGUoKSBzdWJzZXF1ZW50bHkNCj4gPiB3YWxrcywgbGVhZGluZyB0byBv
dXQtb2YtYm91bmRzIHJlYWRzIGZyb20gdGhlIGNvcGllZCBsaXN0Lg0KPiA+DQo+ID4gVGFrZSBh
IHBvc2l0aXZlIHNuYXBzaG90IG9mIHRoZSBtb2R1bGUgbGltaXQgYW5kIHVzZSBtZW1kdXBfYXJy
YXlfdXNlcigpDQo+ID4gc28gdGhlIG11bHRpcGxpY2F0aW9uIGlzIGNoZWNrZWQgYmVmb3JlIGNv
cHlpbmcuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBZb3VzZWYgQWxob3VzZWVuIDxhbGhvdXNl
ZW55b3VzZWZAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+IGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMgfCA5ICsrKysrLS0tLQ0KPiA+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFi
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gPiBpbmRleCBiY2VkNDIxYzAuLmI0
MDc4ZWM4NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiA+IEBAIC00NjksMTQgKzQ2OSwxNSBA
QCBzdGF0aWMgbG9uZyB1ZG1hYnVmX2lvY3RsX2NyZWF0ZV9saXN0KHN0cnVjdCBmaWxlICpmaWxw
LCB1bnNpZ25lZCBsb25nIGFyZykNCj4gPiBzdHJ1Y3QgdWRtYWJ1Zl9jcmVhdGVfbGlzdCBoZWFk
Ow0KPiA+IHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZV9pdGVtICpsaXN0Ow0KPiA+IGludCByZXQgPSAt
RUlOVkFMOw0KPiA+IC0gdTMyIGxzaXplOw0KPiA+ICsgaW50IGxpbWl0Ow0KPiA+DQo+ID4gaWYg
KGNvcHlfZnJvbV91c2VyKCZoZWFkLCAodm9pZCBfX3VzZXIgKilhcmcsIHNpemVvZihoZWFkKSkp
DQo+ID4gcmV0dXJuIC1FRkFVTFQ7DQo+ID4gLSBpZiAoaGVhZC5jb3VudCA+IGxpc3RfbGltaXQp
DQo+ID4gKyBsaW1pdCA9IFJFQURfT05DRShsaXN0X2xpbWl0KTsNCj4gPiArIGlmICghaGVhZC5j
b3VudCB8fCBsaW1pdCA8PSAwIHx8IGhlYWQuY291bnQgPiBsaW1pdCkNCj4gPiByZXR1cm4gLUVJ
TlZBTDsNCj4gPiAtIGxzaXplID0gc2l6ZW9mKHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZV9pdGVtKSAq
IGhlYWQuY291bnQ7DQo+ID4gLSBsaXN0ID0gbWVtZHVwX3VzZXIoKHZvaWQgX191c2VyICopKGFy
ZyArIHNpemVvZihoZWFkKSksIGxzaXplKTsNCj4gPiArIGxpc3QgPSBtZW1kdXBfYXJyYXlfdXNl
cigodm9pZCBfX3VzZXIgKikoYXJnICsgc2l6ZW9mKGhlYWQpKSwNCj4gPiArIGhlYWQuY291bnQs
IHNpemVvZigqbGlzdCkpOw0KPiA+IGlmIChJU19FUlIobGlzdCkpDQo+ID4gcmV0dXJuIFBUUl9F
UlIobGlzdCk7DQo+ID4NCj4gPiAtLQ0KPiA+IDIuNTQuMA0KPiA+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
