Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B80CbUQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C17EA411CE4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBA9644BBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:15 +0000 (UTC)
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	by lists.linaro.org (Postfix) with ESMTPS id D7BF13F799
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Feb 2026 14:42:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=FEf0h2Bc;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="f VLT4mf";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.154 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id F0A547A0066;
	Thu,  5 Feb 2026 09:42:08 -0500 (EST)
Received: from phl-imap-18 ([10.202.2.89])
  by phl-compute-02.internal (MEProxy); Thu, 05 Feb 2026 09:42:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1770302528;
	 x=1770388928; bh=c2sWSFRwhN1ePbWw0hSzzDPUGT+PUV51S0w9MOaIyks=; b=
	FEf0h2BcDcZm7G7BDIUK2ADItpwlJ8hNuUMLpKhFD6n01D8okyPnIkq6p81we7L2
	gIGJ48i+i29M8SF5Umc+j2/hErScJ0HodPUYKew263UE3GLZrJ7hD+mpi7tA1tUX
	CroIkGk60T8vo4V9I7Cfhb2SMhUSeAwP0kh/1pkZh1xJdlexYo0FdJ5ZcBnF22Gt
	PcO5FnudagrbQTbq0nW/uUj4MwbWv0LJvy4TiBkSF9/3dPJ/dW8TAz3yrrKGyEcx
	SXgih4Qq3eCnWAJL/lyYSLwmbXucwl6AUKa54xqHfBzVVIvuk+of2gbkMwwAHZlf
	LV4/00+M10ZETI1nm733Ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770302528; x=
	1770388928; bh=c2sWSFRwhN1ePbWw0hSzzDPUGT+PUV51S0w9MOaIyks=; b=f
	VLT4mfcVhduoy9qAwuHpxbxsvmL9WGkexpwwI35BBhmw8JlDnXBk4zHMMQX1hHA6
	4z5QJMxDN/5SU6v2/oB5bORew2XZ927YqZSyGTD1rcl9RdbaPe9yUSI2BgRvAFmc
	BzOn8OvFG5gzR5jsTizMM+6Q1M4c3zFzIFNxlcJnGt15yhJ9kNlOoAJxgBhI4IXo
	HYOdBlgGo0Cb+dwdnPpC3xPczHpGadbVzQgJTrwGwpj8XbRm5Jx/FcIuWT1z2tvu
	m1hBZ0WCbh+BnVOK3X+cMcFnDmQXkToA8t1ygsnVaHAwifuFcHKpaN9hF3Ey5zw0
	8BX3dnHzbNHviUYX1vBgw==
X-ME-Sender: <xms:P6yEadwgIGLmdLTZFzYjRQJOhCyboUfHxc2oeaANaZcpJ6heSz2grA>
    <xme:P6yEaYF5kpO1z-_A41E_Z7SIL7zoEKRjHdReP7Sy2d9f3QP-wHzYia1OmKJT2l7Wh
    9s2PLYWhd_ZREldE3WJ6Z3I6M3gecVVIbKvRc9oK4rNhKUGcY1k1j0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeehheeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedftehlvgig
    ucghihhllhhirghmshhonhdfuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtf
    frrghtthgvrhhnpefgleegjeehkeefkefhkeetjedugfdvtdduveehledtteeltedtveff
    ffegheelffenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhgvgiesshhhrgii
    sghothdrohhrghdpnhgspghrtghpthhtohepfeehpdhmohguvgepshhmthhpohhuthdprh
    gtphhtthhopehjohhroheskegshihtvghsrdhorhhgpdhrtghpthhtohepfhgvlhhigidr
    khhuvghhlhhinhhgsegrmhgurdgtohhmpdhrtghpthhtoheprghlvgigrghnuggvrhdrug
    gvuhgthhgvrhesrghmugdrtghomhdprhgtphhtthhopegthhhrihhsthhirghnrdhkohgv
    nhhighesrghmugdrtghomhdprhgtphhtthhopehrohgsihhnrdhmuhhrphhhhiesrghrmh
    drtghomhdprhgtphhtthhopehguhhrtghhvghtrghnshhinhhghhestghhrhhomhhiuhhm
    rdhorhhgpdhrtghpthhtohepughmihhtrhihrdhoshhiphgvnhhkohestgholhhlrggsoh
    hrrgdrtghomhdprhgtphhtthhopehsihhmohhnrgesfhhffihllhdrtghhpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:P6yEafGe2iZwOtoy1QIujx9JKcXQzVBHGIr7FCMNM53dR4SA7uoFPQ>
    <xmx:P6yEaeY4v6aLwSLaI-5cCVbJkfoaGXLUwMVMRnaHKWdyT5nGKisVzQ>
    <xmx:P6yEabMl_SdUrT753Jz4Iu8zYXeBk5mOIBISChHExnjKF4ONkrV_hA>
    <xmx:P6yEaXzKVHf1zwRQ33ST0VoEQ8N5wtThWPkF8uM3zAbRNMiwOEPh3w>
    <xmx:QKyEaQhAhMewyYq6yCQSoIXvkGVUwlZLw6u6ZWNTBxx4oxvqxJ3bHWjK>
