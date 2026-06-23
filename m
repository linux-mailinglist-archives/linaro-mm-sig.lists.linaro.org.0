Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7Q34MbhgPWrX2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B4B6C7B5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=SyLlmoQZ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25A514470C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:09:11 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 9C4303F7B4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 21:03:40 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-49242f97da7so16755e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 14:03:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782248619; cv=none;
        d=google.com; s=arc-20260327;
        b=Y5n80jesdpD/rO+4WB3mDJJgrOZ072ktOJYc2Is8oTuqF9IITwidCtkOjUgGiaC9Is
         OdXUkBumW6hxTQuXitaF0VLyjbiA99mMsmeEdRJZUFoU4sm3Jg3lu0C57p1SAppMvcIE
         FvHSjlqSzZmr2iIHXGevemQChtmLpyI3MDaOm/MuQZWnBJgNTgP+H+RVK0Qia1eptMLQ
         071bOLjcbd1PUE89KP+IPvCMW3krqs++mJh958/MmfKxvUmh1K15mmvR9QMqSJSnJJQO
         MomvQic8Dc0iIawnI4zfJMNkuaCaCr//y33tE66BaSCqjdsn+6NyB0iOCvLnC0zj5TeX
         naLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Slm3EEkSH4PB9RQu260syQQELF+PaB3Sj0996Hd4Y1A=;
        fh=40exCrfE49hNcLJ4NzaVA4jlYhZJ5rIPMHu2v3g/4lo=;
        b=l7ypmFriSQTrUzbk4+4PgNyTJDnBxEx8lSYIZ4x3bEZtiwh16zjjy0X/o1vgXYpqp+
         aGKogYzri4ivbYC4tkS9Ehnu7ICK0EEjaZGay+HuO8cMgtFw9alPTfzJV4Sp8sFHejcZ
         6vAKs6xQQHYYzXMj8TRagQUmZ5CNhlIOsGFtGEsRVkuK48tx7v9b2J0LNSAi9v2XYy+T
         izcIECMDoCgtoHY6SmlfNEXdaAwua8W+l1O4gHLyYtVJRqPIBhxamErBYzWDTPdXhIvR
         edINsk0USTcJ26zE0AorHqdD0/U+xRO2IscdNoAy5bQZ2Ajz3bAMvR4pP9jGIFqaQjZQ
         rbTA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782248619; x=1782853419; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Slm3EEkSH4PB9RQu260syQQELF+PaB3Sj0996Hd4Y1A=;
        b=SyLlmoQZlm4gpWU8a4rz9jOpUCoHpkY/SMQtF9BGG7dM5Ndlr+Cuh6CYHya98+Vndl
         yLQGHo5K6FP0A5xERB3TFC7vtflDaZyM9TFD+L2w6fZM0lMruIZGfX2hK8fm1NSoZ+wo
         p8nep/8SuBm/3sFe2DjxThE20Z81SLqRjpJOWKadqYLyWAoxJ3m3hfJdSsLWm9oTYFrA
         LitiTKsTWy0nEhj8t62jQdv6KNd0s9oJkeUVq0uJEpDGrlztJTOdFV1A8zHKIt4rXJCp
         3foH/+7ydSQ+/nnt/qE1rb19mNrX+3Sn4iEWdncGg6DVXqfrrbLrCC3LiwFJfLL2LAvS
         s9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782248619; x=1782853419;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Slm3EEkSH4PB9RQu260syQQELF+PaB3Sj0996Hd4Y1A=;
        b=IhJ713eKugY0ixbl/c36ZOjIOEdtiE18T0ObWTsyz5GuO/opRsyc4WGYoAhusFJlEc
         FSemqMLPmutZ2nLToaP59GYKV9GN1yzOlQCmKjUjbUzdowg1rDqvJS/OpXw8uHi2lFqM
         bTaP7GACJUAEEPn2Zh81H8tpb30dZb/VfmMciItqoi/EVTypK+Q3QxhMvruQU9kwRu3C
         hjMo1B0B9NdEx0wtnABMikdDp0YNMmhJFOb3TDTZ43OW5yRLz4jZhVKSx5wvHhHL6eb/
         5bq+lL/OdSSW3kmNaPyJ9qwq7uy1T+igKeh+4ESpA9fXqjsjgdeOOZun5I0OGTOit+eM
         QGvQ==
X-Forwarded-Encrypted: i=1; AFNElJ82byaIKt8wbEeiCUqKgq8ZhrC2qUZ5KjQmnTTq9XCfPYLBP1BR11drwOq05pTZyH8g6lD7yOKq8oRPLWKr@lists.linaro.org
X-Gm-Message-State: AOJu0YyJ/myCTIwmUPjyUqQporiPqpM8aGhN+Bas/+SPJk65IM1Fg9Mi
	9FQeznySsrO95q26dwTZaXt5spg8VuPChhCVfGDE75Trgdn8eNw+H982jDrqaFVmJRpCMUlp1CN
	Kh3GI9nwm5bfoP66A5zmGR+M0ivL/o/AWcLu7KPI=
