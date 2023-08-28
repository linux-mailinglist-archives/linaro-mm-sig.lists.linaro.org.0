Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AE78B521
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Aug 2023 18:11:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B52240AE4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Aug 2023 16:11:20 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id CE6EA3EE3B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Aug 2023 16:11:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=MkBv4LmW;
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4RZFsp6GXsz9sV3;
	Mon, 28 Aug 2023 18:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1693239070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Aoaaryzi6SBqAG9hPq9YHz3/mtxEs0iaU4L1R/VYHlw=;
	b=MkBv4LmWqB4b8yilepEp0iTZf/XsZa8/Ct8sticPhsSKzvm4Ctczto5Rtrl5x79oopv8eg
	29srTw4rlIoeV2p2oXlvwKAtZEHoIRGFv1iiPmAntjU3cR+V+2nNYzJ2sx2FUbYDcnooOl
	HfRGMoR6EMGx9Xaod1negh2/+FllGQiErZH6GtGuDDl+vPU48YW1V53VEOpesZlh5RQF0T
	WXRnCU/jlFI4tnv/XVOxIZAbzA+UeuNHD8q9yd6+NQq01hJauOcSg6aa778z7PMM5lEGvX
	dYJaG+1u73gNfrXHKZzfsVecd3N3G1b8gxC20QWYhY4TFpNSRINsebkVN6HNfw==
Message-ID: <88d4d764-6b71-3eff-3e2c-31f2b2f3ea6f@mailbox.org>
Date: Mon, 28 Aug 2023 18:11:05 +0200
MIME-Version: 1.0
Content-Language: de-CH-frami, en-CA
To: Lee Jones <lee@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>
References: <20230824073710.2677348-1-lee@kernel.org>
 <87wmxk4xt3.fsf@intel.com> <20230824120735.GS1380343@google.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <20230824120735.GS1380343@google.com>
X-MBO-RS-META: ibs94ie8miru1dh146saewmp5c3pjzxf
X-MBO-RS-ID: aab928bbbf67e7ef629
X-Rspamd-Queue-Id: CE6EA3EE3B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	RCVD_IN_DNSWL_HI(-0.50)[80.241.56.172:from];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:80.241.56.0/21];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:199118, ipnet:80.241.56.0/21, country:DE];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,nvidia.com,riseup.net,gmail.com,ideasonboard.com,linaro.org,amd.com,xilinx.com,vger.kernel.org,suse.de,pengutronix.de,kernel.org,lists.linaro.org,nxp.com,lists.infradead.org,freedesktop.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: M6L5PAJH6R7UGBWNZ64NDTMBH7XWGF3G
X-Message-ID-Hash: M6L5PAJH6R7UGBWNZ64NDTMBH7XWGF3G
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Mikko Perttunen <mperttunen@nvidia.com>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shashank Sharma <shashank.sharma@amd.com>, Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>, Danilo Krummrich <dakr@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, Stanley Yang <Stanley.Yang@amd.com>, linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vge
 r.kernel.org, Hawking Zhang <Hawking.Zhang@amd.com>, Jerome Glisse <glisse@freedesktop.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Alex Deucher <alexander.deucher@amd.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Shawn Guo <shawnguo@kernel.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Mario Limonciello <mario.limonciello@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M6L5PAJH6R7UGBWNZ64NDTMBH7XWGF3G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOC8yNC8yMyAxNDowNywgTGVlIEpvbmVzIHdyb3RlOg0KPiBPbiBUaHUsIDI0IEF1ZyAyMDIz
LCBKYW5pIE5pa3VsYSB3cm90ZToNCj4+IE9uIFRodSwgMjQgQXVnIDIwMjMsIExlZSBKb25lcyA8
bGVlQGtlcm5lbC5vcmc+IHdyb3RlOg0KPj4+IFRoaXMgc2V0IGlzIHBhcnQgb2YgYSBsYXJnZXIg
ZWZmb3J0IGF0dGVtcHRpbmcgdG8gY2xlYW4tdXAgVz0xDQo+Pj4ga2VybmVsIGJ1aWxkcywgd2hp
Y2ggYXJlIGN1cnJlbnRseSBvdmVyd2hlbG1pbmdseSByaWRkbGVkIHdpdGgNCj4+PiBuaWdnbHkg
bGl0dGxlIHdhcm5pbmdzLg0KPj4NCj4+IFRoZSBuZXh0IHF1ZXN0aW9uIGlzLCBob3cgZG8gd2Ug
a2VlcCBpdCBXPTEgY2xlYW4gZ29pbmcgZm9yd2FyZD8NCj4gDQo+IE15IHBsYW4gd2FzIHRvIGZp
eCB0aGVtIGFsbCwgdGhlbiBtb3ZlIGVhY2ggd2FybmluZyB0byBXPTAuDQo+IA0KPiBBcm5kIHJl
Y2VudGx5IHN1Ym1pdHRlZCBhIHNldCBkb2luZyBqdXN0IHRoYXQgZm9yIGEgYnVuY2ggb2YgdGhl
bS4NCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDgxMTE0MDMyNy4zNzU0
NTk3LTEtYXJuZEBrZXJuZWwub3JnLw0KPiANCj4gSSBsaWtlIHRvIHRoaW5rIGEgYnVuY2ggb2Yg
dGhpcyBpcyBidWlsdCBvbiB0b3Agb2YgbXkgcHJldmlvdXMgZWZmb3J0cy4NCj4gDQo+IEdQVSBp
cyBhIHBhcnRpY3VsYXJseSB0cmlja3kgdGhvdWdoIC0gdGhlIHdhcm5pbmdzIHNlZW0gdG8gY29t
ZSBpbiBmYXN0ZXINCj4gdGhhbiBJIGNhbiBzcXVhc2ggdGhlbS4gIE1heWJlIHRoZSBtYWludGFp
bmVycyBjYW4gZmluZCBhIHdheSB0byB0ZXN0DQo+IG5ldyBwYXRjaGVzIG9uIG1lcmdlPw0KDQpP
bmUgYXBwcm9hY2ggZm9yIHRoaXMgd2hpY2ggaGFzIHByb3ZlZCBlZmZlY3RpdmUgaW4gTWVzYSBh
bmQgb3RoZXIgcHJvamVjdHMgaXMgdG8gbWFrZSB3YXJuaW5ncyBmYXRhbCBpbiBDSSB3aGljaCBt
dXN0IHBhc3MgZm9yIGFueSBjaGFuZ2VzIHRvIGJlIG1lcmdlZC4gVGhlcmUgaXMgb25nb2luZyB3
b3JrIHRvd2FyZCBpbnRyb2R1Y2luZyB0aGlzIGZvciB0aGUgRFJNIHN1YnN5c3RlbSwgdXNpbmcg
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZyBDSS4NCg0KDQotLSANCkVhcnRobGluZyBNaWNoZWwgRMOk
bnplciAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICBodHRwczovL3JlZGhhdC5jb20NCkxp
YnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAgICAgICAgfCAgICAgICAgIE1lc2EgYW5kIFh3YXls
YW5kIGRldmVsb3Blcg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
