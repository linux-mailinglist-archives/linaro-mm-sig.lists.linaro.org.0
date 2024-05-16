Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F091A8C7AB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 18:52:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07ED244848
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 16:52:01 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 539CD3F368
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 16:51:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Hxw4xWCi;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-420107286ecso3255e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 09:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715878309; x=1716483109; darn=lists.linaro.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=onRIPguZVTKnH89R9mkjKZKxwfRC8K+qmiRpCHzudec=;
        b=Hxw4xWCi+Ku5wKuuddv0uBd+m7TiquFiP25Xid05sP8Z6Zd1L/7whq74+n1qJ1En+C
         GKyXbbcSYlw790j4WboFY20z3quumxupjeg5cIrTtcntW+ZHIJ95FgE25uf/5O/PRO2K
         j0E0o0ROMy3MBBfhph4wUG+VUNX+CW1n/zzGE4re2VKAJuny6fq0Ca0yYAW51M3sPpTE
         hR92abO3226MjYESjemmOf/GhI+GO/r8TXf/4VICN9PngorIj3qzjbQLl3vvApicvnxn
         S5eYxM5g2/anDbxe8mQhaw9ZNDVvi8djVvKKLh/y1afse/iML1AnIyT9aMUbc24IXF0t
         0m+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715878309; x=1716483109;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=onRIPguZVTKnH89R9mkjKZKxwfRC8K+qmiRpCHzudec=;
        b=F1uiP/WXhn3cnuORiuIqwylZx7ysmMZE70TOSW2Yj72FMqW5hj1cf1FmAMEizJunj8
         zVfdkffRfUUnYu4C+/SlaWUnlTkdHW0W9YJleZGIXkLthPL1qGUOy/OcEckYgJmf3LcA
         XoZQmE7tR2goWjQkqGRvR+5z93Zbl7EehbFohklnWXlSTPEXCmok1J5V2Hmvz2omyIlk
         KjSOlZghSiSdKkoGhVFSFgxv2yDf/ZuAOtL4xN7qgp2Nf7tijIF2lOcXqckup77LoJoy
         ROlxWuL5AQurEcrvTYP4guiz0mi34L09pkyn4OgsJHHrGMgBh3JAjJqX97GCfOFXEBlK
         V+tw==
X-Forwarded-Encrypted: i=1; AJvYcCVMwF5ohPwIgZVq8f/WW8Q3qfM5Mts3CAPBVwbONNo5SLHj2hv1OmHUDGYlvZlr/65S/QGHi/jR1M+RAJdrjXrt6Vo25d9PgEXNiWVh0sE=
X-Gm-Message-State: AOJu0YyGVKwYNDY+x7F3VcNWn/I6y/7BRZ/8KQIEw6tLdhcMR0wS5B4B
	ZPBmAR58ZPgOZZBVcGyyMIveEHPl8WkvjR23cwrM/aSkqrYVw5FgZVWL+vUEC2pAFQXhSVfsG4e
	/l0exRvlGuc5Ybpr3vTCMSoq4RywzolER6aM=
X-Google-Smtp-Source: AGHT+IEtjZ9BDFF4UXQQ+nrOQN0XGRAp0bc3xjYZiRXnK81siroeleNET7wr5DctMi1WpgetmZ17HV2nwiWezX0TGvA=
X-Received: by 2002:a05:600c:34c2:b0:41b:e55c:8dca with SMTP id
 5b1f17b1804b1-4200f8c6eeamr11617495e9.7.1715878309151; Thu, 16 May 2024
 09:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com> <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