X-Gm-Gg: AfdE7clKRDzV4qN50+lfXp8MWCwNIqMLXvHRCIga8E8Lo59emWW7DnrL32OKGg/FSB9
	CAPHZfh5VaNk3Y1vWM9jDdfiGQLqQexC6yaeRlxYR1/XTgVy5SwJbxedAvTk9YA8fFjAfj8cDs5
	nKcgvDSMwaCklKNqf7zxyXyEiIgnvgkhaI+w8Zde9s9OCeSi0+mZ5Y2K676B8FHAHoHFem2LMF9
	SS1gzewkc4IhU+wpqD3k0lvCM9R0XUpLkWg7Oz7oRsEGECvkU1jdlDHC0Ho1GOdFm8JyYxUgzhR
	tZw=
X-Received: by 2002:a05:600c:16d3:b0:485:1a54:9407 with SMTP id
 5b1f17b1804b1-492603072camr290785e9.0.1782248619190; Tue, 23 Jun 2026
 14:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260621222130.1667453-1-xuehaohu@google.com> <20260622091344.794e0d74@pumpkin>
 <CAPd9Lg9+d=Rw4230FdcMFd0VYfyhXhD=eju53iURR8c61iXsWw@mail.gmail.com> <20260623092501.17bef195@pumpkin>
In-Reply-To: <20260623092501.17bef195@pumpkin>
From: David Hu <xuehaohu@google.com>
Date: Tue, 23 Jun 2026 17:03:26 -0400
X-Gm-Features: AVVi8CftE4Qz-bzNimcxnNDxPCuT9w5jszdF7jgeQ4PkwmMrpP9oMduQaXpAyA0
Message-ID: <CAPd9Lg-i8Agh7_E5cd2CmtWww1cM2PW3A243qtQaHxhvHdjCQw@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TBVZP5UUUBFYQIB2BVFZKX4FV6WFEOD4
X-Message-ID-Hash: TBVZP5UUUBFYQIB2BVFZKX4FV6WFEOD4
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, sashiko-bot <sashiko-bot@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Split sgl by largest page-aligned chunk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TBVZP5UUUBFYQIB2BVFZKX4FV6WFEOD4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[44];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17B4B6C7B5D
X-Spam: Yes

T24gVHVlLCBKdW4gMjMsIDIwMjYgYXQgNDoyNeKAr0FNIERhdmlkIExhaWdodA0KPGRhdmlkLmxh
aWdodC5saW51eEBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiBNb24sIDIyIEp1biAyMDI2IDE3
OjI2OjEwIC0wNDAwDQo+IERhdmlkIEh1IDx4dWVoYW9odUBnb29nbGUuY29tPiB3cm90ZToNCj4N
Cj4gPiBPbiBNb24sIEp1biAyMiwgMjAyNiBhdCA0OjEz4oCvQU0gRGF2aWQgTGFpZ2h0DQo+ID4g
PGRhdmlkLmxhaWdodC5saW51eEBnbWFpbC5jb20+IHdyb3RlOg0KPiA+ID4NCj4gPg0KPiA+IEhp
IERhdmlkLA0KPiA+DQo+ID4gVGhhbmsgeW91IGZvciB5b3VyIHJldmlldy4gWW91IHJhaXNlZCBt
YW55IGdvb2QgcG9pbnRzIHJlZ2FyZGluZw0KPiA+IG9wdGltaXphdGlvbnMgaGVyZS4gSSdsbCBz
d2l0Y2ggdG8gdXNpbmcgMkcgYXMgdGhlIG1heCBlbnRyeSBzaXplDQo+ID4gKGBTWl8yR2AgZnJv
bSBgbGludXgvc2l6ZXMuaGApLCBhbmQgcmVtb3ZlIGRpdmlzaW9ucyBhbmQNCj4gPiBtdWx0aXBs
aWNhdGlvbnMuIEknbGwgYWxzbyByZXBsYWNlIHRoZSBgZm9yKClgIGxvb3Agd2l0aCBgd2hpbGUN
Cj4gPiAobGVuZ3RoKWAsIGFuZCBkcm9wIGBtaW5fdCgpYCBpbiBmYXZvciBvZiBgbWluKClgIGJ5
IGNhc3RpbmcgYFNaXzJHYA0KPiA+IHRvIGBzaXplX3RgLg0KPg0KPiBZb3Ugc2hvdWxkbid0IG5l
ZWQgYSBjYXN0IGF0IGFsbC4NCg0KSGkgRGF2aWQsDQoNCllvdSBhcmUgcmlnaHQuIEl0IGxvb2tz
IGxpa2UgYG1pbihsZW5ndGgsIENPTlNUQU5UKWAgd29ya3Mgd2VsbCBoZXJlDQp3aXRob3V0IHRy
aWdnZXJpbmcgYW55IHR5cGUgbWlzbWF0Y2ggd2FybmluZ3MsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhl
cg0KYENPTlNUQU5UYCBpcyBgU1pfMUdgIChgaW50YCksIGBTWl8yR2AgKGB1bnNpZ25lZCBpbnRg
KSwgYFNaXzRHYA0KKGB1bnNpZ25lZCBsb25nIGxvbmdgKSwgb3IgbGFyZ2VyLiBJJ2xsIGRyb3Ag
dGhlIGNhc3QgYW5kIHNlbmQgb3V0IGENCnYzIHNob3J0bHkuDQoNClRoYW5rcywNCkRhdmlkDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
