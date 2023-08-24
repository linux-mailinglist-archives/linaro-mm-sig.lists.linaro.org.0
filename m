Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE923786EC2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 14:10:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB34D3F200
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 12:10:34 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id AC24B3F200
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 12:10:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tFJbBINO;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BDB860DF2;
	Thu, 24 Aug 2023 12:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05851C433C8;
	Thu, 24 Aug 2023 12:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692879029;
	bh=CSd7vG2+yNbJmLSmxOK+LsxZvdAIs3DMqKIQeuztz18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tFJbBINOq8JmJtKGPhs0L1Tw3WTJBWJTDl4a4w7RTYJGEaNX/Q783RjyHyKeT9Asc
	 SNprwNp4Fpq2UruIWGxPe0BToLjLbqOgVy3nUrd6pshQHuQGwNomGKQN6Qu0+m7bSd
	 v52CdmPFULl8ZaGEzVr3yG9n3NlzcB6wczuvtrkjCwsrDU7X7c6z9wRDOec3Cszd6X
	 oKOefxOE8+zH9Fb1Q9h1QxXi+fC+5vGtWf5cMqBOPqO8RWh8ROkPp1QbJ77LnY6IVd
	 qbCr4GM1ioU36JXHCbYmzQ3lR5Vxodq55YFiMpZJLRCX4xbL2rW4H0a27iAroMsm7k
	 yyv6rvjRhvkZw==
Date: Thu, 24 Aug 2023 13:10:19 +0100
From: Lee Jones <lee@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Message-ID: <20230824121019.GU1380343@google.com>
References: <20230824073710.2677348-1-lee@kernel.org>
 <169286759481.453038.12943953579128536191.b4-ty@kernel.org>
 <pkjgu5hfazblvlnolvsbzo6zt7yq4zldjmmuoufgv5txvzdiyc@2vplkaitfypc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pkjgu5hfazblvlnolvsbzo6zt7yq4zldjmmuoufgv5txvzdiyc@2vplkaitfypc>
X-Rspamd-Queue-Id: AC24B3F200
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,lists.freedesktop.org,redhat.com,ffwll.ch,gmail.com,nvidia.com,xilinx.com,freedesktop.org,ideasonboard.com,lists.linaro.org,lists.infradead.org,linux.intel.com,riseup.net,nxp.com,pengutronix.de,kernel.org,linaro.org,suse.de];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UMOONL63MXAAP7F3WRQN5JKOGZGSBWLW
X-Message-ID-Hash: UMOONL63MXAAP7F3WRQN5JKOGZGSBWLW
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Danilo Krummrich <dakr@redhat.com>, dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>, Jerome Glisse <glisse@freedesktop.org>, Jonathan Hunter <jonathanh@nvidia.com>, Karol Herbst <kherbst@redhat.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linux-tegra@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Lyude Paul <lyude@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?iso-8859-1?Q?Ma=EDra?= Canal <mairacanal@riseup.net>, Mario Limonciello <mario.limonciello@amd.com>, Mikko Perttunen <mpertt
 unen@nvidia.com>, nouveau@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shashank Sharma <shashank.sharma@amd.com>, Shawn Guo <shawnguo@kernel.org>, Stanley Yang <Stanley.Yang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Michal Simek <michal.simek@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMOONL63MXAAP7F3WRQN5JKOGZGSBWLW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyNCBBdWcgMjAyMywgTWF4aW1lIFJpcGFyZCB3cm90ZToNCg0KPiBIaSwNCj4gDQo+
