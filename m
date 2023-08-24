Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7E8786EF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 14:24:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94F3C3F650
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 12:24:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C17073F053
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 12:24:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="CqOlaS/Q";
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5DFEA60C4F;
	Thu, 24 Aug 2023 12:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC2CBC433C7;
	Thu, 24 Aug 2023 12:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692879851;
	bh=rXHeHAFXjN/zA3rYC/1HhA1l11PWkd2Qvj22VCRsCGs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CqOlaS/QfUs5XXJTiSG68eVAETcwld0Oyyw2XmGw3vbPcDbOEpspeApsyEBSY0lzY
	 BJl4NEsEvECi0Fn66tjoluhCVVSbj/3Fe3eaBPUimBzycU6Ew02hPKbed/8je8CkRf
	 1+WsWnIyZzbwSlIn/6j5RP45+CkV50Bn18C+mlY07Wd9kkPeHC9Xv+VQYWAGMT8iqG
	 LXQzMPYXHDBPiYetArnubErS0XhVoCULd5vNPc0T7OZ+5eZRVXxQpCJkyh5R3oVYEa
	 qX2bk7/9/M9K5EutOOlmwBQ30zkp0qc/t1PRSgiuL+KJDx47ih8QPQIzlYGQ4Wflwi
	 HyIl1AsJiWaIg==
Date: Thu, 24 Aug 2023 13:24:01 +0100
From: Lee Jones <lee@kernel.org>
To: Hamza Mahfooz <hamza.mahfooz@amd.com>
Message-ID: <20230824122401.GY1380343@google.com>
References: <20230824073710.2677348-1-lee@kernel.org>
 <87wmxk4xt3.fsf@intel.com>
 <20230824120735.GS1380343@google.com>
 <a3c4c781-2f74-4b09-9db4-7b947897ef5a@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3c4c781-2f74-4b09-9db4-7b947897ef5a@amd.com>
