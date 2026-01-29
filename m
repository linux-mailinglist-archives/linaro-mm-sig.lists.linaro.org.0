Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKglHCkQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:36:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D6411C1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:36:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F08A643FA8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:36:55 +0000 (UTC)
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	by lists.linaro.org (Postfix) with ESMTPS id 1A13B3F722
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jan 2026 21:04:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=uXXdJzKn;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="V EWQR+t";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.155 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id DFD3E1400182;
	Thu, 29 Jan 2026 16:04:06 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Thu, 29 Jan 2026 16:04:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1769720646;
	 x=1769807046; bh=rfxL9trrLaaEV4htdtVg7LrHJEuF1NTVmjAkBCaqU44=; b=
	uXXdJzKnDnKXqOsAXDX1Ulz9zAZCRVuMW2iBfNo6F22pCrJP7TssZnsVX85wHZgi
	CjAPTuuNzIcBIffg+sc5+7poyeUx9HONBJuFwTxdXA6S0MUIJdFunoAMayCoW3Zl
	3RHNBEWp1w0rYVW1UBPxhYLES4nrc/RaJSbX2DDBfhn7tekUy2ue1MRDcug9AMvp
	rYS/JpigTohauL/NK+8FGl/I3jpkU8J6dnqq0eECiWyZZ23KhMvmh1o9P8M4oZi7
	cq5EVt1EIdzB0LzqS2DgbrZZEPiaJKQma6G74gZAgiC8huuyCWXuU16AhgQisQs5
	36YV+TVHmjf9M5KGKl8/Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1769720646; x=
	1769807046; bh=rfxL9trrLaaEV4htdtVg7LrHJEuF1NTVmjAkBCaqU44=; b=V
	EWQR+tr/hjolr8Z4b9ZwfMetAixTfio4tWGaWAL6tvbzWqM4l0boL8V7tMvDO9SB
	DckSKkOJRQHbFAXeKNCLaCYQtqUIQUPNpatb4KLdtzv6fWgPFvB8+LFkh6CRH9WG
	nLcxVQWsybr0dVy/cQeoV4VdI7nF7jSI/FbdXY3VU52kpBn/xlcKAs896nlsjTZX
	oqDoegH3B3FqdbAcrKEcV7hWp69ovcH86Odehr2mB3Qbjq3tSBv/ALR9bUGjo1v6
	BHXT5NmpvNlzFieif3v76r3gbZj0zuj0j5PaGBxHs8bmgXRjJrQKdlUT5RxrJNpy
	1wxejI2154humc49AGJew==
X-ME-Sender: <xms:Rct7aYs357rtjI1NvUBjnJZIzqYpQ5pvF86tn-SYya6Z5FB3FMm69A>
    <xme:Rct7aXs0wgsC9SJjq2X3tgwQjaSHfDH0zmu9-ymBz9bstekVmlNNsuqXiZ4mV0jxZ
    w7Es_YNz9iAOXcKYaU_TKaZVrafkugv_EMUZtxhPff39eo0VNzhqA>
X-ME-Received: <xmr:Rct7aT35eaZALWJYoiR_CZqmjQCqIGjRZHby9U40msnxiyMVFGgB4Eshmxk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduieejvddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtqhertdertdejnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpeegudevhfejueefveduieeuueeifeettdekveekhffgvdetfeelueehgfdt
    heffhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grlhgvgiesshhhrgiisghothdrohhrghdpnhgspghrtghpthhtohepfeehpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopehlvghonheskhgvrhhnvghlrdhorhhgpdhrtghpth
    htohepkhgvvhhinhdrthhirghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepjhhgghes
    iihivghpvgdrtggrpdhrtghpthhtohepphhrrggrnhesghhoohhglhgvrdgtohhmpdhrtg
    hpthhtohepshhumhhithdrshgvmhifrghlsehlihhnrghrohdrohhrghdprhgtphhtthho
    pegthhhrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomhdprhgtphhtthhopegrlh
    gvgigrnhguvghrrdguvghutghhvghrsegrmhgurdgtohhmpdhrtghpthhtoheprghirhhl
    ihgvugesghhmrghilhdrtghomhdprhgtphhtthhopehsihhmohhnrgesfhhffihllhdrtg
    hh
