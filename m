Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id plaYBqIsNWqqnwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 13:48:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3D76A57E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 13:48:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74EE140AD5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 11:48:48 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	by lists.linaro.org (Postfix) with ESMTPS id 543053F6BD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 11:48:39 +0000 (UTC)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5bbcc159a0fso698955e0c.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 04:48:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781869719; x=1782474519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ItJpWj1GNu2tcZXuQZG+sYbJ7oV+gLF69bBweX98kac=;
        b=PljzqrIbyYR0kbrFWcMJr5AYTiX09nDjKhJXD/f4U7b6MQ9+z1rTEABm6NzN1t/hCF
         9MbrrmkEszaaF0SYDrKAkim1dlxGdI26X0zZqgJDQu/d0UfxutAogbALwRrYhITWHka7
         krZpR9owVUouIzR3jOPynOoKnrb6la5gj/jPMCUMk2GPj3SRgtR+swlIw12QUiWDNGll
         VC9oQc407xMypG07EbcFbiv6yoZLeRsLwTgVjjWYGqFNUc2G5DVpVfbaA67KHxcAeAtn
         +/rLm8QmbHvId3BeLIIvXBLcPOODTPKtZcJ/t+Y/TlNZXxd2MTGkbhOVA4eWFcPqp1ta
         PJrQ==
X-Forwarded-Encrypted: i=1; AFNElJ++nMsxjvNIF+0ohL0SSR3jgWTzrE42oFLH5uxwarCMF69kJtWPmgW1fFDwyyFQtHda0GXvF6pq3a7Bt4IM@lists.linaro.org
X-Gm-Message-State: AOJu0Yxg+T+o8N/k9HTTgzEZLzXO1o1ilPOHVo6jSwVBwDsJaHwfa6Ta
	sE1q8ITJpwzaJkm8y3XQwRq5mIcOgpWAcMzfj8IXRFbDE4GYaS49RY837rcj8yUti0A=
X-Gm-Gg: AfdE7clI1lbDVEWveAT6E+mQ4fFR8DLRo20EwlUaGXEUN6Lws53E5BcYq3mSaKH0WTw
	nZd7S9LS3a7xa0ESJZbewB2Yj7hgXk9JqH0sGQSQqswuTsaB7mzmZOjdss5qepT97yrKjYi9ad2
	07L9ux8Cc+lHscH1TR2nMSOeYzoZmT4uV1c4Q77nZA78+4GSyW9lbKdPBBl+IW5lg0JD/ZwA5ag
	dSOsx1HCuAXR5dfIspqRrIdkQIpZRdsp88XhMNqOc/4kQ3QpNGeDET1vd2+pkK1exHyKg/kQCL+
	oLSmhEQiDOHox9JhcSmi1tJNv3Qm/rPsU1Cdl91b3Yfnze2l4vmowysq/IVTz50MY7Yq4dx2BVH
	1MIFAvUeKZOa0gDMM5nXhvUZ08k/Lc2gZlPgZHaVRWN6HOSnwbLl5Gr0HwCM/uRpE1Jg3jRpg7M
	tc3Fa0PkIO1coayUEnhIT/dB+uxD7mTaCeBmWsthIIR8E3UOwgzQ==
X-Received: by 2002:a05:6122:1d14:b0:575:38d3:7c8a with SMTP id 71dfb90a1353d-5bbebb0c64emr1142040e0c.2.1781869718623;
        Fri, 19 Jun 2026 04:48:38 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bbe9e6763esm1722287e0c.0.2026.06.19.04.48.37
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 04:48:38 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-6efdb57d98fso555525137.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 04:48:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8/MyF2iDY2QIxEk7qNySedF5Niv8B3Ru7XQNrFA269E5GM/vW91NYCqYqD9hrsyV0IiITqNAcfoHPoexPp@lists.linaro.org
X-Received: by 2002:a05:6102:448b:b0:650:aa33:5dd7 with SMTP id
 ada2fe7eead31-72a01884599mr2039005137.2.1781869717237; Fri, 19 Jun 2026
 04:48:37 -0700 (PDT)
MIME-Version: 1.0
References: <16fb40ded203d1e2b72f4eeecad3fd0c0d23ad6f.1781863296.git.geert@linux-m68k.org>
 <9503e60a-5e8a-40f3-b5cf-1d8d0f71c9a5@amd.com>
