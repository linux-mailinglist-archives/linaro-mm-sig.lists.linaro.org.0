Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIOPJKkQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 322F2411CCF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FF1344B98
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:04 +0000 (UTC)
Received: from fhigh-b4-smtp.messagingengine.com (fhigh-b4-smtp.messagingengine.com [202.12.124.155])
	by lists.linaro.org (Postfix) with ESMTPS id C052B3F756
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 14:50:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=mi9xMhj7;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="s GJeihX";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.155 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 39ADB7A00DC;
	Wed,  4 Feb 2026 09:49:59 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Wed, 04 Feb 2026 09:50:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1770216599;
	 x=1770302999; bh=QL9sSVQuHUyiqNNTJS1cRzIO660sEsNkmSlJpdQIa7o=; b=
	mi9xMhj7D7QVZHhZAiU9VKOtKQC8hfwKHEV1GYiUwJ/vKTw3MKybuvhpvocGWH8O
	ewf0IHP5WCIsCdkETSsxiawgbu8U8Ln3q8u5A6j0l1WpPHcVZqXUbf78d98CdUiM
	/IKqdJz2j5iWqpqDqhm4lV0r1z2yblKVWo/XKIIS48JRCN8WvWKd+9fo9YVCQRcl
	WDBefUZrDuUCw4YCvCRys6oeir7MzfGqsiCrzNNF+z9gUQxDdikdIgcVqQLVJJGA
	29vYJ4VhBWB9dOxWuTZALTQDzZMBUS6lPHTNaNL/TY+JA3Wi7AAhU2HH5Ycma9h2
	iZvPLo9ASafd4U5gTrgqJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770216599; x=
	1770302999; bh=QL9sSVQuHUyiqNNTJS1cRzIO660sEsNkmSlJpdQIa7o=; b=s
	GJeihXBk9DA4kr+BL+nNsg7zc5GMkdRCLjYJKk36zDGPac6Z7Moje8C4Gg96noVB
	fvzNyywNxA9I6qSs/ISvmhNult3u6YFp5A+Ak5O5WFOj4z5O9gjC6f0ph7vq3j/H
	nrd5wyg5KgPCM2bedm+0RVSCzt+R5z1nbbRxnE8jo4m4UXA748X6ZC52nPekwl5d
	hfOar7dY1pgUQWdNag+q5umeAcQEi9mIvXbo7DTN57R2xk3ZFNUvUKrf8rZmaJFl
	o6VAuTQcOkiTEpUlqQGmdX6f9sk7qvvXtn85KmfukgAViHuF50rkeqyEfQtmXkEf
	wB2zeq2JfVG/hI+46N9Kg==
X-ME-Sender: <xms:llyDaZJmYGMjYnUmYVdxhVEDlr_O47dRinUwU0f6dKEXQvoB64o4vA>
    <xme:llyDaXBAuXkvQLS0ogkdqBg_K1u8VpwbUoDJ8l2mawpsOazzq99eL5AEeW9c2GuAR
    S2c8GrwPKH-y-GC8HJG7cPQrzEmN_18FnYzPmuwtGjwyLKlTtfp>
X-ME-Received: <xmr:llyDaWVMxdX5QgxRsgefK1RHbav935eSzrLU1oHeIiUeob1gUxBD-IIfYUc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukedvjedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtqhertdertdejnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpeegudevhfejueefveduieeuueeifeettdekveekhffgvdetfeelueehgfdt
    heffhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grlhgvgiesshhhrgiisghothdrohhrghdpnhgspghrtghpthhtohepfeegpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopehlvghonheskhgvrhhnvghlrdhorhhgpdhrtghpth
    htoheptghhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtohep
    shhumhhithdrshgvmhifrghlsehlihhnrghrohdrohhrghdprhgtphhtthhopegrlhgvgi
    grnhguvghrrdguvghutghhvghrsegrmhgurdgtohhmpdhrtghpthhtoheprghirhhlihgv
    ugesghhmrghilhdrtghomhdprhgtphhtthhopehsihhmohhnrgesfhhffihllhdrtghhpd
    hrtghpthhtohepkhhrrgigvghlsehrvgguhhgrthdrtghomhdprhgtphhtthhopegumhhi
    thhrhidrohhsihhpvghnkhhosegtohhllhgrsghorhgrrdgtohhmpdhrtghpthhtohepgh
    hurhgthhgvthgrnhhsihhnghhhsegthhhrohhmihhumhdrohhrgh