X-ME-Proxy: <xmx:Rct7aULzyE4y8BBhF3rdyaujcyzLfNTpE5wkyl1zdMedbzWYseOxSw>
    <xmx:Rct7ad8mYAbff79eu_rQjj8k4aznx6xrr4gA7oIU8bAKqKYlTz4CXA>
    <xmx:Rct7aTjSGVf_bD02xJhBm-h3mmSTeYrDnT-VdUguQYYGG7x8DOokYQ>
    <xmx:Rct7acz74UJJaNHeoVQGCHpVqWwxJG1YKIfmqo-nHxPN542x9btgXw>
    <xmx:Rst7aWf08CIB6FZukk4C-_5suSJ-3FNwBXWYHyloosGjmPepGYe1DWly>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Jan 2026 16:04:03 -0500 (EST)
Date: Thu, 29 Jan 2026 14:04:01 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260129140401.52245b63@shazbot.org>
In-Reply-To: <20260129084156.GC10992@unreal>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
	<20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
	<aXfUZcSEr9N18o6w@google.com>
	<20260127085835.GQ13967@unreal>
	<20260127162754.GH1641016@ziepe.ca>
	<BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
	<20260129073331.GB10992@unreal>
	<BN9PR11MB52766EA91FEB08876DA474888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
	<20260129084156.GC10992@unreal>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BXY27K7L3GGYVEPLKE2TLBHPCNJ3PIQC
