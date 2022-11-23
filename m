Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E111E6369C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 20:19:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E5E73EE88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 19:19:44 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by lists.linaro.org (Postfix) with ESMTPS id 3FA6A3EBF7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 19:19:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b="g/nn420R";
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.222.45 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ua1-f45.google.com with SMTP id p1so6617729uak.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 11:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwMzuEDw937D1BNWUA0+s7FH/Sv/GWnLAgn8jMy5G/0=;
        b=g/nn420R1OojaK+ZrP5yWqCPRWhqBR3yJ1bGeZnSy5rk1jJk4NsK6VjXpTG+jsegam
         dBm2h9744Pvni4Tx3Vg54pqwd9DZjb1z22H0MRPKB+9jQeP56FN28EFvVyFJz2E5LBJ9
         oImZsEE9BVhSfGNwgLNk2FshAC5d0BF1yGL9i7WxmEAZHKb39SwzeGlFMlYz+KbBSU/1
         OBcH6y45lXdKxud/yud4DKrczBhWp7gVspfwxvN5+bANrEhxzl32kMonJcRnomPu/vRA
         fHY4Ktf8hzgF8/QRtPHetAsVza0ZL9CslbOCwPxxHRp9lsOejr9Lr8cvglm0ml7YP14v
         LTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwMzuEDw937D1BNWUA0+s7FH/Sv/GWnLAgn8jMy5G/0=;
        b=s91f1in3G9UFLz0e6+3iWPf6oE5wwZK2ev7X6+nfZJV9X6j7KJGpRA7WGlskIxd6da
         guFLlJ6ITDL09gKZoqHAmuXSoLRFVcBWfEU286rH84rKlJDEb5CzmxsyaQXDzuCPUzjQ
         YBmZ7Dy7SjqHaGFDabgL6VycHrXNVz8296YhLtz/o7A96uuhx7lTkI6xwAuuzuG8+GfF
         GurLAsxtR2fj45qTvBePtXSr/AgcvFzLq4nzUhNZAyeMy6YPWyZEPnYrhTRUwiNz80qa
         kG7ZPtz/TGSUAHBf7dZ+pLPMTkh6RgC07ahweUPG35a8mARQGU4+N+YgSixXGWlAUmaI
         rhVg==
X-Gm-Message-State: ANoB5pmOftFldxfAelbmzH5FE5g4QUEZCWmlhvQB3/8uV5NWlGgaLOhp
	vQ8M629QzQkwSxFG3bnPH9/PXhY3YuAA8uL0PTJI
X-Google-Smtp-Source: AA0mqf7ymL6DaildKXguHmgnNFyFiHrXAqeOVxwz1oN82oZWA+QVsylDv6FEwr3OYMAtZxhB6iEMFSrnXPfn7MTN3I8=
X-Received: by 2002:ab0:4986:0:b0:414:4bb5:3e54 with SMTP id
 e6-20020ab04986000000b004144bb53e54mr6742748uad.121.1669231174806; Wed, 23
 Nov 2022 11:19:34 -0800 (PST)
MIME-Version: 1.0
References: <TYCP286MB2323873BBDF88020781FB986CA3B9@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
 <TYCP286MB2323894F9939C27291FD998CCA0A9@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
 <56393e84-485b-42ba-5fce-d4a0d0017653@amd.com>
In-Reply-To: <56393e84-485b-42ba-5fce-d4a0d0017653@amd.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 23 Nov 2022 11:19:24 -0800
Message-ID: <CANDhNCrKaa580Hb-w5GcGxo-h5xr9_GSq86JUSfR+meVLqiY1g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 3FA6A3EBF7
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.78 / 15.00];
	BAYES_HAM(-2.78)[99.04%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[outlook.com,linaro.org,collabora.com,redhat.com,arm.com,ti.com,android.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ua1-f45.google.com:rdns,mail-ua1-f45.google.com:helo];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.45:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JX5PC7A44O5AH3GMWHYXX44RQ2QQDMI2
X-Message-ID-Hash: JX5PC7A44O5AH3GMWHYXX44RQ2QQDMI2
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dawei Li <set_pte_at@outlook.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, afd@ti.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JX5PC7A44O5AH3GMWHYXX44RQ2QQDMI2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMTA6MjQgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEhpIERhd2VpLA0KPg0KPiBmcm9tIHRo
ZSB0ZWNobmljYWwgZGVzY3JpcHRpb24sIGNvZGluZyBzdHlsZSBldGMuLiBpdCBsb29rcyBjbGVh
biB0byBtZSwNCj4gYnV0IEknbSB0aGUgY29tcGxldGVseSB3cm9uZyBwZXJzb24gdG8gYXNrIGZv
ciBhIGJhY2tncm91bmQgY2hlY2suDQo+DQo+IEkgaGF2ZSBhIGhpZ2ggbGV2ZWwgdW5kZXJzdGFu
ZGluZyBvZiBob3cgZG1hLWhlYXBzIHdvcmssIGJ1dCBub3QgYQ0KPiBzaW5nbGUgbGluZSBvZiB0
aGlzIGNvZGUgaXMgZnJvbSBtZS4NCj4NCj4gRmVlbCBmcmVlIHRvIGFkZCBteSBBY2tlZC1ieSwg
YnV0IExhdXJhLCBKb2huIGFuZCBvdGhlcnMgZG8geW91IGhhdmUgYW55DQo+IG9waW5pb24/DQoN
Ck5vIG9iamVjdGlvbiBmcm9tIG1lLg0KVGhhbmtzIERhd2VpIGZvciBzdWJtaXR0aW5nIHRoaXMg
aW1wcm92ZW1lbnQhDQoNCkFja2VkLWJ5OiBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29t
Pg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