X-ME-Proxy: <xmx:llyDaY6NKd7bDMPwzDMtrcrglA0Q7txOe9i2cEfBbUnJh4H99P3BMA>
    <xmx:llyDaQZPU4E4Fm9axqtBaX-WLMNA4ScJrvmFQpdDiyZJd9HNbYKoEA>
    <xmx:llyDaaqq_FW_PxGHRUdmctm9S2ljoFVq-NcIFh50bdZjLOoV2jrdcA>
    <xmx:llyDaXL7AZ2xV6n4J6obLGjlreHCThd-WQGNqX770JaImsW7wESD1Q>
    <xmx:l1yDaYhCjTqzR9iSEa4wxIeg-VejF46Npe8P2GPeeU0DmGS4kQ10LlGd>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Feb 2026 09:49:56 -0500 (EST)
Date: Wed, 4 Feb 2026 07:49:55 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260204074955.394a42e1@shazbot.org>
In-Reply-To: <20260204114751.GF6771@unreal>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
	<20260202160425.GO34749@unreal>
	<20260204081630.GA6771@unreal>
	<6d5c392b-596b-4341-9992-aa4b26001804@amd.com>
	<20260204114751.GF6771@unreal>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y6V6JFOH63HA54PPKPFGI7WLDCS2I2AV
X-Message-ID-Hash: Y6V6JFOH63HA54PPKPFGI7WLDCS2I2AV
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:05 +0000
CC: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.free
 desktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/8] dma-buf: Use revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y6V6JFOH63HA54PPKPFGI7WLDCS2I2AV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[1705];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.free,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 322F2411CCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCA0IEZlYiAyMDI2IDEzOjQ3OjUxICswMjAwDQpMZW9uIFJvbWFub3Zza3kgPGxlb25A