IE9uIFRodSwgQXVnIDI0LCAyMDIzIGF0IDEwOjU5OjU0QU0gKzAyMDAsIE1heGltZSBSaXBhcmQg
d3JvdGU6DQo+ID4gT24gVGh1LCAyNCBBdWcgMjAyMyAwODozNjo0NSArMDEwMCwgTGVlIEpvbmVz
IHdyb3RlOg0KPiA+ID4gVGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdlciBlZmZvcnQgYXR0ZW1w
dGluZyB0byBjbGVhbi11cCBXPTENCj4gPiA+IGtlcm5lbCBidWlsZHMsIHdoaWNoIGFyZSBjdXJy
ZW50bHkgb3ZlcndoZWxtaW5nbHkgcmlkZGxlZCB3aXRoDQo+ID4gPiBuaWdnbHkgbGl0dGxlIHdh
cm5pbmdzLg0KPiA+ID4gDQo+ID4gPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hl
ckBhbWQuY29tPg0KPiA+ID4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
PiBDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPg0KPiA+ID4gQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+ID4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gPiA+IENjOiBEYW5pbG8gS3J1bW1yaWNoIDxkYWty
QHJlZGhhdC5jb20+DQo+ID4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4N
Cj4gPiA+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBDYzogRmFi
aW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPg0KPiA+ID4gQ2M6IEdvdXJhdiBTYW1haXlh
IDxnc2FtYWl5YUBudmlkaWEuY29tPg0KPiA+ID4gQ2M6IEhhd2tpbmcgWmhhbmcgPEhhd2tpbmcu
WmhhbmdAYW1kLmNvbT4NCj4gPiA+IENjOiBIeXVuIEt3b24gPGh5dW4ua3dvbkB4aWxpbnguY29t
Pg0KPiA+ID4gQ2M6IEplcm9tZSBHbGlzc2UgPGdsaXNzZUBmcmVlZGVza3RvcC5vcmc+DQo+ID4g
PiBDYzogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4NCj4gPiA+IENjOiBL
YXJvbCBIZXJic3QgPGtoZXJic3RAcmVkaGF0LmNvbT4NCj4gPiA+IENjOiBMYXVyZW50IFBpbmNo
YXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+DQo+ID4gPiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+ID4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnDQo+ID4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+
ID4gPiBDYzogbGludXgtdGVncmFAdmdlci5rZXJuZWwub3JnDQo+ID4gPiBDYzogTHViZW4gVHVp
a292IDxsdWJlbi50dWlrb3ZAYW1kLmNvbT4NCj4gPiA+IENjOiBMeXVkZSBQYXVsIDxseXVkZUBy
ZWRoYXQuY29tPg0KPiA+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiBDYzogIk1hw61yYSBDYW5hbCIgPG1haXJhY2FuYWxA
cmlzZXVwLm5ldD4NCj4gPiA+IENjOiBNYXJpbyBMaW1vbmNpZWxsbyA8bWFyaW8ubGltb25jaWVs
bG9AYW1kLmNvbT4NCj4gPiA+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+
DQo+ID4gPiBDYzogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4NCj4gPiA+
IENjOiBNaWtrbyBQZXJ0dHVuZW4gPG1wZXJ0dHVuZW5AbnZpZGlhLmNvbT4NCj4gPiA+IENjOiBu
b3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE5YUCBMaW51eCBUZWFtIDxs
aW51eC1pbXhAbnhwLmNvbT4NCj4gPiA+IENjOiAiUGFuLCBYaW5odWkiIDxYaW5odWkuUGFuQGFt
ZC5jb20+DQo+ID4gPiBDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRy
b25peC5kZT4NCj4gPiA+IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRl
Pg0KPiA+ID4gQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4NCj4gPiA+
IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBhbWQuY29tPg0KPiA+ID4gQ2M6
IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gPiA+IENjOiBTdGFubGV5IFlhbmcg
PFN0YW5sZXkuWWFuZ0BhbWQuY29tPg0KPiA+ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+DQo+ID4gPiBDYzogVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVkaW5n
QGdtYWlsLmNvbT4NCj4gPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4NCj4gPiA+IA0KPiA+ID4gWy4uLl0NCj4gPiANCj4gPiBBcHBsaWVkIHRvIGRybS9kcm0t
bWlzYyAoZHJtLW1pc2MtZml4ZXMpLg0KPiANCj4gSSBnb3QgY29uZnVzZWQgd2l0aCBiNCB1c2Fn
ZSwgYnV0IHRoYXQgd2Fzbid0IGFjdHVhbGx5IGFwcGxpZWQuIE9ubHkgdGhlDQo+IHRocmVlIHBh
dGNoZXMgSSBleHBsaWNpdGx5IG1lbnRpb25lZCB3ZXJlLCBzb3JyeSBmb3IgdGhlIGNvbmZ1c2lv
bi4NCg0KOikNCg0KVGhhbmtzIE1heGltZS4NCg0KLS0gDQpMZWUgSm9uZXMgW+adjueQvOaWr10N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