In-Reply-To: <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
From: John Stultz <jstultz@google.com>
Date: Thu, 16 May 2024 09:51:35 -0700
Message-ID: <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
To: John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 539CD3F368
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: FPTIFWNHPKTSWZZLTMIJRFEWYIEKN6TZ
X-Message-ID-Hash: FPTIFWNHPKTSWZZLTMIJRFEWYIEKN6TZ
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPTIFWNHPKTSWZZLTMIJRFEWYIEKN6TZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgMTYsIDIwMjQgYXQgMzo1NuKAr0FNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBm
ZndsbC5jaD4gd3JvdGU6DQo+IE9uIFdlZCwgTWF5IDE1LCAyMDI0IGF0IDExOjQyOjU4QU0gLTA3
MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+IEJ1dCBpdCBtYWtlcyBtZSBhIGxpdHRsZSBuZXJ2
b3VzIHRvIGFkZCBhIG5ldyBnZW5lcmljIGFsbG9jYXRpb24gZmxhZw0KPiA+IGZvciBhIGZlYXR1
cmUgbW9zdCBoYXJkd2FyZSBkb2Vzbid0IHN1cHBvcnQgKHlldCwgYXQgbGVhc3QpLiBTbyBpdCdz
DQo+ID4gaGFyZCB0byB3ZWlnaCBob3cgY29tbW9uIHRoZSBhY3R1YWwgdXNhZ2Ugd2lsbCBiZSBh
Y3Jvc3MgYWxsIHRoZQ0KPiA+IGhlYXBzLg0KPiA+DQo+ID4gSSBhcG9sb2dpemUgYXMgbXkgd29y
cnkgaXMgbW9zdGx5IGJvcm4gb3V0IG9mIHNlZWluZyB2ZW5kb3JzIHJlYWxseQ0KPiA+IHB1c2gg
b3BhcXVlIGZlYXR1cmUgZmxhZ3MgaW4gdGhlaXIgb2xkIGlvbiBoZWFwcywgc28gaW4gcHJvdmlk
aW5nIGENCj4gPiBmbGFncyBhcmd1bWVudCwgaXQgd2FzIG1vc3RseSBpbnRlbmRlZCBhcyBhbiBl
c2NhcGUgaGF0Y2ggZm9yDQo+ID4gb2J2aW91c2x5IGNvbW1vbiBhdHRyaWJ1dGVzLiBTbyBoYXZp
bmcgdGhlIGZpcnN0IGJlIHNvbWV0aGluZyB0aGF0DQo+ID4gc2VlbXMgcmVhc29uYWJsZSwgYnV0
IGlzbid0IGFjdHVhbGx5IHRoYXQgY29tbW9uIG1ha2VzIG1lIGZyZXQgc29tZS4NCj4gPg0KPiA+
IFNvIGFnYWluLCBub3QgYW4gb2JqZWN0aW9uLCBqdXN0IHNvbWV0aGluZyBmb3IgZm9sa3MgdG8g
c3RldyBvbiB0bw0KPiA+IG1ha2Ugc3VyZSB0aGlzIGlzIHJlYWxseSB0aGUgcmlnaHQgYXBwcm9h
Y2guDQo+DQo+IEFub3RoZXIgZ29vZCByZWFzb24gdG8gZ28gd2l0aCBmdWxsIGhlYXAgbmFtZXMg
aW5zdGVhZCBvZiBvcGFxdWUgZmxhZ3Mgb24NCj4gZXhpc3RpbmcgaGVhcHMgaXMgdGhhdCB3aXRo
IHRoZSBmb3JtZXIgd2UgY2FuIHVzZSBzeW1saW5rcyBpbiBzeXNmcyB0bw0KPiBzcGVjaWZ5IGhl
YXBzLCB3aXRoIHRoZSBsYXR0ZXIgd2UgbmVlZCBhIG5ldyBpZGVhLiBXZSBoYXZlbid0IHlldCBn
b3R0ZW4NCj4gYXJvdW5kIHRvIGltcGxlbWVudCB0aGlzIGFueXdoZXJlLCBidXQgaXQncyBiZWVu
IGluIHRoZSBkbWEtYnVmL2hlYXAgdG9kbw0KPiBzaW5jZSBmb3JldmVyLCBhbmQgSSBsaWtlIGl0
IGFzIGEgZGVzaWduIGFwcHJvYWNoLiBTbyB3b3VsZCBiZSBhIGdvb2QgaWRlYQ0KPiB0byBub3Qg
dG9zcyBpdC4gV2l0aCB0aGF0IGRpc3BsYXkgd291bGQgaGF2ZSBzeW1saW5rcyB0byBjbWEtZWNj
IGFuZCBjbWEsDQo+IGFuZCByZW5kZXJpbmcgbWF5YmUgY21hLWVjYywgc2htZW0sIGNtYSBoZWFw
cyAoaW4gcHJpb3JpdHkgb3JkZXIpIGZvciBhDQo+IFNvQyB3aGVyZSB0aGUgZGlzcGxheSBuZWVk
cyBjb250aWcgbWVtb3J5IGZvciBzY2Fub3V0Lg0KDQpTbyBpbmRlZWQgdGhhdCBpcyBhIGdvb2Qg
cG9pbnQgdG8ga2VlcCBpbiBtaW5kLCBidXQgSSBhbHNvIHRoaW5rIGl0DQptaWdodCByZS1pbmZv
cmNlIHRoZSBjaG9pY2Ugb2YgaGF2aW5nIEVDQyBhcyBhIGZsYWcgaGVyZS4NCg0KU2luY2UgbXkg
dW5kZXJzdGFuZGluZyBvZiB0aGUgc3lzZnMgc3ltbGlua3MgdG8gaGVhcHMgaWRlYSBpcyBhYm91
dA0KYmVpbmcgYWJsZSB0byBmaWd1cmUgb3V0IGEgY29tbW9uIGhlYXAgZnJvbSBhIGNvbGxlY3Rp
b24gb2YgZGV2aWNlcywNCml0J3MgcmVhbGx5IGFib3V0IHRoZSBhYmlsaXR5IGZvciB0aGUgZHJp
dmVyIHRvIGFjY2VzcyB0aGUgdHlwZSBvZg0KbWVtb3J5LiBJZiBFQ0MgaXMganVzdCBhbiBhdHRy
aWJ1dGUgb2YgdGhlIHR5cGUgb2YgbWVtb3J5IChhcyBpbiB0aGlzDQpwYXRjaCBzZXJpZXMpLCBp
dCBiZWluZyBvbiBvciBvZmYgd29uJ3QgbmVjZXNzYXJpbHkgYWZmZWN0DQpjb21wYXRpYmlsaXR5
IG9mIHRoZSBidWZmZXIgd2l0aCB0aGUgZGV2aWNlLiAgU2ltaWxhcmx5ICJ1bmNhY2hlZCINCnNl
ZW1zIG1vcmUgb2YgYW4gYXR0cmlidXRlIG9mIG1lbW9yeSB0eXBlIGFuZCBub3QgYSB0eXBlIGl0
c2VsZi4NCkhhcmR3YXJlIHRoYXQgY2FuIGFjY2VzcyBub24tY29udGlndW91cyAic3lzdGVtIiBi
dWZmZXJzIGNhbiBhY2Nlc3MNCnVuY2FjaGVkIHN5c3RlbSBidWZmZXJzLg0KDQp0aGFua3MNCi1q
b2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