In-Reply-To: <9503e60a-5e8a-40f3-b5cf-1d8d0f71c9a5@amd.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 19 Jun 2026 13:48:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWoR6UNBC-hsi1V=vwx+9AWzRw9bT_OR0AO2L87nCnn1A@mail.gmail.com>
X-Gm-Features: AVVi8CdQDwS6tzm65LzLlS49GN4M-NumImqTWT8BmI9blTIGfCV8oYLJQhKk5Ak
Message-ID: <CAMuHMdWoR6UNBC-hsi1V=vwx+9AWzRw9bT_OR0AO2L87nCnn1A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: LXB2FMJSQYHARMA3UEFBWILR3V3RN4MR
X-Message-ID-Hash: LXB2FMJSQYHARMA3UEFBWILR3V3RN4MR
X-MailFrom: geert.uytterhoeven@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, driver-core@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] base: Remove unused DMA_FENCE_TRACE Kconfig symbol
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LXB2FMJSQYHARMA3UEFBWILR3V3RN4MR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.41 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:driver-core@lists.linux.dev,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D3D76A57E0

SGkgQ2hyaXN0aWFuLA0KDQpPbiBGcmksIDE5IEp1biAyMDI2IGF0IDEyOjM5LCBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiBPbiA2LzE5LzI2IDEy
OjAzLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6DQo+ID4gQ29tbWl0IGQ3MjI3N2I2YzM3ZGI2
NmIgKCJkbWEtYnVmOiBudWtlIERNQV9GRU5DRV9UUkFDRSBtYWNyb3MgdjIiKSBpbg0KPiA+IHY1
LjE2IHJlbW92ZWQgYWxsIHVzZXJzIG9mIERNQV9GRU5DRV9UUkFDRSBvbiB0aGUgcHJlbWlzZSB0
aGF0IHRoZQ0KPiA+IEtjb25maWcgc3ltYm9sIGRpZCBub3QgZXhpc3QuICBBcHBhcmVudGx5IG9u
ZSBmYWlsZWQgdG8gbm90aWNlIHRoZQ0KPiA+IHN5bWJvbCBkaWQgZXhpc3Qgc2luY2UgYWxtb3N0
IGZpdmUgeWVhcnMgYmVmb3JlOiBpdCB3YXMgcmVuYW1lZCBmcm9tDQo+ID4gRkVOQ0VfVFJBQ0Ug
dG8gRE1BX0ZFTkNFX1RSQUNFIGluIGNvbW1pdCBmNTRkMTg2NzAwNWMzMzIzICgiZG1hLWJ1ZjoN
Cj4gPiBSZW5hbWUgc3RydWN0IGZlbmNlIHRvIGRtYV9mZW5jZSIpIGluIHY0LjEwLg0KPiA+DQo+
ID4gVGltZSBwYXNzZWQgYnksIHNvIHJlbW92ZSB0aGUgS2NvbmZpZyBzeW1ib2wsIGFzIG5vIG9u
ZSBzZWVtcyB0byBoYXZlDQo+ID4gbWlzc2VkIHRoZSBmdW5jdGlvbmFsaXR5Lg0KPg0KPiBZZWFo
IHRoYXQgZnVuY3Rpb25hbGl0eSBzaG91bGQgYmUgZnVsbHkgY292ZXJlZCBieSB0cmFjZSBwb2lu
dHMuDQo+DQo+ID4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51
eC1tNjhrLm9yZz4NCj4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCg0KVGhhbmtzIQ0KDQo+IERvIHlvdSBoYXZlIGNvbW1pdCByaWdo
dCB0byBkcm0tbWlzYy1uZXh0IHRvIHB1c2ggdGhpcz8NCg0KTm8sIEkgaGF2ZSBub3QuDQoNCkdy
e29ldGplLGVldGluZ31zLA0KDQogICAgICAgICAgICAgICAgICAgICAgICBHZWVydA0KDQotLSAN
CkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIg
LS0gZ2VlcnRAbGludXgtbTY4ay5vcmcNCg0KSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRo
IHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dA0Kd2hlbiBJJ20g
dGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhp
bmcgbGlrZSB0aGF0Lg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBU
b3J2YWxkcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
