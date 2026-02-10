Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEenAQER4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9004B411D52
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A120744D60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:31 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 439273F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 09:14:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=M4IuMbIj;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.45) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so44503755e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 01:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770714851; x=1771319651; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1n+Dri69ZtsJrD5f7LTNPULLrK+Vi4bS2T/sVYZliNI=;
        b=M4IuMbIjg8TNzZ8TtZUI4g0kpPAoYlLRKKhPA1CnnoHqb9Blsp6EAKvlQCTGNAW9Wa
         q4X+ljBwMIjbUBNaToiNgIVjDvUmqK9KQlD7bZf4zgay1udTgL8qMvOPuiTEZJanjwOt
         5kLp9Fqv6OhbPPsMK/XQUvC1QelhX88tAR9TJp4bICVG898bQzcRfJEoqsL4LZHSxCzI
         tYPApmQvMYW1u3jp0U04EFns4fcJBfUHWynzqjmlgDgKu1YV19GM8+Ze0PTz69G0DcYx
         ZHsW/13vg+6rgQJOa9FzZIE5baDW3LANiSm7u0KBsukaIoswJOJ3J4/QSOSVh4QuQILD
         vs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770714851; x=1771319651;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1n+Dri69ZtsJrD5f7LTNPULLrK+Vi4bS2T/sVYZliNI=;
        b=tuSya1oe7rbgVrkVpUt3gJWlGejUxZGuEvWqLJRWLiP/WsEOyrX1LyL0Ugb+LCWHDE
         V8mgbhNzATa2sWn4WNP7z6YGI/mP5/wEwlv8x5lzdn6zkh8G2VtNc5qo7JfGuS6ZrD7/
         L6LRTLcMsTIx2c5OK8hrE0ECseJyc8Qf3SkUJ5OX6/3HladvGZI5q4YcELhG6OWxAB8J
         j5tVtRq9SPXEAj7UF5k0eapU2cCtYT47K1PXp804P9c7h9P0EjfuWk+PMhiKTMtdhhxF
         njTmkH0cRN4aER/1p8OknTgXaVoh2jIhohvoLQHyz5gFswvNYpNaUDy2F5sFoFDLIGtZ
         R8eA==
X-Forwarded-Encrypted: i=1; AJvYcCVAJhd5sO4Q9C7Wdiq0CXSRv59ai0FEH5esn+T0ccaqrbZE3xxPhkmuWczNrg26HT5FTDDLKgcUa9hxDH1A@lists.linaro.org
X-Gm-Message-State: AOJu0YxYvZ7lY+96KtSjYDSgoKrupEMQ0WDcXfrQQD/Nk+sRHwa/hYR5
	RRom4FGxdEULeOW2fNoECmGGvQ9UIQv7xZExETEhDK/grjJ/te8i8xEWoWaDSdWF+XQ=
X-Gm-Gg: AZuq6aJTEc87SdcwOQp9Q7weOh7gc3imbPF8tQ77apR4dnWRjzijLiqqy+xSwJmyHqX
	0lidZW7sEE2cNPP6O/PY4DpTT0grmp/YEgD5SsHOqD1YkvT3rE7XtAj01Ijj7dgnlsDz/cDKTAB
	KKMXwQBb5l2tm69flHsVsQyWBalPvhbxDYHnU3fwAbXfrqXOvYIioUS6sntzlGunEilDZCcCDfG
	+x3uH6OetnFLRBlhQOVR6/8X7CsgPy2x3MKHZ/cReFB+5N/P53qskT6sc/TQjTvQBHjSHuvCQe2
	99ucf3qUkHKFqyphFhwTduHjmpT6LNmZKakkZ5Mja5LIenJ4yB3uf0tAIjCTurDL9kfzvcUEmt1
	XCAHnamFPU/6HhndfPco9NjGaJdob7W50ISz1XdDEVv3+4+jFROfByQdux+tG4x3rMb6bd9RPJN
	uEIfIhxut6bonHgmYWy/3ctXRpwI0kbv5jFEY=
X-Received: by 2002:a05:600c:1daa:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-483507f08c6mr21095375e9.14.1770714851014;
        Tue, 10 Feb 2026 01:14:11 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7f1e4fsm61726245e9.15.2026.02.10.01.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 01:14:10 -0800 (PST)
