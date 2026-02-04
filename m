Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAcvIK8Q4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14760411CDD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2884344BB4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:10 +0000 (UTC)
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	by lists.linaro.org (Postfix) with ESMTPS id 05F623F7C7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 16:57:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b="4E9zDR/3";
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="k UnfeGh";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.156 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 56E537A00E6;
	Wed,  4 Feb 2026 11:57:04 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Wed, 04 Feb 2026 11:57:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1770224224;
	 x=1770310624; bh=DMO79s1OU3juZ2+ahMo1gfPAr0s4Mn0ZEH9LRYL3vv0=; b=
	4E9zDR/3sr/FZ2Suz9hMpeD0Lnw9/HEY8CCWzuPTFUlCRgk/07X0XK4fG5aGG2li
	0fatEfbpn9z0k5kHRO4s/aH7Pm+5fLGf9Cu5wSPzt2+oFxUejLwYdnAo8+vTTtX0
	ppcuN4ypbdJkwOnXruWUQfw/0GT3rbfK3qQN9Mnf08mCo5AQBaBvPSlPSoRMUoTj
	iOXZEEkeA5xumAOiILKyx2I67bELe3qIddtsmC285w1VcTp+a7ofilThoTsvX+zx
	pO0/xWe8ljTI1odRRCmkzLFYSCFSpo5gzpclcgcbTGb3ljTcYnxK7Y9V/wpzpMyn
	zoAKW1DjfBti4jaWXz/GAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770224224; x=
	1770310624; bh=DMO79s1OU3juZ2+ahMo1gfPAr0s4Mn0ZEH9LRYL3vv0=; b=k
	UnfeGhB0XVIKkpNpr8r70uuFr+yVF4eXt8iIIRXXxj95qP0Utymcq8DPgYCYAIIU
	rEZGNuaB9G2Hn8XWUbdjTJ7y+DRD46zwKbYrPKP6U88INPsxVMbH1degOaxJIodR
	DKEX0B82teBXAIjtNB6G/+CBnk6SMyNskXcPOfYXJ9PCn1LgJrYuY33kwxQBiJSM
	+bxQJpKCVUNBF6ZzDSvQpb+hCK42zD5zrqVNNoIJeD/wSgKP3zU2ZFszbQlu1ELm
	Xs7ysqb+/GUvegntZfforGYZ/CMyDHerVQYaW4NKWptMZ1z+aeAET2E/KP/TYGkf
	KeEnDgEP8FPVgaex9yV8Q==
X-ME-Sender: <xms:X3qDaUU0AqgtEAaCCzgguyzs4VTVV-B9kuHBFv5L_ryHbFAQ9OwzZw>
    <xme:X3qDaaencOx4yFHctpjA0hJGKxhuLLru0_1AbJdrHzSTklmYn0UWK3zvzB6INNMEb
    CDFZESzmQYzf5ASb8dYI7zOBfA7lnegmkzmNWWr00fEDEliSgPN3QI>
X-ME-Received: <xmr:X3qDadCoS01ZWLJgy9mJqR9Qk8BNz9b7GJi9TFpc7v-Xz0c9ZWRayowlhhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukedvleejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtqhertdertdejnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpeeuvdevudfhleehgfffiefggfevkefhfeffheetfeejffekteeffffgffek
    ueeuteenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghlvgigsehshhgriigsohhtrdhorhhg
    pdhnsggprhgtphhtthhopeefgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheptg
    hhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtoheplhgvohhn
    sehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsuhhmihhtrdhsvghmfigrlheslhhinh
    grrhhordhorhhgpdhrtghpthhtoheprghlvgigrghnuggvrhdruggvuhgthhgvrhesrghm
    ugdrtghomhdprhgtphhtthhopegrihhrlhhivggusehgmhgrihhlrdgtohhmpdhrtghpth
    htohepshhimhhonhgrsehffhiflhhlrdgthhdprhgtphhtthhopehkrhgrgigvlhesrhgv
    ughhrghtrdgtohhmpdhrtghpthhtohepughmihhtrhihrdhoshhiphgvnhhkohestgholh
    hlrggsohhrrgdrtghomhdprhgtphhtthhopehguhhrtghhvghtrghnshhinhhghhestghh
    rhhomhhiuhhmrdhorhhg
X-ME-Proxy: <xmx:X3qDaR0JC3aeBgGCL3SOTruPcgJhXN56_tA0WN7RgTXmz9g5vEPb9w>
    <xmx:X3qDaelkK6umwX2N7Cdn9igho2SY9UaXjO4UA7aD9BS4Prz5hLK1hg>
    <xmx:X3qDaVHu61HKpx7M9FbvEcxQjBMz7-wYzb44ioDNXWX0Ucq2z4-t9w>
    <xmx:X3qDaY3TnQgDqkgcBOz_No8JKgaBYtcvxf4UXBj0ym1YuPCsROzXHA>
    <xmx:YHqDaYePnLUlo7-KxZzLGmru0GCtmPoyKuPCBDWjbJzvd7OHBc1kp6lU>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Feb 2026 11:57:00 -0500 (EST)