a2VybmVsLm9yZz4gd3JvdGU6DQoNCj4gT24gV2VkLCBGZWIgMDQsIDIwMjYgYXQgMDk6NTQ6MTNB
TSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiBPbiAyLzQvMjYgMDk6MTYsIExl
b24gUm9tYW5vdnNreSB3cm90ZTogIA0KPiA+ID4gT24gTW9uLCBGZWIgMDIsIDIwMjYgYXQgMDY6
MDQ6MjVQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOiAgDQo+ID4gPj4gT24gU2F0LCBK
YW4gMzEsIDIwMjYgYXQgMDc6MzQ6MTBBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOiAg
DQo+ID4gPj4+IENoYW5nZWxvZzoNCj4gPiA+Pj4gdjc6ICANCj4gPiA+Pg0KPiA+ID4+IDwuLi4+
DQo+ID4gPj4gIA0KPiA+ID4+PiBMZW9uIFJvbWFub3Zza3kgKDgpOg0KPiA+ID4+PiAgICAgICBk
bWEtYnVmOiBSZW5hbWUgLm1vdmVfbm90aWZ5KCkgY2FsbGJhY2sgdG8gYSBjbGVhcmVyIGlkZW50
aWZpZXINCj4gPiA+Pj4gICAgICAgZG1hLWJ1ZjogUmVuYW1lIGRtYV9idWZfbW92ZV9ub3RpZnko
KSB0byBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoKQ0KPiA+ID4+PiAgICAgICBkbWEtYnVm
OiBBbHdheXMgYnVpbGQgd2l0aCBETUFCVUZfTU9WRV9OT1RJRlkNCj4gPiA+Pj4gICAgICAgdmZp
bzogV2FpdCBmb3IgZG1hLWJ1ZiBpbnZhbGlkYXRpb24gdG8gY29tcGxldGUNCj4gPiA+Pj4gICAg
ICAgZG1hLWJ1ZjogTWFrZSAuaW52YWxpZGF0ZV9tYXBwaW5nKCkgdHJ1bHkgb3B0aW9uYWwNCj4g
PiA+Pj4gICAgICAgZG1hLWJ1ZjogQWRkIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgpDQo+ID4g
Pj4+ICAgICAgIHZmaW86IFBlcm1pdCBWRklPIHRvIHdvcmsgd2l0aCBwaW5uZWQgaW1wb3J0ZXJz
DQo+ID4gPj4+ICAgICAgIGlvbW11ZmQ6IEFkZCBkbWFfYnVmX3BpbigpDQo+ID4gPj4+DQo+ID4g
Pj4+ICBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgIHwgMTIgLS0t
LS0NCj4gPiA+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAg
fCA2OSArKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ID4gPj4+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgMTQgKystLS0NCj4gPiA+Pj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyAgfCAgMiArLQ0KPiA+ID4+PiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRrZmQvS2NvbmZpZyAgICAgICAgICB8ICAyICstDQo+ID4gPj4+
ICBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuYyAgICAgIHwgIDIgKy0NCj4g
PiA+Pj4gIGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCAgNyAr
Ky0NCj4gPiA+Pj4gIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jICAgICAgICAgICAgICAgICAg
fCAgMiArLQ0KPiA+ID4+PiAgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAgICAgICAg
ICAgICB8IDE0ICsrLS0tDQo+ID4gPj4+ICBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2Rt
YWJ1Zi5jICAgICAgIHwgMTMgLS0tLS0NCj4gPiA+Pj4gIGRyaXZlcnMvaW5maW5pYmFuZC9ody9t
bHg1L21yLmMgICAgICAgICAgICAgfCAgMiArLQ0KPiA+ID4+PiAgZHJpdmVycy9pb21tdS9pb21t
dWZkL3BhZ2VzLmMgICAgICAgICAgICAgICB8IDExICsrKy0NCj4gPiA+Pj4gIGRyaXZlcnMvaW9t
bXUvaW9tbXVmZC9zZWxmdGVzdC5jICAgICAgICAgICAgfCAgMiArLQ0KPiA+ID4+PiAgZHJpdmVy
cy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyAgICAgICAgICB8IDgwICsrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tDQo+ID4gPj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAg
ICAgICAgICAgICAgIHwgMTcgKysrLS0tDQo+ID4gPj4+ICAxNSBmaWxlcyBjaGFuZ2VkLCAxNTMg
aW5zZXJ0aW9ucygrKSwgOTYgZGVsZXRpb25zKC0pICANCj4gPiA+Pg0KPiA+ID4+IENocmlzdGlh
biwNCj4gPiA+Pg0KPiA+ID4+IEdpdmVuIHRoZSBvbmdvaW5nIGRpc2N1c3Npb24gYXJvdW5kIHBh
dGNoIHY1LCBJJ20gYSBiaXQgdW5jbGVhciBvbiB0aGUNCj4gPiA+PiBjdXJyZW50IHN0YXRlLiBJ
cyB0aGUgc2VyaWVzIHJlYWR5IGZvciBtZXJnaW5nLCBvciBkbyB5b3UgbmVlZCBtZSB0bw0KPiA+
ID4+IHJld29yayBhbnl0aGluZyBmdXJ0aGVyPyAgDQo+ID4gPiANCj4gPiA+IENocmlzdGlhbiwN
Cj4gPiA+IA0KPiA+ID4gTGV0J3Mgbm90IG1pc3MgdGhlIG1lcmdlIHdpbmRvdyBmb3Igd29yayB0
aGF0IGlzIGFscmVhZHkgcmVhZHkuICANCj4gPiANCj4gPiBNaG0sIHNvdW5kcyBsaWtlIEFNRHMg
bWFpbCBzZXJ2ZXJzIG5ldmVyIHNlbmQgbXkgbGFzdCBtYWlsIG91dC4NCj4gPiANCj4gPiBBcyBm
YXIgYXMgSSBjYW4gc2VlIGFsbCBwYXRjaGVzIGhhdmUgYW4gcmV2aWV3ZWQtYnksIEkgYWxzbyBn
YXZlIGFuIHJiIG9uIHBhdGNoICM2IChzaG91bGQgdGhhdCBtYWlsIG5ldmVyIGdvdCBvdXQgYXMg
d2VsbCkuIFRoZSBkaXNjdXNzaW9uIG9uIHBhdGNoIHY1IGlzIGp1c3Qgb3J0aG9nb25hbCBJIHRo
aW5rLCB0aGUgaGFuZGxpbmcgd2FzIHRoZXJlIGV2ZW4gY29tcGxldGVseSBiZWZvcmUgdGhpcyBw
YXRjaCBzZXQuDQo+ID4gDQo+ID4gRm9yIHVwc3RyZWFtaW5nIGFzIGxvbmcgYXMgdGhlIFZGSU8g
YW5kIGluZmluaWJhbmQgZm9sa3MgZG9uJ3Qgb2JqZWN0IEkgd291bGQgbGlrZSB0byB0YWtlIHRo
YXQgdGhyb3VnaCB0aGUgZHJtLW1pc2MgYnJhbmNoIChsaWtlIGV2ZXJ5IG90aGVyIERNQS1idWYg
Y2hhbmdlKS4gIA0KPiANCj4gSW5maW5pYmFuZCBmb2xrcyBkb24ndCBvYmplY3QgOikuDQoNCk5v
IG9iamVjdGlvbiBmcm9tIHZmaW8sIEkgYWRkZWQgb25lIGxhc3QgUi1iLiAgVGhhbmtzLA0KDQpB
bGV4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
