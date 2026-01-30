Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIusIUYQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 36645411C4B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 545F444A3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:37:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 4BB8B3F7C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 05:43:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M2NEkiG3;
	spf=pass (lists.linaro.org: domain of mchehab+huawei@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6FE1A60125;
	Fri, 30 Jan 2026 05:43:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E00EC4CEF7;
	Fri, 30 Jan 2026 05:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769751807;
	bh=1mj10mAR+dREfsDvfo4M+yfN+P1zHg8E8B5cbP3m5V0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=M2NEkiG3nXvvzMUybPf9u2NsYSvRQJPu/txpSsJ+Qsxe4sqfutLmoEU01sEJ8CMIg
	 I8qJygosMIvzV8Of29N3Q+NJ4IHqtJpQhzT+fhE6yUEPTeU+erOtBeCAbmFGR6dG/L
	 E41kzSGtTsuhJoFAsbxx660eUE1Lspm74+ePErFMRfookARjIAbj+d5y8bxZjOG3DU
	 tQFiGiDeQxNuiZkSlsQtK41CFeWa6ILJtXkFNDVk30w/Rnxyezaqc8f7v77sWasdlr
	 bW4sKqqCB6eR9qjkzlxTaYVQ4r7qf/9DIoodjgENpnF0X4+qtu5CzCULpCvoHa985+
	 ryXH1ILEAGAQw==
Date: Fri, 30 Jan 2026 06:43:17 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20260130064317.3c0fead7@foz.lan>
In-Reply-To: <BN9PR11MB5276907FC927424043C636E68C9FA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
	<20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
	<aXfUZcSEr9N18o6w@google.com>
	<20260127085835.GQ13967@unreal>
	<20260127162754.GH1641016@ziepe.ca>
	<BN9PR11MB5276B99D4E8C6496B0C447888C9EA@BN9PR11MB5276.namprd11.prod.outlook.com>
	<20260129145851.GE2307128@ziepe.ca>
	<BN9PR11MB5276907FC927424043C636E68C9FA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: mchehab+huawei@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2CGIFLQT2D6VMG736VP3FLC4HWI5UTNZ
X-Message-ID-Hash: 2CGIFLQT2D6VMG736VP3FLC4HWI5UTNZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:57 +0000
CC: Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, "Kasireddy, Viv
 ek" <vivek.kasireddy@intel.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "virtualization@lists.linux.dev" <virtualization@lists.linux.dev>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2CGIFLQT2D6VMG736VP3FLC4HWI5UTNZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1834];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,huawei];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.960];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ziepe.ca,kernel.org,google.com,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email,foz.lan:mid]
X-Rspamd-Queue-Id: 36645411C4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAzMCBKYW4gMjAyNiAwMzoxMjowMiArMDAwMA0KIlRpYW4sIEtldmluIiA8a2V2aW4u
dGlhbkBpbnRlbC5jb20+IHdyb3RlOg0KDQo+ID4gRnJvbTogSmFzb24gR3VudGhvcnBlIDxqZ2dA
emllcGUuY2E+DQo+ID4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMjksIDIwMjYgMTA6NTkgUE0N
Cj4gPiANCj4gPiBPbiBUaHUsIEphbiAyOSwgMjAyNiBhdCAwNzowNjozN0FNICswMDAwLCBUaWFu
LCBLZXZpbiB3cm90ZTogIA0KPiA+ID4gQmVhciBtZSBpZiBpdCdzIGFuIGlnbm9yYW50IHF1ZXN0
aW9uLg0KPiA+ID4NCj4gPiA+IFRoZSBjb21taXQgbXNnIG9mIHBhdGNoNiBzYXlzIHRoYXQgVkZJ
TyBkb2Vzbid0IHRvbGVyYXRlIHVuYm91bmRlZA0KPiA+ID4gd2FpdCwgd2hpY2ggaXMgdGhlIHJl
YXNvbiBiZWhpbmQgdGhlIDJuZCB0aW1lb3V0IHdhaXQgaGVyZS4gIA0KPiA+IA0KPiA+IEFzIGZh
ciBhcyBJIHVuZGVyc3RhbmQgZG1hYnVmIGRlc2lnbiBhIGZlbmNlIHdhaXQgc2hvdWxkIGNvbXBs
ZXRlDQo+ID4gZXZlbnR1YWxseSB1bmRlciBrZXJuZWwgY29udHJvbCwgYmVjYXVzZSB0aGVzZSBz
bGVlcHMgYXJlDQo+ID4gc3ByaW5rbGVkIGFsbCBhcm91bmQgdGhlIGtlcm5lbCB0b2RheS4NCj4g
PiANCj4gPiBJIHN1c3BlY3QgdGhhdCBpcyBub3QgYWN0dWFsbHkgdHJ1ZSBmb3IgZXZlcnkgSFcs
IHByb2JhYmx5IHNvbWV0aGluZw0KPiA+IGxpa2UgInNoYWRlciBwcm9ncmFtcyBjYW4gcnVuIGZv
cmV2ZXIgdGVjaG5pY2FsbHkiLg0KPiA+IA0KPiA+IFdlIGNhbiBhcmd1ZSBpZiB0aG9zZSBjYXNl
cyBzaG91bGQgbm90IHJlcG9ydCByZXZvY2FibGUgZWl0aGVyLCBidXQgYXQNCj4gPiBsZWFzdCB0
aGlzIHdpbGwgd29yayAiY29ycmVjdGx5IiBldmVuIGlmIGl0IHRha2VzIGEgaHVnZSBhbW91bnQg
b2YNCj4gPiB0aW1lLiAgDQo+IA0KPiBnb29kIHRvIGtub3cgdGhvc2UgYmFja2dyb3VuZC4NCj4g
DQo+ID4gDQo+ID4gSSB3b3VsZG4ndCBtaW5kIHNlZWluZyBhIHNob3J0ZXIgdGltZW91dCBhbmQg
cHJpbnQgb24gdGhlIGZlbmNlIHRvbw0KPiA+IGp1c3QgaW4gY2FzZS4NCj4gPiAgIA0KPiANCj4g
ZWl0aGVyIHdheSBpcyBPSy4gSXQncyBub3QgZGlmZmljdWx0IHRvIGZpZ3VyZSBvdXQgYSBsb25n
IHdhaXQgYW55d2F5LiDwn5iKDQoNClBsZWFzZSBkb24ndCB1c2UgT3V0bG9vayB3aGVuIGFuc3dl
cmluZyB0byBwYXRjaGVzIC0gb3IgZW5zdXJlIHRoYXQNCml0IGlzIHByb3Blcmx5IHBhdGNoZWQg
dG8gb25seSBzZW5kIHBsYWluIHRleHQgLSB3aGljaCBJIGRvbid0DQp0aGluayBpdCBpcyBwb3Nz
aWJsZS4NCg0KSWYgeW91IGxvb2sgb24gdGhpcyBtZXNzYWdlIHNvdXJjZSBjb2RlLCBpdCBpcyBu
b3QgaW4gcGxhaW4gdGV4dDoNCg0KCUNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0i
dXRmLTgiDQoJQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogYmFzZTY0DQoNCllvdXIgbWVzc2Fn
ZSBjb250ZW50IGlzOg0KDQoJUGlCR2NtOXRPaUJLWVhOdmJpQkhkVzUwYUc5eWNHVWdQR3BuWjBC
NmFXVndaUzVqWVQ0TkNqNGdVMlZ1ZERvZ1ZHaDFjbk5rWVhrcw0KCUlFcGhiblZoY25rZ01qa3NJ
REl3TWpZZ01UQTZOVGtnVUUwTkNqNGdEUW8rSUU5dUlGUm9kU3dnU21GdUlESTVMQ0F5TURJMklH
RjANCglJREEzT2pBMk9qTTNRVTBnS3pBd01EQXNJRlJwWVc0c0lFdGxkbWx1SUhkeWIzUmxPZzBL
UGlBK0lFSmxZWElnYldVZ2FXWWdhWFFuDQoJY3lCaGJpQnBaMjV2Y21GdWRDQnhkV1Z6ZEdsdmJp
NE5DajRnUGcwS1BpQStJRlJvWlNCamIyMXRhWFFnYlhObklHOW1JSEJoZEdObw0KCU5pQnpZWGx6
SUhSb1lYUWdWa1pKVHlCa2IyVnpiaWQwSUhSdmJHVnlZWFJsSUhWdVltOTFibVJsWkEwS1BpQStJ
SGRoYVhRc0lIZG8NCglhV05vSUdseklIUm9aU0J5WldGemIyNGdZbVZvYVc1a0lIUm9aU0F5Ym1R
Z2RHbHRaVzkxZENCM1lXbDBJR2hsY21VdURRbytJQTBLDQoJUGlCQmN5Qm1ZWElnWVhNZ1NTQjFi
bVJsY25OMFlXNWtJR1J0WVdKMVppQmtaWE5wWjI0Z1lTQm1aVzVqWlNCM1lXbDBJSE5vYjNWcw0K
CVpDQmpiMjF3YkdWMFpRMEtQaUJsZG1WdWRIVmhiR3g1SUhWdVpHVnlJR3RsY201bGJDQmpiMjUw
Y205c0xDQmlaV05oZFhObElIUm8NCglaWE5sSUhOc1pXVndjeUJoY21VTkNqNGdjM0J5YVc1cmJH
VmtJR0ZzYkNCaGNtOTFibVFnZEdobElHdGxjbTVsYkNCMGIyUmhlUzRODQoJQ2o0Z0RRbytJRWtn
YzNWemNHVmpkQ0IwYUdGMElHbHpJRzV2ZENCaFkzUjFZV3hzZVNCMGNuVmxJR1p2Y2lCbGRtVnll
U0JJVnl3Zw0KCWNISnZZbUZpYkhrZ2MyOXRaWFJvYVc1bkRRbytJR3hwYTJVZ0luTm9ZV1JsY2lC
d2NtOW5jbUZ0Y3lCallXNGdjblZ1SUdadmNtVjINCglaWElnZEdWamFHNXBZMkZzYkhraUxnMEtQ
aUFOQ2o0Z1YyVWdZMkZ1SUdGeVozVmxJR2xtSUhSb2IzTmxJR05oYzJWeklITm9iM1ZzDQoJWkNC
dWIzUWdjbVZ3YjNKMElISmxkbTlqWVdKc1pTQmxhWFJvWlhJc0lHSjFkQ0JoZEEwS1BpQnNaV0Z6
ZENCMGFHbHpJSGRwYkd3Zw0KCWQyOXlheUFpWTI5eWNtVmpkR3g1SWlCbGRtVnVJR2xtSUdsMElI
UmhhMlZ6SUdFZ2FIVm5aU0JoYlc5MWJuUWdiMllOQ2o0Z2RHbHQNCglaUzROQ2cwS1oyOXZaQ0Iw
YnlCcmJtOTNJSFJvYjNObElHSmhZMnRuY205MWJtUXVEUW9OQ2o0Z0RRbytJRWtnZDI5MWJHUnVK
M1FnDQoJYldsdVpDQnpaV1ZwYm1jZ1lTQnphRzl5ZEdWeUlIUnBiV1Z2ZFhRZ1lXNWtJSEJ5YVc1
MElHOXVJSFJvWlNCbVpXNWpaU0IwYjI4Tg0KCUNqNGdhblZ6ZENCcGJpQmpZWE5sTGcwS1BpQU5D
ZzBLWldsMGFHVnlJSGRoZVNCcGN5QlBTeTRnU1hRbmN5QnViM1FnWkdsbVptbGoNCglkV3gwSUhS
dklHWnBaM1Z5WlNCdmRYUWdZU0JzYjI1bklIZGhhWFFnWVc1NWQyRjVMaUR3bjVpS0RRbz0NCg0K
d2hpY2ggaXMgc29tZXRoaW5nIHRoYXQgcGF0Y2ggdG9vbHMgLSBpbiBzcGVjaWFsIHBhdGNod29y
ayAtIHdvbid0IGhhbmRsZS4NCg0KVGhhbmtzLA0KTWF1cm8NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