Date: Wed, 4 Feb 2026 09:56:59 -0700
From: Alex Williamson <alex@shazbot.org>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260204095659.5a983af2@shazbot.org>
In-Reply-To: <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
	<20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
	<fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XBADLMSB3KM2ODKXZQLOYVEI2HRJ6EVY
X-Message-ID-Hash: XBADLMSB3KM2ODKXZQLOYVEI2HRJ6EVY
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:06 +0000
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-s
 ig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XBADLMSB3KM2ODKXZQLOYVEI2HRJ6EVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[1703];
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
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email,shazbot.org:mid,shazbot.org:email,amd.com:email]
X-Rspamd-Queue-Id: 14760411CDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCA0IEZlYiAyMDI2IDE3OjIxOjQ1ICswMTAwDQpDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KDQo+IE9uIDEvMzEvMjYgMDY6MzQsIExlb24g
Um9tYW5vdnNreSB3cm90ZToNCj4gPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0Budmlk
aWEuY29tPg0KPiA+IA0KPiA+IFRpbGwgbm93IFZGSU8gaGFzIHJlamVjdGVkIHBpbm5lZCBpbXBv
cnRlcnMsIGxhcmdlbHkgdG8gYXZvaWQgYmVpbmcgdXNlZA0KPiA+IHdpdGggdGhlIFJETUEgcGlu
bmVkIGltcG9ydGVyIHRoYXQgY2Fubm90IGhhbmRsZSBhIG1vdmVfbm90aWZ5KCkgdG8gcmV2b2tl
DQo+ID4gYWNjZXNzLg0KPiA+IA0KPiA+IFVzaW5nIGRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZSgp
IGl0IGNhbiB0ZWxsIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gcGlubmVkDQo+ID4gaW1wb3J0ZXJz
IHRoYXQgc3VwcG9ydCB0aGUgZmxvdyBkZXNjcmliZWQgaW4gZG1hX2J1Zl9pbnZhbGlkYXRlX21h
cHBpbmdzKCkNCj4gPiBhbmQgdGhvc2UgdGhhdCBkb24ndC4NCj4gPiANCj4gPiBUaHVzIHBlcm1p
dCBjb21wYXRpYmxlIHBpbm5lZCBpbXBvcnRlcnMuDQo+ID4gDQo+ID4gVGhpcyBpcyBvbmUgb2Yg
dHdvIGl0ZW1zIElPTU1VRkQgcmVxdWlyZXMgdG8gcmVtb3ZlIGl0cyBwcml2YXRlIGludGVyZmFj
ZQ0KPiA+IHRvIFZGSU8ncyBkbWEtYnVmLg0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBLZXZpbiBU
aWFuIDxrZXZpbi50aWFuQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQWxleCBXaWxsaWFt
c29uIDxhbGV4QHNoYXpib3Qub3JnPg0KPiA+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21h
bm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy92ZmlvL3Bj
aS92ZmlvX3BjaV9kbWFidWYuYyB8IDE1ICsrKy0tLS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYyBiL2RyaXZlcnMvdmZpby9w
Y2kvdmZpb19wY2lfZG1hYnVmLmMNCj4gPiBpbmRleCA3OGQ0N2UyNjBmMzQuLmE1ZmI4MGUwNjhl
ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+
ID4gKysrIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiA+IEBAIC0yMiwx
NiArMjIsNiBAQCBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiB7DQo+ID4gIAl1OCByZXZva2VkIDog
MTsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gLXN0YXRpYyBpbnQgdmZpb19wY2lfZG1hX2J1Zl9waW4o
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCkNCj4gPiAtew0KPiA+IC0JcmV0
dXJuIC1FT1BOT1RTVVBQOw0KPiA+IC19DQo+ID4gLQ0KPiA+IC1zdGF0aWMgdm9pZCB2ZmlvX3Bj
aV9kbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQo+
ID4gLXsNCj4gPiAtCS8qIERvIG5vdGhpbmcgKi8NCj4gPiAtfQ0KPiA+IC0gIA0KPiANCj4gVGhp
cyBjaHVuayBoZXJlIGRvZXNuJ3Qgd2FudCB0byBhcHBseSB0byBkcm0tbWlzYy1uZXh0LCBteSBl
ZHVjYXRlZA0KPiBndWVzcyBpcyB0aGF0IHRoZSBwYXRjaCBhZGRpbmcgdGhvc2UgbGluZXMgaXMg
bWlzc2luZyBpbiB0aGF0IHRyZWUuDQo+IA0KPiBIb3cgc2hvdWxkIHdlIGhhbmRsZSB0aGF0PyBQ
YXRjaGVzIDEtMyBoYXZlIGFscmVhZHkgYmVlbiBwdXNoZWQgdG8NCj4gZHJtLW1pc2MtbmV4dCBh
bmQgSSB3b3VsZCByYXRoZXIgbGlrZSB0byBwdXNoIHBhdGNoZXMgNC02IHRocm91Z2gNCj4gdGhh
dCBicmFuY2ggYXMgd2VsbC4NCj4gDQo+IEkgY2FuIHJlcXVlc3QgYSBiYWNrbWVyZ2UgZnJvbSB0
aGUgZHJtLW1pc2MtbmV4dCBtYWludGFpbmVycywgYnV0DQo+IHRoZW4gd2UgY2xlYXJseSBkb24n
dCBnZXQgdGhhdCB1cHN0cmVhbSB0aGlzIHdlZWsuDQoNCkhtbSwgZHJtLW5leHQgYWxyZWFkeSBo
YXMgYSBiYWNrbWVyZ2UgdXAgdG8gdjYuMTktcmM3LCB0aGUgcGF0Y2ggaGVyZSBpcw0KYmFzZWQg
b24gYSBjb21taXQgbWVyZ2VkIGluIHJjOC4gIFRoZSB0YWcgZm9yIHRoYXQgY2hhbmdlIHdhcyBi
YXNlZCBvbg0KcmM2LiAgSXQgY2FuIGJlIGZvdW5kIGhlcmU6DQoNCmh0dHBzOi8vZ2l0aHViLmNv
bS9hd2lsbGlhbS9saW51eC12ZmlvLmdpdCB0YWdzL3ZmaW8tdjYuMTktcmM4DQoNCkFzIHRoZSBz
YW1lIHRhZyBMaW51cyBtZXJnZWQgaW46DQoNCjFmOTdkOWRjZjUzNiAoIk1lcmdlIHRhZyAndmZp
by12Ni4xOS1yYzgnIG9mIGh0dHBzOi8vZ2l0aHViLmNvbS9hd2lsbGlhbS9saW51eC12ZmlvIikN
Cg0KZHJtLW1pc2MtbmV4dCBvbmx5IHNlZW1zIHRvIGJlIGJhc2VkIG9uIHY2LjE5LXJjMSB0aG91
Z2gsIHNvIEkgZG9uJ3QNCmtub3cgdGhhdCBhbnkgb2YgdGhhdCBoZWxwcy4gIFRoYW5rcywNCg0K
QWxleA0KDQo+ID4gIHN0YXRpYyBpbnQgdmZpb19wY2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZiwNCj4gPiAgCQkJCSAgIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQNCj4g
PiAqYXR0YWNobWVudCkgew0KPiA+IEBAIC00Myw2ICszMyw5IEBAIHN0YXRpYyBpbnQgdmZpb19w
Y2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYNCj4gPiAqZG1hYnVmLCBpZiAocHJpdi0+
cmV2b2tlZCkNCj4gPiAgCQlyZXR1cm4gLUVOT0RFVjsNCj4gPiAgDQo+ID4gKwlpZiAoIWRtYV9i
dWZfYXR0YWNoX3Jldm9jYWJsZShhdHRhY2htZW50KSkNCj4gPiArCQlyZXR1cm4gLUVPUE5PVFNV
UFA7DQo+ID4gKw0KPiA+ICAJcmV0dXJuIDA7DQo+ID4gIH0NCj4gPiAgDQo+ID4gQEAgLTEwNyw4
ICsxMDAsNiBAQCBzdGF0aWMgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0DQo+
ID4gZG1hX2J1ZiAqZG1hYnVmKSB9DQo+ID4gIA0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9idWZfb3BzIHZmaW9fcGNpX2RtYWJ1Zl9vcHMgPSB7DQo+ID4gLQkucGluID0gdmZpb19wY2lf
ZG1hX2J1Zl9waW4sDQo+ID4gLQkudW5waW4gPSB2ZmlvX3BjaV9kbWFfYnVmX3VucGluLA0KPiA+
ICAJLmF0dGFjaCA9IHZmaW9fcGNpX2RtYV9idWZfYXR0YWNoLA0KPiA+ICAJLm1hcF9kbWFfYnVm
ID0gdmZpb19wY2lfZG1hX2J1Zl9tYXAsDQo+ID4gIAkudW5tYXBfZG1hX2J1ZiA9IHZmaW9fcGNp
X2RtYV9idWZfdW5tYXAsDQo+ID4gICANCj4gDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