X-Message-ID-Hash: BXY27K7L3GGYVEPLKE2TLBHPCNJ3PIQC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:55 +0000
CC: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, 
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "virtualization@lists.linux.dev" <virtualization@lists.linux.dev>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BXY27K7L3GGYVEPLKE2TLBHPCNJ3PIQC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[1843];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,ziepe.ca,google.com,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.436];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,shazbot.org:mid,shazbot.org:email,linaro.org:email,intel.com:email,ziepe.ca:email]
X-Rspamd-Queue-Id: EB0D6411C1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyOSBKYW4gMjAyNiAxMDo0MTo1NiArMDIwMA0KTGVvbiBSb21hbm92c2t5IDxsZW9u
QGtlcm5lbC5vcmc+IHdyb3RlOg0KDQo+IE9uIFRodSwgSmFuIDI5LCAyMDI2IGF0IDA4OjEzOjE4
QU0gKzAwMDAsIFRpYW4sIEtldmluIHdyb3RlOg0KPiA+ID4gRnJvbTogTGVvbiBSb21hbm92c2t5
IDxsZW9uQGtlcm5lbC5vcmc+DQo+ID4gPiBTZW50OiBUaHVyc2RheSwgSmFudWFyeSAyOSwgMjAy
NiAzOjM0IFBNDQo+ID4gPiANCj4gPiA+IE9uIFRodSwgSmFuIDI5LCAyMDI2IGF0IDA3OjA2OjM3
QU0gKzAwMDAsIFRpYW4sIEtldmluIHdyb3RlOiAgDQo+ID4gPiA+ID4gRnJvbTogSmFzb24gR3Vu
dGhvcnBlIDxqZ2dAemllcGUuY2E+DQo+ID4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5
IDI4LCAyMDI2IDEyOjI4IEFNDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBPbiBUdWUsIEphbiAyNywg
MjAyNiBhdCAxMDo1ODozNUFNICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6ICANCj4gPiA+
ID4gPiA+ID4gPiBAQCAtMzMzLDcgKzM1OSwzNyBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92
ZShzdHJ1Y3QgIA0KPiA+ID4gPiA+IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJl
dm9rZWQpICANCj4gPiA+ID4gPiA+ID4gPiAgCQkJZG1hX3Jlc3ZfbG9jayhwcml2LT5kbWFidWYt
PnJlc3YsIE5VTEwpOw0KPiA+ID4gPiA+ID4gPiA+ICAJCQlwcml2LT5yZXZva2VkID0gcmV2b2tl
ZDsNCj4gPiA+ID4gPiA+ID4gPiAgCQkJZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKHByaXYt
ICANCj4gPiA+ID5kbWFidWYpOyAgDQo+ID4gPiA+ID4gPiA+ID4gKwkJCWRtYV9yZXN2X3dhaXRf
dGltZW91dChwcml2LT5kbWFidWYtPnJlc3YsDQo+ID4gPiA+ID4gPiA+ID4gKyAgDQo+ID4gPiBE
TUFfUkVTVl9VU0FHRV9CT09LS0VFUCwgIA0KPiA+ID4gPiA+IGZhbHNlLCAgDQo+ID4gPiA+ID4g
PiA+ID4gKyAgDQo+ID4gPiBNQVhfU0NIRURVTEVfVElNRU9VVCk7ICANCj4gPiA+ID4gPiA+ID4g
PiAgCQkJZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+ID4gPiA+ID4gPiA+
ID4gKwkJCWlmIChyZXZva2VkKSB7DQo+ID4gPiA+ID4gPiA+ID4gKwkJCQlrcmVmX3B1dCgmcHJp
di0+a3JlZiwgIA0KPiA+ID4gPiA+IHZmaW9fcGNpX2RtYV9idWZfZG9uZSk7ICANCj4gPiA+ID4g
PiA+ID4gPiArCQkJCS8qIExldCdzIHdhaXQgdGlsbCBhbGwgRE1BIHVubWFwIGFyZSAgDQo+ID4g
PiA+ID4gY29tcGxldGVkLiAqLyAgDQo+ID4gPiA+ID4gPiA+ID4gKwkJCQl3YWl0ID0gd2FpdF9m
b3JfY29tcGxldGlvbl90aW1lb3V0KA0KPiA+ID4gPiA+ID4gPiA+ICsJCQkJCSZwcml2LT5jb21w
LCAgDQo+ID4gPiBzZWNzX3RvX2ppZmZpZXMoMSkpOyAgDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+
ID4gPiA+IElzIHRoZSAxLXNlY29uZCBjb25zdGFudCBzdWZmaWNpZW50IGZvciBhbGwgaGFyZHdh
cmUsIG9yIHNob3VsZCB0aGUNCj4gPiA+ID4gPiA+ID4gaW52YWxpZGF0ZV9tYXBwaW5ncygpIGNv
bnRyYWN0IHJlcXVpcmUgdGhlIGNhbGxiYWNrIHRvIGJsb2NrIHVudGlsDQo+ID4gPiA+ID4gPiA+
IHNwZWN1bGF0aXZlIHJlYWRzIGFyZSBzdHJpY3RseSBmZW5jZWQ/IEknbSB3b25kZXJpbmcgYWJv
dXQgYSBjYXNlICANCj4gPiA+IHdoZXJlICANCj4gPiA+ID4gPiA+ID4gYSBkZXZpY2UncyBmaXJt
d2FyZSBoYXMgYSBoaWdoIHJlc3BvbnNlIGxhdGVuY3ksIHBlcmhhcHMgZHVlIHRvICANCj4gPiA+
IGludGVybmFsICANCj4gPiA+ID4gPiA+ID4gbWFuYWdlbWVudCB0YXNrcyBsaWtlIGVycm9yIHJl
Y292ZXJ5IG9yIHRoZXJtYWwgYW5kIGl0IGV4Y2VlZHMgdGhlICANCj4gPiA+IDFzICANCj4gPiA+
ID4gPiA+ID4gdGltZW91dC4NCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gSWYgdGhlIGRl
dmljZSBpcyBpbiB0aGUgbWlkZGxlIG9mIGEgbGFyZ2UgRE1BIGJ1cnN0IGFuZCB0aGUgZmlybXdh
cmUgaXMNCj4gPiA+ID4gPiA+ID4gc2xvdyB0byBmbHVzaCB0aGUgaW50ZXJuYWwgcGlwZWxpbmVz
IHRvIGEgZnVsbHkgInF1aWVzY2VkIg0KPiA+ID4gPiA+ID4gPiByZWFkLWFuZC1kaXNjYXJkIHN0
YXRlLCByZWNsYWltaW5nIHRoZSBtZW1vcnkgYXQgZXhhY3RseSAxLjAwMSAgDQo+ID4gPiBzZWNv
bmRzICANCj4gPiA+ID4gPiA+ID4gcmlza3MgdHJpZ2dlcmluZyBwbGF0Zm9ybS1sZXZlbCBmYXVs
dHMuLg0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBTaW5jZSB0aGUgd2VuIGV4cGxpY2l0
bHkgcGVybWl0IHRoZXNlIHNwZWN1bGF0aXZlIHJlYWRzIHVudGlsIHVubWFwIGlzDQo+ID4gPiA+
ID4gPiA+IGNvbXBsZXRlLCByZWx5aW5nIG9uIGEgaGFyZGNvZGVkIHRpbWVvdXQgaW4gdGhlIGV4
cG9ydGVyIHNlZW1zIHRvDQo+ID4gPiA+ID4gPiA+IGludHJvZHVjZSBhIGhhcmR3YXJlLWRlcGVu
ZGVudCByYWNlIGNvbmRpdGlvbiB0aGF0IGNvdWxkICANCj4gPiA+IGNvbXByb21pc2UgIA0KPiA+
ID4gPiA+ID4gPiBzeXN0ZW0gc3RhYmlsaXR5IHZpYSBJT01NVSBlcnJvcnMgb3IgQUVSIGZhdWx0
cy4NCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gU2hvdWxkIHRoZSBpbXBvcnRlciBpbnN0
ZWFkIGJlIHJlcXVpcmVkIHRvIGd1YXJhbnRlZSB0aGF0IGFsbA0KPiA+ID4gPiA+ID4gPiBzcGVj
dWxhdGl2ZSBhY2Nlc3MgaGFzIGNlYXNlZCBiZWZvcmUgdGhlIGludmFsaWRhdGlvbiBjYWxsIHJl
dHVybnM/ICANCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBJdCBpcyBndWFyYW50ZWVkIGJ5IHRo
ZSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKSBjYWxsIGFib3ZlLiBUaGF0IGNhbGwgIA0KPiA+ID4g
PiA+IGVuc3VyZXMgIA0KPiA+ID4gPiA+ID4gdGhhdCB0aGUgaGFyZHdhcmUgaGFzIGNvbXBsZXRl
ZCBhbGwgcGVuZGluZyBvcGVyYXRpb25zLiBUaGUgMeKAkXNlY29uZCAgDQo+ID4gPiA+ID4gZGVs
YXkgaXMgIA0KPiA+ID4gPiA+ID4gbWVhbnQgdG8gY2F0Y2ggY2FzZXMgd2hlcmUgYW4gaW4ta2Vy
bmVsIERNQSB1bm1hcCBjYWxsIGlzIG1pc3NpbmcsICANCj4gPiA+IHdoaWNoICANCj4gPiA+ID4g
PiBzaG91bGQgIA0KPiA+ID4gPiA+ID4gbm90IHRyaWdnZXIgYW55IERNQSBhY3Rpdml0eSBhdCB0
aGF0IHBvaW50LiAgDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBDaHJpc3RpYW4gbWF5IGtub3cgYWN0
dWFsIGV4YW1wbGVzLCBidXQgbXkgZ2VuZXJhbCBmZWVsaW5nIGlzIGhlIHdhcw0KPiA+ID4gPiA+
IHdvcnJ5aW5nIGFib3V0IGRyaXZlcnMgdGhhdCBoYXZlIHB1c2hlZCB0aGUgRE1BQlVGIHRvIHZp
c2liaWxpdHkgb24NCj4gPiA+ID4gPiB0aGUgR1BVIGFuZCB0aGUgbW92ZSBub3RpZnkgJiBmZW5j
ZXMgb25seSBzaG9vdCBkb3duIHNvbWUgYWNjZXNzLiBTbw0KPiA+ID4gPiA+IGl0IGhhcyB0byB3
YWl0IHVudGlsIHRoZSBETUFCVUYgaXMgZmluYWxseSB1bm1hcHBlZC4NCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IFByYW5qYWwncyBleGFtcGxlIHNob3VsZCBiZSBjb3ZlcmVkIGJ5IHRoZSBkcml2ZXIg
YWRkaW5nIGEgZmVuY2UgYW5kDQo+ID4gPiA+ID4gdGhlbiB0aGUgdW5ib3VuZGVkIGZlbmNlIHdh
aXQgd2lsbCBjb21wbGV0ZSBpdC4NCj4gPiA+ID4gPiAgDQo+ID4gPiA+DQo+ID4gPiA+IEJlYXIg
bWUgaWYgaXQncyBhbiBpZ25vcmFudCBxdWVzdGlvbi4NCj4gPiA+ID4NCj4gPiA+ID4gVGhlIGNv
bW1pdCBtc2cgb2YgcGF0Y2g2IHNheXMgdGhhdCBWRklPIGRvZXNuJ3QgdG9sZXJhdGUgdW5ib3Vu
ZGVkDQo+ID4gPiA+IHdhaXQsIHdoaWNoIGlzIHRoZSByZWFzb24gYmVoaW5kIHRoZSAybmQgdGlt
ZW91dCB3YWl0IGhlcmUuICANCj4gPiA+IA0KPiA+ID4gSXQgaXMgbm90IGFjY3VyYXRlLiBBIHNl
Y29uZCB0aW1lb3V0IGlzIHByZXNlbnQgYm90aCBpbiB0aGUNCj4gPiA+IGRlc2NyaXB0aW9uIG9m
IHBhdGNoIDYgYW5kIGluIFZGSU8gaW1wbGVtZW50YXRpb24uIFRoZSBkaWZmZXJlbmNlIGlzDQo+
ID4gPiB0aGF0IHRoZSB0aW1lb3V0IGlzIGVuZm9yY2VkIHdpdGhpbiBWRklPLg0KPiA+ID4gICAN
Cj4gPiA+ID4NCj4gPiA+ID4gVGhlbiB3aHkgaXMgInRoZSB1bmJvdW5kZWQgZmVuY2Ugd2FpdCIg
bm90IGEgcHJvYmxlbSBpbiB0aGUgc2FtZQ0KPiA+ID4gPiBjb2RlIHBhdGg/IHRoZSB1c2Ugb2Yg
TUFYX1NDSEVEVUxFX1RJTUVPVVQgaW1wbHkgYSB3b3JzdC1jYXNlDQo+ID4gPiA+IHRpbWVvdXQg
aW4gaHVuZHJlZHMgb2YgeWVhcnMuLi4gIA0KPiA+ID4gDQo+ID4gPiAiQW4gdW5ib3VuZGVkIGZl
bmNlIHdhaXQiIGlzIGEgZGlmZmVyZW50IGNsYXNzIG9mIHdhaXQuIEl0IGluZGljYXRlcyBicm9r
ZW4NCj4gPiA+IGhhcmR3YXJlIHRoYXQgY29udGludWVzIHRvIGlzc3VlIERNQSB0cmFuc2FjdGlv
bnMgZXZlbiBhZnRlciBpdCBoYXMgYmVlbg0KPiA+ID4gdG9sZCB0bw0KPiA+ID4gc3RvcC4NCj4g
PiA+IA0KPiA+ID4gVGhlIHNlY29uZCB3YWl0IGV4aXN0cyB0byBjYXRjaCBzb2Z0d2FyZSBidWdz
IG9yIG1pc3VzZSwgd2hlcmUgdGhlIGRtYS1idWYNCj4gPiA+IGltcG9ydGVyIGhhcyBtaXNyZXBy
ZXNlbnRlZCBpdHMgY2FwYWJpbGl0aWVzLg0KPiA+ID4gICANCj4gPiANCj4gPiBPa2F5IEkgc2Vl
Lg0KPiA+ICAgDQo+ID4gPiA+DQo+ID4gPiA+IGFuZCBpdCdkIGJlIGhlbHBmdWwgdG8gcHV0IHNv
bWUgd29yZHMgaW4gdGhlIGNvZGUgYmFzZWQgb24gd2hhdCdzDQo+ID4gPiA+IGRpc2N1c3NlZCBo
ZXJlLiAgDQo+ID4gPiANCj4gPiA+IFdlJ3ZlIGRvY3VtZW50ZWQgYXMgbXVjaCBhcyB3ZSBjYW4g
aW4gZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCkgYW5kDQo+ID4gPiBkbWFfYnVmX2ludmFsaWRh
dGVfbWFwcGluZ3MoKS4gRG8geW91IGhhdmUgYW55IHN1Z2dlc3Rpb25zIG9uIHdoYXQgZWxzZQ0K
PiA+ID4gc2hvdWxkIGJlIGFkZGVkIGhlcmU/DQo+ID4gPiAgIA0KPiA+IA0KPiA+IHRoZSBzZWxl
Y3Rpb24gb2YgMXM/ICANCj4gDQo+IEl0IGlzIGluZGlyZWN0bHkgd3JpdHRlbiBpbiBkZXNjcmlw
dGlvbiBvZiBXQVJOX09OKCksIGJ1dCBsZXQncyBhZGQNCj4gbW9yZS4gV2hhdCBhYm91dCB0aGUg
Zm9sbG93aW5nPw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
ZG1hYnVmLmMgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+IGluZGV4IDkz
Nzk1YWQyZTAyNS4uOTQ4YmE3NTI4OGM2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1h
YnVmLmMNCj4gQEAgLTM1Nyw3ICszNTcsMTMgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUo
c3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIGRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0K
PiAgICAgICAgICAgICAgICAgICAgICAgICBpZiAocmV2b2tlZCkgew0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGtyZWZfcHV0KCZwcml2LT5rcmVmLCB2ZmlvX3BjaV9kbWFfYnVm
X2RvbmUpOw0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIExldCdzIHdhaXQg
dGlsbCBhbGwgRE1BIHVubWFwIGFyZSBjb21wbGV0ZWQuICovDQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLyoNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKiBM
ZXQncyB3YWl0IGZvciAxIHNlY29uZCB0aWxsIGFsbCBETUEgdW5tYXANCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKiBhcmUgY29tcGxldGVkLiBJdCBpcyBzdXBwb3NlZCB0byBj
YXRjaCBkbWEtYnVmDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICogaW1wb3J0
ZXJzIHdoaWNoIGxpZWQgYWJvdXQgdGhlaXIgc3VwcG9ydA0KPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAqIG9mIGRtYWJ1ZiByZXZva2UuIFNlZSBkbWFfYnVmX2ludmFsaWRhdGVf
bWFwcGluZ3MoKQ0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqIGZvciB0aGUg
ZXhwZWN0ZWQgYmVoYXZpb3VyLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
Lw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdhaXQgPSB3YWl0X2Zvcl9jb21w
bGV0aW9uX3RpbWVvdXQoDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAmcHJpdi0+Y29tcCwgc2Vjc190b19qaWZmaWVzKDEpKTsNCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAvKg0KPiANCj4gPiANCj4gPiB0aGVuLA0KPiA+IA0KPiA+IFJldmlld2Vk
LWJ5OiBLZXZpbiBUaWFuIDxrZXZpbi50aWFuQGludGVsLmNvbT4gIA0KDQpSZXZpZXdlZC1ieTog
QWxleCBXaWxsaWFtc29uIDxhbGV4QHNoYXpib3Qub3JnPg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