Date: Tue, 10 Feb 2026 10:14:08 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <tgvdjszwxggr53digbmddcbxvupzl4xcoprofkgrs2kgf6rknx@44ebljjpghjm>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <20260210002927.GC943673@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260210002927.GC943673@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LOYW2C22DR2MZ2LCTGUYK3KYT3RJPMYS
X-Message-ID-Hash: LOYW2C22DR2MZ2LCTGUYK3KYT3RJPMYS
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:13 +0000
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOYW2C22DR2MZ2LCTGUYK3KYT3RJPMYS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[1567];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:email,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email]
X-Rspamd-Queue-Id: 9004B411D52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHVlLCBGZWIgMTAsIDIwMjYgYXQgMDE6Mjk6MjdBTSArMDEwMCwgamdnQHppZXBlLmNhIHdyb3Rl
Og0KPk9uIE1vbiwgRmViIDA5LCAyMDI2IGF0IDEyOjA4OjAzUE0gLTA4MDAsIEpvaG4gU3R1bHR6
IHdyb3RlOg0KPj4gT24gTW9uLCBGZWIgOSwgMjAyNiBhdCA3OjM44oCvQU0gSmlyaSBQaXJrbyA8
amlyaUByZXNudWxsaS51cz4gd3JvdGU6DQo+PiA+DQo+PiA+IEZyb206IEppcmkgUGlya28gPGpp
cmlAbnZpZGlhLmNvbT4NCj4+ID4NCj4+ID4gQ3VycmVudGx5IHRoZSBmbGFncywgd2hpY2ggYXJl
IHVudXNlZCwgYXJlIHZhbGlkYXRlZCBmb3IgYWxsIGhlYXBzLg0KPj4gPiBTaW5jZSB0aGUgZm9s
bG93LXVwIHBhdGNoIGludHJvZHVjZXMgYSBmbGFnIHZhbGlkIGZvciBvbmx5IG9uZSBvZiB0aGUN
Cj4+ID4gaGVhcHMsIGFsbG93IHRvIHNwZWNpZnkgdGhlIHZhbGlkIGZsYWdzIHBlci1oZWFwLg0K
Pj4gDQo+PiBJJ20gbm90IHJlYWxseSBpbiB0aGlzIHNwYWNlIGFueW1vcmUsIHNvIHRha2UgbXkg
ZmVlZGJhY2sgd2l0aCBhIGdyYWluIG9mIHNhbHQuDQo+PiANCj4+IFdoaWxlIHRoZSBoZWFwIGFs
bG9jYXRlIGZsYWdzIGFyZ3VtZW50IGlzIHVudXNlZCwgaXQgd2FzIGludGVuZGVkIHRvDQo+PiBi
ZSB1c2VkIGZvciBnZW5lcmljIGFsbG9jYXRpb24gZmxhZ3MgdGhhdCB3b3VsZCBhcHBseSB0byBh
bGwgb3IgYXQNCj4+IGxlYXN0IGEgd2lkZSBtYWpvcml0eSBvZiBoZWFwcy4NCj4+IA0KPj4gSXQg
d2FzIGRlZmluaXRlbHkgbm90IGFkZGVkIHRvIGFsbG93IGZvciBwZXItaGVhcCBvciBoZWFwIHNw
ZWNpZmljDQo+PiBmbGFncyAoYXMgdGhpcyBwYXRjaCB0cmllcyB0byB1dGlsaXplIGl0KS4gVGhh
dCB3YXMgdGhlIG1lc3Mgd2UgaGFkDQo+PiB3aXRoIElPTiBkcml2ZXIgdGhhdCB3ZSB3ZXJlIHRy
eWluZyB0byBhdm9pZC4NCj4NCj5JIGRvbid0IGtub3cgYWxvdCBhYm91dCBETUEgaGVhcHMuLg0K
Pg0KPk9uIGEgQ0MgVk0gc3lzdGVtIHRoZSBzaGFyZWQvcHJpdmF0ZSBwcm9wZXJ0eSBpcyB1bml2
ZXJzYWwgYW5kIGFwcGxpZXMNCj50byBldmVyeSBwaHlzaWNhbCBhZGRyZXNzLiBOb3QgZXZlcnkg
YWRkcmVzcyBjYW4gZHluYW1pY2FsbHkgY2hhbmdlDQo+YmV0d2VlbiBzaGFyZWQgYW5kIHByaXZh
dGUsIGJ1dCBldmVyeSBhZGRyZXNzIGRvZXMgaGF2ZSBhDQo+c2hhcmVkL3ByaXZhdGUgc3RhdGUu
DQo+DQo+QnkgZGVmYXVsdCB1c2Vyc3BhY2UgcHJvY2VzcyBnZW5lcmFsbHkgcnVuIGV4Y2x1c2l2
ZWx5IGluIHByaXZhdGUNCj5tZW1vcnkgYW5kIHRoZXJlIGFyZSB2ZXJ5IGZldyB3YXlzIGZvciB1
c2Vyc3BhY2UgdG8gZXZlbiBhY2Nlc3Mgc2hhcmVkDQo+bWVtb3J5Lg0KPg0KPkZyb20gYSBoZWFw
cyBwZXJzcGVjdGl2ZSB0aGUgQVBJIHdvdWxkIGJlIHZlcnkgc3RyYW5nZSwgYW5kIHBlcmhhcHMN
Cj5ldmVuIHNlY3VyaXR5IGRhbmdlcm91cywgaWYgaXQgaXMgcmV0dXJuaW5nIHNoYXJlZCBtZW1v
cnkgdG8gdXNlcnNwYWNlDQo+d2l0aG91dCB1c2Vyc3BhY2Uga25vd2luZyB0aGlzIGlzIGhhcHBl
bmluZy4NCj4NCj5JJ2QgYWR2b2NhdGUgdGhhdCB0aGUgcmlnaHQgZGVzaWduIGlzIGZvciB1c2Vy
c3BhY2UgdG8gcG9zaXRpdmVseQ0KPnNpZ25hbCB2aWEgdGhpcyBmbGFnIHRoYXQgaXQgd2FudHMv
YWNjZXB0cyBzaGFyZWQgbWVtb3J5IGFuZCB3aXRob3V0DQo+dGhlIGZsYWcgc2hhcmVkIG1lbW9y
eSBzaG91bGQgbmV2ZXIgYmUgcmV0dXJuZWQuDQoNCldlIGNhbiBoYXZlIHRoZSBzYW1lIGJlaGF2
aW91ciB3aXRoIHRoZSBzZXBhcmF0ZSBoZWFwLCBjYW4ndCB3ZT8NClVzZXJwYWNlIHBvc2l0aXZl
bHkgc2lnbmFscyBpdCB3YW50cy9hY2NlcHRzIHRoZSBzaGFyZWQgbWVtb3J5IGJ5DQpjaG9vc2lu
ZyAic3lzdGVtX2NjX2RlY3J5cHRlZCIgaGVhcCBuYW1lLg0KDQpbLi4uXQ0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
