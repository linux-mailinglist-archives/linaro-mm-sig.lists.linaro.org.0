Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ED944786EAF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 14:07:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5B9F3F200
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 12:07:51 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 626883F200
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 12:07:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=rsSVe7Tg;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D1EE8622C0;
	Thu, 24 Aug 2023 12:07:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 493D8C433C8;
	Thu, 24 Aug 2023 12:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692878866;
	bh=XGcUYxKeus/elTOoo1TjZur2p/AUG6A2tJIcsd6tkeY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rsSVe7TgROYG1eWOt5xc+RTZFGzWVP57WTUrt7RVc1v7xwhiWcgSchrbaVPEI+2tI
	 n1Rh4UbOh+Ln4e6fL5ZMoOetp8KgWCwOiMLCOs+IylzDhL8RApvllbJXgiZ3GdpL8U
	 i1Z2IbTVQmipwBnz/wmvTxRx68NKj7igKU3SNfFwkoxeaMxIB+khZboENPg/rHmz9K
	 GBDYsOifsqOPM6DfahgDS1+TmELqmdew1kTvyVkejTiq4r9p540lLTO3unNGYRWzdT
	 clXGNzTBHyFZYghbE3br+BXurpvs1+DgMi3cDunaFl0t2ZI2Kh5D2hn+HiySfUC00i
	 pLn15gYif2/8g==
Date: Thu, 24 Aug 2023 13:07:35 +0100
From: Lee Jones <lee@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230824120735.GS1380343@google.com>
References: <20230824073710.2677348-1-lee@kernel.org>
 <87wmxk4xt3.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wmxk4xt3.fsf@intel.com>
X-Rspamd-Queue-Id: 626883F200
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,nvidia.com,riseup.net,gmail.com,ideasonboard.com,linaro.org,amd.com,xilinx.com,vger.kernel.org,pengutronix.de,kernel.org,lists.linaro.org,nxp.com,lists.infradead.org,suse.de,freedesktop.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BF6OFANWXPCDALYSXKUYH6X2SPJVLAGS
X-Message-ID-Hash: BF6OFANWXPCDALYSXKUYH6X2SPJVLAGS
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Mikko Perttunen <mperttunen@nvidia.com>, =?iso-8859-1?Q?Ma=EDra?= Canal <mairacanal@riseup.net>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sumit Semwal <sumit.semwal@linaro.org>, Mario Limonciello <mario.limonciello@amd.com>, Shashank Sharma <shashank.sharma@amd.com>, Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>, Danilo Krummrich <dakr@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, linux-media@vger.kernel.org, Stanley Yang <Stanley.Yang@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.c
 om>, Thomas Zimmermann <tzimmermann@suse.de>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, Jerome Glisse <glisse@freedesktop.org>, Alex Deucher <alexander.deucher@amd.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Shawn Guo <shawnguo@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BF6OFANWXPCDALYSXKUYH6X2SPJVLAGS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyNCBBdWcgMjAyMywgSmFuaSBOaWt1bGEgd3JvdGU6DQoNCj4gT24gVGh1LCAyNCBB
dWcgMjAyMywgTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gVGhpcyBzZXQg
aXMgcGFydCBvZiBhIGxhcmdlciBlZmZvcnQgYXR0ZW1wdGluZyB0byBjbGVhbi11cCBXPTENCj4g
PiBrZXJuZWwgYnVpbGRzLCB3aGljaCBhcmUgY3VycmVudGx5IG92ZXJ3aGVsbWluZ2x5IHJpZGRs
ZWQgd2l0aA0KPiA+IG5pZ2dseSBsaXR0bGUgd2FybmluZ3MuDQo+IA0KPiBUaGUgbmV4dCBxdWVz
dGlvbiBpcywgaG93IGRvIHdlIGtlZXAgaXQgVz0xIGNsZWFuIGdvaW5nIGZvcndhcmQ/DQoNCk15
IHBsYW4gd2FzIHRvIGZpeCB0aGVtIGFsbCwgdGhlbiBtb3ZlIGVhY2ggd2FybmluZyB0byBXPTAu
DQoNCkFybmQgcmVjZW50bHkgc3VibWl0dGVkIGEgc2V0IGRvaW5nIGp1c3QgdGhhdCBmb3IgYSBi
dW5jaCBvZiB0aGVtLg0KDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA4MTExNDAz
MjcuMzc1NDU5Ny0xLWFybmRAa2VybmVsLm9yZy8NCg0KSSBsaWtlIHRvIHRoaW5rIGEgYnVuY2gg
b2YgdGhpcyBpcyBidWlsdCBvbiB0b3Agb2YgbXkgcHJldmlvdXMgZWZmb3J0cy4NCg0KR1BVIGlz
IGEgcGFydGljdWxhcmx5IHRyaWNreSB0aG91Z2ggLSB0aGUgd2FybmluZ3Mgc2VlbSB0byBjb21l
IGluIGZhc3Rlcg0KdGhhbiBJIGNhbiBzcXVhc2ggdGhlbS4gIE1heWJlIHRoZSBtYWludGFpbmVy
cyBjYW4gZmluZCBhIHdheSB0byB0ZXN0DQpuZXcgcGF0Y2hlcyBvbiBtZXJnZT8NCg0KPiBNb3N0
IHBlb3BsZSBkb24ndCB1c2UgVz0xIGJlY2F1c2UgaXQncyB0b28gbm9pc3ksIHNvIGl0J3MgYSBi
aXQgb2YgYQ0KPiBjYXRjaC0yMi4NCj4gDQo+IEluIGk5MTUsIHdlIGVuYWJsZSBhIGxvdCBvZiBX
PTEgd2FybmluZ3MgdXNpbmcgc3ViZGlyLWNjZmxhZ3MteSBpbiBvdXINCj4gTWFrZWZpbGUuIEZv
ciBDSS9kZXZlbG9wZXIgdXNlIHdlIGFsc28gZW5hYmxlIGtlcm5lbC1kb2Mgd2FybmluZ3MgYnkN
Cj4gZGVmYXVsdC4NCj4gDQo+IFNob3VsZCB3ZSBzdGFydCBlbmFibGluZyBzb21lIG9mIHRob3Nl
IHdhcm5pbmcgZmxhZ3MgaW4gZHJtL01ha2VmaWxlIHRvDQo+IHRvIGtlZXAgdGhlIGVudGlyZSBz
dWJzeXN0ZW0gd2FybmluZyBmcmVlPw0KDQpUaGF0IHdvdWxkIHdlIGF3ZXNvbWUhICBXZSdkIGp1
c3QgbmVlZCBidXktaW4uDQoNCi0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
