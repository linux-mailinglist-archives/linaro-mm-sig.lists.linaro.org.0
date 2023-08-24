Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0769786EB7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 14:09:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64BFB3F96F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 12:09:14 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 283CD3F200
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 12:09:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="oRUYmi/V";
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA1CF662BA;
	Thu, 24 Aug 2023 12:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CFBCC433C8;
	Thu, 24 Aug 2023 12:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692878949;
	bh=nDrNKOtmg11/enQQ5RREoJgVg8/0zOccRWjy98KT4qQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oRUYmi/VCinRtYudh5/5tdhvXDfrGVv4obVDADWdP1BqXTCD2nVysXU+QdF+KVtI3
	 OfrD/QYGQCFaNVe0xP8E6qig8Bj6UQGEhYb1z/bbfnWXKlREUW+pdjRushxaCxZkRq
	 YoluSLv7+T+KYTaxP/gog5iV8k3wtgnkMQjrRHZRhkSLe6th/dFN3O7t8izie30yrc
	 +PaYB8efb/alntKNaTtSXmJAKRIoDz240uw3FneHjThhmfMYulp+fQKO6kw5907Dtm
	 YF6cPwF+bbWmW+ihwXeY3z/mup64gCiZAU1ByVA4KIgqVdMqve6pQcXQibnGMu7L5U
	 IDq2nl106iyaw==
Date: Thu, 24 Aug 2023 13:08:59 +0100
From: Lee Jones <lee@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230824120859.GT1380343@google.com>
References: <20230824073710.2677348-1-lee@kernel.org>
 <87wmxk4xt3.fsf@intel.com>
 <20230824120735.GS1380343@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230824120735.GS1380343@google.com>
X-Rspamd-Queue-Id: 283CD3F200
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
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
Message-ID-Hash: MZNL5NIW6VKOPRSYOPKCVTLTNMO4W3G3
X-Message-ID-Hash: MZNL5NIW6VKOPRSYOPKCVTLTNMO4W3G3
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Mikko Perttunen <mperttunen@nvidia.com>, =?iso-8859-1?Q?Ma=EDra?= Canal <mairacanal@riseup.net>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sumit Semwal <sumit.semwal@linaro.org>, Mario Limonciello <mario.limonciello@amd.com>, Shashank Sharma <shashank.sharma@amd.com>, Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>, Danilo Krummrich <dakr@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, linux-media@vger.kernel.org, Stanley Yang <Stanley.Yang@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.c
 om>, Thomas Zimmermann <tzimmermann@suse.de>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, Jerome Glisse <glisse@freedesktop.org>, Alex Deucher <alexander.deucher@amd.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Shawn Guo <shawnguo@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MZNL5NIW6VKOPRSYOPKCVTLTNMO4W3G3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyNCBBdWcgMjAyMywgTGVlIEpvbmVzIHdyb3RlOg0KDQo+IE9uIFRodSwgMjQgQXVn
IDIwMjMsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiANCj4gPiBPbiBUaHUsIDI0IEF1ZyAyMDIzLCBM
ZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToNCj4gPiA+IFRoaXMgc2V0IGlzIHBhcnQg
b2YgYSBsYXJnZXIgZWZmb3J0IGF0dGVtcHRpbmcgdG8gY2xlYW4tdXAgVz0xDQo+ID4gPiBrZXJu
ZWwgYnVpbGRzLCB3aGljaCBhcmUgY3VycmVudGx5IG92ZXJ3aGVsbWluZ2x5IHJpZGRsZWQgd2l0
aA0KPiA+ID4gbmlnZ2x5IGxpdHRsZSB3YXJuaW5ncy4NCj4gPiANCj4gPiBUaGUgbmV4dCBxdWVz
dGlvbiBpcywgaG93IGRvIHdlIGtlZXAgaXQgVz0xIGNsZWFuIGdvaW5nIGZvcndhcmQ/DQo+IA0K
PiBNeSBwbGFuIHdhcyB0byBmaXggdGhlbSBhbGwsIHRoZW4gbW92ZSBlYWNoIHdhcm5pbmcgdG8g
Vz0wLg0KDQpTb21lIGhpc3Rvcnk6DQoNCi0gU3RhcnRpbmcgd2l0aCB2NS44LXJjMTogICAgICAg
MTg4NjcNCi0gMjAyMC0wNy0wMTogICAgICAgICAgICAgICAgICAgMTgwODkNCi0gMjAyMC0wNy0w
NzogICAgICAgICAgICAgICAgICAgMTcyODgNCi0gMjAyMC0wNy0xNzogICAgICAgICAgICAgICAg
ICAgMTU3NjINCi0gMjAyMC0wNy0yMDogICAgICAgICAgICAgICAgICAgMTU3MjQNCi0gMjAyMC0w
Ny0yMzogICAgICAgICAgICAgICAgICAgMTUxMTYNCi0gMjAyMC0wOC0xMjogICAgICAgICAgICAg
ICAgICAgMTUxODQNCi0gMjAyMC0xMC0xOTogICAgICAgICAgICAgICAgICAgMTA5MDkNCi0gMjAy
MC0xMS0wNDogICAgICAgICAgICAgICAgICAgIDkzODUNCi0gMjAyMS0wMS0wNDogICAgICAgICAg
ICAgICAgICAgIDU0NzgNCi0gMjAyMS0wMS0xMiAgICAgICAgICAgICAgICAgICAgIDQ3NDkNCi0g
MjAyMS0wMS0yOSAgICAgICAgICAgICAgICAgICAgIDQ5MTENCi0gMjAyMS0wNC0wNyAgICAgICAg
ICAgICAgICAgICAgIDM1OTQNCi0gMjAyMS0wNS0yMCAgICAgICAgICAgICAgICAgICAgIDI5MzgN
Ci0gMjAyMS0wNy0wMSAgICAgICAgICAgICAgICAgICAgIDI1ODcNCi0gMjAyMy0wMi0xMCAgICAg
ICAgICAgICAgICAgICAgIDI1ODcNCi0gMjAyMy0wOC0yMiAgICAgICAgICAgICAgICAgICAgIDE2
NTANCg0KPiBBcm5kIHJlY2VudGx5IHN1Ym1pdHRlZCBhIHNldCBkb2luZyBqdXN0IHRoYXQgZm9y
IGEgYnVuY2ggb2YgdGhlbS4NCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIz
MDgxMTE0MDMyNy4zNzU0NTk3LTEtYXJuZEBrZXJuZWwub3JnLw0KPiANCj4gSSBsaWtlIHRvIHRo
aW5rIGEgYnVuY2ggb2YgdGhpcyBpcyBidWlsdCBvbiB0b3Agb2YgbXkgcHJldmlvdXMgZWZmb3J0
cy4NCj4gDQo+IEdQVSBpcyBhIHBhcnRpY3VsYXJseSB0cmlja3kgdGhvdWdoIC0gdGhlIHdhcm5p
bmdzIHNlZW0gdG8gY29tZSBpbiBmYXN0ZXINCj4gdGhhbiBJIGNhbiBzcXVhc2ggdGhlbS4gIE1h
eWJlIHRoZSBtYWludGFpbmVycyBjYW4gZmluZCBhIHdheSB0byB0ZXN0DQo+IG5ldyBwYXRjaGVz
IG9uIG1lcmdlPw0KPiANCj4gPiBNb3N0IHBlb3BsZSBkb24ndCB1c2UgVz0xIGJlY2F1c2UgaXQn
cyB0b28gbm9pc3ksIHNvIGl0J3MgYSBiaXQgb2YgYQ0KPiA+IGNhdGNoLTIyLg0KPiA+IA0KPiA+
IEluIGk5MTUsIHdlIGVuYWJsZSBhIGxvdCBvZiBXPTEgd2FybmluZ3MgdXNpbmcgc3ViZGlyLWNj
ZmxhZ3MteSBpbiBvdXINCj4gPiBNYWtlZmlsZS4gRm9yIENJL2RldmVsb3BlciB1c2Ugd2UgYWxz
byBlbmFibGUga2VybmVsLWRvYyB3YXJuaW5ncyBieQ0KPiA+IGRlZmF1bHQuDQo+ID4gDQo+ID4g
U2hvdWxkIHdlIHN0YXJ0IGVuYWJsaW5nIHNvbWUgb2YgdGhvc2Ugd2FybmluZyBmbGFncyBpbiBk
cm0vTWFrZWZpbGUgdG8NCj4gPiB0byBrZWVwIHRoZSBlbnRpcmUgc3Vic3lzdGVtIHdhcm5pbmcg
ZnJlZT8NCj4gDQo+IFRoYXQgd291bGQgd2UgYXdlc29tZSEgIFdlJ2QganVzdCBuZWVkIGJ1eS1p
bi4NCg0KLS0gDQpMZWUgSm9uZXMgW+adjueQvOaWr10NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
