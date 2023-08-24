Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3CA786AED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 11:00:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADA3E43FDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:00:53 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id DEDC63F637
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 09:00:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FyA43QAV;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7EDD060FB6;
	Thu, 24 Aug 2023 09:00:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6785BC433C8;
	Thu, 24 Aug 2023 09:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692867647;
	bh=pRjABeYbdZ7kYm0kauhfXEU9jP8GasEtUcwhn21dCxc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FyA43QAVtvboJtLBnYjCn2l5B6rkqjm/L5UMpQBdz1EkwfzYAJF8ceZbbmfDWvnHP
	 c0NMsslfjy8YhmJnLIzirvCjxSqW/j46XG9U+pmj4Rdo4Jb1Ib0MPYmuWBfIdRgQcv
	 BQCIKj1tuabIgXNffOpoMoKWz6fFmUEc9y0mHFL+CvHTWIXiMDWg2qmK0a8Rrr6utX
	 4rQmBV9mdjclIv6Vlg0WeG5NxWT/TfYNNSEl1D7oeImRLkiMXntWYDhOsYxx5vULvK
	 4Ndwj/COJJ2khusQSyxLJCpSzB4hk7l3yB5hTbRpcCaHI+0YefYTK3XWKmNGhMw9SO
	 EvN/cUb31UV0w==
From: Maxime Ripard <mripard@kernel.org>
To: Lee Jones <lee@kernel.org>
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
Message-Id: <169286759481.453038.12943953579128536191.b4-ty@kernel.org>
Date: Thu, 24 Aug 2023 10:59:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
X-Rspamd-Queue-Id: DEDC63F637
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,lists.freedesktop.org,redhat.com,ffwll.ch,gmail.com,nvidia.com,xilinx.com,freedesktop.org,ideasonboard.com,lists.linaro.org,lists.infradead.org,linux.intel.com,riseup.net,nxp.com,pengutronix.de,kernel.org,linaro.org,suse.de];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RYXCHOET7X5EI6CQL44PDP6XDRLYSWTG
X-Message-ID-Hash: RYXCHOET7X5EI6CQL44PDP6XDRLYSWTG
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Danilo Krummrich <dakr@redhat.com>, dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>, Jerome Glisse <glisse@freedesktop.org>, Jonathan Hunter <jonathanh@nvidia.com>, Karol Herbst <kherbst@redhat.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linux-tegra@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Lyude Paul <lyude@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?utf-8?q?Ma=C3=ADra_Canal?= <mairacanal@riseup.net>, Mario Limonciello <mario.limonciello@amd.com>, Mikko Perttunen <mperttunen
 @nvidia.com>, nouveau@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shashank Sharma <shashank.sharma@amd.com>, Shawn Guo <shawnguo@kernel.org>, Stanley Yang <Stanley.Yang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Michal Simek <michal.simek@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RYXCHOET7X5EI6CQL44PDP6XDRLYSWTG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gVGh1LCAyNCBBdWcgMjAyMyAwODozNjo0NSArMDEwMCwgTGVlIEpvbmVzIHdyb3RlOg0KPiBU
aGlzIHNldCBpcyBwYXJ0IG9mIGEgbGFyZ2VyIGVmZm9ydCBhdHRlbXB0aW5nIHRvIGNsZWFuLXVw
IFc9MQ0KPiBrZXJuZWwgYnVpbGRzLCB3aGljaCBhcmUgY3VycmVudGx5IG92ZXJ3aGVsbWluZ2x5
IHJpZGRsZWQgd2l0aA0KPiBuaWdnbHkgbGl0dGxlIHdhcm5pbmdzLg0KPiANCj4gQ2M6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4NCj4gQ2M6IGFtZC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBCZW4gU2tlZ2dzIDxic2tlZ2dzQHJlZGhhdC5jb20+DQo+
IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gQ2M6IERhbmlsbyBLcnVtbXJpY2gg
PGRha3JAcmVkaGF0LmNvbT4NCj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+
DQo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBGYWJpbyBFc3Rl
dmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+DQo+IENjOiBHb3VyYXYgU2FtYWl5YSA8Z3NhbWFpeWFA
bnZpZGlhLmNvbT4NCj4gQ2M6IEhhd2tpbmcgWmhhbmcgPEhhd2tpbmcuWmhhbmdAYW1kLmNvbT4N
Cj4gQ2M6IEh5dW4gS3dvbiA8aHl1bi5rd29uQHhpbGlueC5jb20+DQo+IENjOiBKZXJvbWUgR2xp
c3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Aub3JnPg0KPiBDYzogSm9uYXRoYW4gSHVudGVyIDxqb25h
dGhhbmhAbnZpZGlhLmNvbT4NCj4gQ2M6IEthcm9sIEhlcmJzdCA8a2hlcmJzdEByZWRoYXQuY29t
Pg0KPiBDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQu
Y29tPg0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IENjOiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZw0KPiBDYzogbGludXgtdGVncmFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBMdWJlbiBU
dWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPg0KPiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVk
aGF0LmNvbT4NCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+DQo+IENjOiAiTWHDrXJhIENhbmFsIiA8bWFpcmFjYW5hbEByaXNldXAubmV0
Pg0KPiBDYzogTWFyaW8gTGltb25jaWVsbG8gPG1hcmlvLmxpbW9uY2llbGxvQGFtZC5jb20+DQo+
IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+IENjOiBNaWNoYWwgU2lt
ZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPg0KPiBDYzogTWlra28gUGVydHR1bmVuIDxtcGVy
dHR1bmVuQG52aWRpYS5jb20+DQo+IENjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPg0KPiBDYzogIlBhbiwgWGlu
aHVpIiA8WGluaHVpLlBhbkBhbWQuY29tPg0KPiBDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0g
PGtlcm5lbEBwZW5ndXRyb25peC5kZT4NCj4gQ2M6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVu
Z3V0cm9uaXguZGU+DQo+IENjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
DQo+IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBhbWQuY29tPg0KPiBDYzog
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiBDYzogU3RhbmxleSBZYW5nIDxTdGFu
bGV5LllhbmdAYW1kLmNvbT4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+DQo+IENjOiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwuY29tPg0K
PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+IA0KPiBbLi4u
XQ0KDQpBcHBsaWVkIHRvIGRybS9kcm0tbWlzYyAoZHJtLW1pc2MtZml4ZXMpLg0KDQpUaGFua3Mh
DQpNYXhpbWUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