X-Rspamd-Queue-Id: C17073F053
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[linux.intel.com,redhat.com,lists.freedesktop.org,nvidia.com,riseup.net,gmail.com,ideasonboard.com,linaro.org,amd.com,xilinx.com,vger.kernel.org,suse.de,pengutronix.de,kernel.org,lists.linaro.org,nxp.com,lists.infradead.org,freedesktop.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2B5COE3DXKNUE6UHKZT7DTWJFDZZLK5B
X-Message-ID-Hash: 2B5COE3DXKNUE6UHKZT7DTWJFDZZLK5B
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jani Nikula <jani.nikula@linux.intel.com>, Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Mikko Perttunen <mperttunen@nvidia.com>, =?iso-8859-1?Q?Ma=EDra?= Canal <mairacanal@riseup.net>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shashank Sharma <shashank.sharma@amd.com>, Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>, Danilo Krummrich <dakr@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, Stanley Yang <Stanley.Yang@amd.com>, linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>, "Pan, X
 inhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, Hawking Zhang <Hawking.Zhang@amd.com>, Jerome Glisse <glisse@freedesktop.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Alex Deucher <alexander.deucher@amd.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Shawn Guo <shawnguo@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mario Limonciello <mario.limonciello@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2B5COE3DXKNUE6UHKZT7DTWJFDZZLK5B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyNCBBdWcgMjAyMywgSGFtemEgTWFoZm9veiB3cm90ZToNCg0KPiANCj4gT24gOC8y
NC8yMyAwODowNywgTGVlIEpvbmVzIHdyb3RlOg0KPiA+IE9uIFRodSwgMjQgQXVnIDIwMjMsIEph
bmkgTmlrdWxhIHdyb3RlOg0KPiA+IA0KPiA+ID4gT24gVGh1LCAyNCBBdWcgMjAyMywgTGVlIEpv
bmVzIDxsZWVAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPiA+IFRoaXMgc2V0IGlzIHBhcnQgb2Yg
YSBsYXJnZXIgZWZmb3J0IGF0dGVtcHRpbmcgdG8gY2xlYW4tdXAgVz0xDQo+ID4gPiA+IGtlcm5l
bCBidWlsZHMsIHdoaWNoIGFyZSBjdXJyZW50bHkgb3ZlcndoZWxtaW5nbHkgcmlkZGxlZCB3aXRo
DQo+ID4gPiA+IG5pZ2dseSBsaXR0bGUgd2FybmluZ3MuDQo+ID4gPiANCj4gPiA+IFRoZSBuZXh0
IHF1ZXN0aW9uIGlzLCBob3cgZG8gd2Uga2VlcCBpdCBXPTEgY2xlYW4gZ29pbmcgZm9yd2FyZD8N
Cj4gPiANCj4gPiBNeSBwbGFuIHdhcyB0byBmaXggdGhlbSBhbGwsIHRoZW4gbW92ZSBlYWNoIHdh
cm5pbmcgdG8gVz0wLg0KPiA+IA0KPiA+IEFybmQgcmVjZW50bHkgc3VibWl0dGVkIGEgc2V0IGRv
aW5nIGp1c3QgdGhhdCBmb3IgYSBidW5jaCBvZiB0aGVtLg0KPiA+IA0KPiA+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDIzMDgxMTE0MDMyNy4zNzU0NTk3LTEtYXJuZEBrZXJuZWwub3Jn
Lw0KPiA+IA0KPiA+IEkgbGlrZSB0byB0aGluayBhIGJ1bmNoIG9mIHRoaXMgaXMgYnVpbHQgb24g
dG9wIG9mIG15IHByZXZpb3VzIGVmZm9ydHMuDQo+ID4gDQo+ID4gR1BVIGlzIGEgcGFydGljdWxh
cmx5IHRyaWNreSB0aG91Z2ggLSB0aGUgd2FybmluZ3Mgc2VlbSB0byBjb21lIGluIGZhc3Rlcg0K
PiA+IHRoYW4gSSBjYW4gc3F1YXNoIHRoZW0uICBNYXliZSB0aGUgbWFpbnRhaW5lcnMgY2FuIGZp
bmQgYSB3YXkgdG8gdGVzdA0KPiA+IG5ldyBwYXRjaGVzIG9uIG1lcmdlPw0KPiANCj4gSSBndWVz
cyBvbiB0aGF0IG5vdGUsIGRvIHlvdSBrbm93IGlmIHRoZXJlIGlzIGEgd2F5IHRvIHJ1bg0KPiBg
c2NyaXB0cy9rZXJuZWwtZG9jYCBvbiBwYXRjaGVzIGluc3RlYWQgb2Ygd2hvbGUgZmlsZXM/IFRo
YXQgd291bGQgbWFrZQ0KPiBtdWNoIGVhc2llciB0byBibG9jayBuZXcga2VybmVsLWRvYyBpc3N1
ZXMgZnJvbSBhcHBlYXJpbmcuDQoNCk5vdCBvZmYgaGFuZC4NCg0KV2hlbiBJIHJ1biBidWlsZHMg
b24gcGF0Y2hlcyBJIGF1dGhvciwgSSBydW4gdGhlbSB0d2ljZSBjb25jdXJyZW50bHkuDQpPbmNl
IG9uIHRoZSBjb21taXQgSSdtIGJhc2luZyBvbiBhbmQgb25jZSBvbiB0aGUgSEVBRCBvZiBteSBw
YXRjaHNldC4gIEkNCnRoZW4gZGlmZiB0aGUgdHdvLiAgU28gYXMgbG9uZyBhcyB0aGUgbnVtYmVy
IG9mIGVycm9ycyBhbmQgd2FybmluZ3Mgc3RheQ0KdGhlIHNhbWUgb3IgcmVkdWNlLCB3ZSdyZSBn
b2xkZW4uDQoNClBlcmhhcHMgdGhlIHNhbWUgbWV0aG9kIGNvdWxkIGJlIHVzZWQgd2l0aCBga2Vy
bmVsLWRvY2A/DQoNCi0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