Feedback-ID: i03f14258:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id A92B615C0090; Thu,  5 Feb 2026 09:42:07 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ATdnKwv6RJ4o
Date: Thu, 05 Feb 2026 07:41:11 -0700
From: "Alex Williamson" <alex@shazbot.org>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "Jason Gunthorpe" <jgg@ziepe.ca>, "Leon Romanovsky" <leon@kernel.org>
Message-Id: <1b7ee5ad-6dde-415a-8e06-93daddc9bcef@app.fastmail.com>
In-Reply-To: <f27ad57b-d935-4ffa-a65c-9f6b5d9a1f9a@amd.com>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
 <20260204095659.5a983af2@shazbot.org>
 <ac33ad1a-330c-4ab5-bb98-4a4dedccf0da@amd.com>
 <20260205121945.GC12824@unreal> <20260205142111.GK2328995@ziepe.ca>
 <f27ad57b-d935-4ffa-a65c-9f6b5d9a1f9a@amd.com>
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BKIDZG2R3QNLQWAG4DBH3ODEDL2LMFKX
X-Message-ID-Hash: BKIDZG2R3QNLQWAG4DBH3ODEDL2LMFKX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:06 +0000
CC: Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BKIDZG2R3QNLQWAG4DBH3ODEDL2LMFKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.70 / 15.00];
	DATE_IN_PAST(1.00)[1681];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[ffwll.ch,intel.com,linaro.org,amd.com,gmail.com,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,app.fastmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C17EA411CE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIFRodSwgRmViIDUsIDIwMjYsIGF0IDc6MjggQU0sIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+IE9uIDIvNS8yNiAxNToyMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4gT24gVGh1
LCBGZWIgMDUsIDIwMjYgYXQgMDI6MTk6NDVQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3Rl
Og0KPj4+IFlvdSBkb24ndCBuZWVkIGFueSBiYWNrbWVyZ2UsIFNIQS0xIHZlcnNpb24gb2YgdmZp
by12Ni4xOS1yYzggdGFnIGlzIHRoZQ0KPj4+IHNhbWUgYXMgaW4gTGludXMncyB0cmVlLCBzbyB0
aGUgZmxvdyBpczoNCj4+IA0KPj4gSSdtIGNvbmZ1c2VkIHdoYXQgaXMgdGhlIHByb2JsZW0gaGVy
ZT8NCj4+IA0KPj4gRnJvbSBodHRwczovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dpdC9kcm0v
ZHJtLW1pc2MNCj4+ICAqIGJyYW5jaCAgICAgICAgICAgICAgICAgICAgICAgICAgZHJtLW1pc2Mt
bmV4dCAtPiBGRVRDSF9IRUFEDQo+PiANCj4+ICQgZ2l0IHNob3cgRkVUQ0hfSEVBRA0KPj4gY29t
bWl0IDc3OWVjMTJjODVjOWU0NTQ3NTE5ZTM5MDNhMzcxYTNiMjZhMjg5ZGUNCj4+IEF1dGhvcjog
QWxleGFuZGVyIEtvbnl1a2hvdiA8QWxleGFuZGVyLktvbnl1a2hvdkBrYXNwZXJza3kuY29tPg0K
Pj4gRGF0ZTogICBUdWUgRmViIDMgMTY6NDg6NDYgMjAyNiArMDMwMA0KPj4gDQo+PiAgICAgZHJt
L2tvbWVkYTogZml4IGludGVnZXIgb3ZlcmZsb3cgaW4gQUZCQyBmcmFtZWJ1ZmZlciBzaXplIGNo
ZWNrDQo+PiANCj4+ICQgZ2l0IG1lcmdlLWJhc2UgIEZFVENIX0hFQUQgNjFjZWFmMjM2MTE1ZjIw
ZjRmZGQ3Y2Y2MGY4ODNhZGExMDYzMzQ5YQ0KPj4gMjRkNDc5ZDI2YjI1YmNlNWZhZWEzZGRkOWZh
OGYzYTZjMzEyOWVhNw0KPj4gJCBnaXQgZGVzY3JpYmUgLS1jb250YWlucyAyNGQ0NzlkMjZiMjVi
Y2U1ZmFlYTNkZGQ5ZmE4ZjNhNmMzMTI5ZWE3DQo+PiB2Ni4xOS1yYzZeMA0KPj4gDQo+PiAkIGdp
dCBsb2cgLS1vbmVsaW5lIDYxY2VhZjIzNjExNWYyMGY0ZmRkN2NmNjBmODgzYWRhMTA2MzM0OWEg
XkZFVENIX0hFQUQNCj4+IDYxY2VhZjIzNjExNWYyIHZmaW86IFByZXZlbnQgZnJvbSBwaW5uZWQg
RE1BQlVGIGltcG9ydGVycyB0byBhdHRhY2ggdG8gVkZJTyBETUFCVUYNCj4+IA0KPj4gSnVzdCBw
dWxsIEFsZXgncyB0cmVlLCB0aGUgZHJtLW1pc2MtbmV4dCB0cmVlIGFscmVhZHkgaGFzIHY2LjE5
LXJjNiwNCj4+IHNvIGFsbCB0aGV5IHdpbGwgc2VlIGlzIG9uZSBleHRyYSBwYXRjaCBmcm9tIEFs
ZXggaW4geW91ciBQUi4NCj4+IA0KPj4gTm8gbmVlZCB0byBiYWNrbWVyZ2UsIHRoaXMgaXMgbm9y
bWFsIGdpdCBzdHVmZiBhbmQgdGhlcmUgd29uJ3QgYmUNCj4+IGNvbmZsaWN0cyB3aGVuIHRoZXkg
bWVyZ2UgYSBsYXRlciBMaW51cyB0YWcuDQo+DQo+IENvcnJlY3QsIGJ1dCB0aGF0IHdvdWxkIG1l
cmdlIHRoZSBzYW1lIHBhdGNoIHRocm91Z2ggdHdvIGRpZmZlcmVudCANCj4gdHJlZXMuIFRoYXQg
aXMgdXN1YWxseSBhIHByZXR0eSBiaWcgbm8tZ28uDQoNCkFwcGx5aW5nIHRoZSBwYXRjaCB0aHJv
dWdoIHR3byBkaWZmZXJlbnQgdHJlZXMgaXMgYSBuby1nbywgYnV0IG1lcmdpbmcgdGhlIHNhbWUg
Y29tbWl0IGZyb20gYSBzaGFyZWQgYnJhbmNoIG9yIHRhZyBpcyB2ZXJ5IGNvbW1vbiBhbmQgYWNj
ZXB0YWJsZS4gIEl0J3MgdGhlIHNhbWUgY29tbWl0IGFmdGVyIGFsbCwgdGhlcmUgaXMgbm8gY29u
ZmxpY3QsIG5vIGR1cGxpY2F0ZSBjb21taXQuICBXaGVuIHRoZSB0cmVlcyBhcmUgbWVyZ2VkLCB0
aGUgY29tbWl0IHdpbGwgZXhpc3Qgb25jZSBpbiB0aGUgbG9nLiAgVGhhbmtzLA0KDQpBbGV4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
